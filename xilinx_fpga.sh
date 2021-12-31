#!/bin/bash

base_address=0x43c10000

hex(){
   printf "%#x" $1
}

FpgaWrite(){
    local address=$(($base_address+$1*4))
    local hex_addr=`hex ${address}`
    devmem $hex_addr 32 $2
}

FpgaRead(){
    local address=$(($base_address+$1*4))
    local hex_addr=`hex ${address}`
    devmem $hex_addr 32
}
