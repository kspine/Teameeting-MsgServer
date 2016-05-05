#!/bin/bash

cp build_proto.sh .build_proto.sh

rm *.h *.cc *.o

protoc common_msg.proto --cpp_out=./ -I./
protoc meet_msg.proto --cpp_out=./ -I./
protoc meet_msg_type.proto --cpp_out=./ -I./
protoc sys_msg.proto --cpp_out=./ -I./
protoc sys_msg_type.proto --cpp_out=./ -I./

