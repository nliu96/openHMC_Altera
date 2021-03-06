/*
 *                              .--------------. .----------------. .------------.
 *                             | .------------. | .--------------. | .----------. |
 *                             | | ____  ____ | | | ____    ____ | | |   ______ | |
 *                             | ||_   ||   _|| | ||_   \  /   _|| | | .' ___  || |
 *       ___  _ __   ___ _ __  | |  | |__| |  | | |  |   \/   |  | | |/ .'   \_|| |
 *      / _ \| '_ \ / _ \ '_ \ | |  |  __  |  | | |  | |\  /| |  | | || |       | |
 *       (_) | |_) |  __/ | | || | _| |  | |_ | | | _| |_\/_| |_ | | |\ `.___.'\| |
 *      \___/| .__/ \___|_| |_|| ||____||____|| | ||_____||_____|| | | `._____.'| |
 *           | |               | |            | | |              | | |          | |
 *           |_|               | '------------' | '--------------' | '----------' |
 *                              '--------------' '----------------' '------------'
 *
 *  openHMC - An Open Source Hybrid Memory Cube Controller
 *  (C) Copyright 2014 Computer Architecture Group - University of Heidelberg
 *  www.ziti.uni-heidelberg.de
 *  B6, 26
 *  68159 Mannheim
 *  Germany
 *
 *  Contact: openhmc@ziti.uni-heidelberg.de
 *  http://ra.ziti.uni-heidelberg.de/openhmc
 *
 *   This source file is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU Lesser General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This source file is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Lesser General Public License for more details.
 *
 *   You should have received a copy of the GNU Lesser General Public License
 *   along with this source file.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 */
`ifndef	COMPLEX_SEQ
`define COMPLEX_SEQ

class hmc_complex_pkt_seq extends hmc_base_pkt_seq;
	
	int num_pkts;
	int pkts_per_rq;
	
	request_class_e rq_class;
	
	int min_lngt;
	int max_lngt;
	
	int min_delay;
	int max_delay;
	

	`uvm_object_utils(hmc_complex_pkt_seq)	
	
	function new(string name="hmc_complex_pkt_seq");
		super.new(name);
	endfunction : new
	
	
	virtual task body();
		
		`uvm_info(get_type_name(),$psprintf("copy random values to tmp vars"), UVM_HIGH)
		num_pkts  	= num_packets;
		pkts_per_rq = pkts_per_req;
		
		rq_class  	= req_class;
		
		min_lngt  	= min_packet_length;
		max_lngt  	= max_packet_length;
		
		min_delay 	= min_flit_delay;
		max_delay 	= max_flit_delay;
		
	endtask :body
	
	
	
endclass : hmc_complex_pkt_seq



`endif