ctar() {
        cd /home/srk/beeliner_sant/drivers/firmware/
	source /trees/sw/peregrine/build/setup.sh
	make clean
	export TARGET=AR900B
	export TARGET_VER=1
	export FPGA_FLAG=1
	export WORKAREA=`pwd`
	echo "********** compiling beeliner target for M2M platform ***********"
	echo $TARGET; echo $TARGET_VER; echo $FPGA_FLAG
	sleep 2
	make

}

cpf() {
	scp -r /home/srk/beeliner_sant/drivers/firmware/target/.output nick@10.234.15.147:/home/nick/
}
setenv () {
	export CSCOPE_DB=/home/srk/beeliner_sant/cscope.out
	source .p4config
	p4 login

}

setcscope(){
	cd /home/srk/beeliner_sant/
	rm -f ./cscope.files
	find /home/srk/beeliner_sant/ -name '*.c' -o -name '*.h' > ./cscope.files
	cscope -b -q
}

ffile(){
	find . -name $1
}

vimb(){
	source ~/.bash_aliases
	vim ~/.bash_aliases
}

cs() {
	cscope -d
}

sba() {
	source ~/.bash_aliases

}

vba() {
	vim ~/.bash_aliases
}

fvim () {
	vim $(find . -name $1)
}



# beeliner specific aliases
stats1() {
	while true; do sleep 1; iwpriv ath0 txrx_fw_stats 1 ; dmesg -c | grep queued ; done;
}

memdump() {
	athdiag --read --address=0x400000 --length=0x60000 --file=dram.dump
	mkdir /tmp/dump
	cp dram.dump /tmp/dump/
	gen_peregrine_core_dump
	core_file_gen /tmp/core.txt
}


