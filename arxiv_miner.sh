#!/bin/bash

echo "ArXiv Paper Miner (v.0.1)"

papers=("1811.08586v1" "1811.08883v1" "1811.08588v1" "1811.07632v2" "1811.08824v1" "1811.09567v1" "1811.09410v1" "1811.12231v1" "1811.12016v1" "1811.11938v1" "1812.04769v1" "1812.05027v1" "1812.04777v1" "1812.04857v1" "1812.05082v1" "1812.05285v1" "1812.05478v1" "1812.05276v1" "1812.03823v2" "1812.08973v1" "1812.09077v1" "1812.08904v1" "1812.09232v1" "1812.04955v3" "1812.10358v1" "1812.10212v1" "1901.01994v2" "1901.06109v1" "1901.08004v1" "1901.07813v1" "1901.07698v1" "1901.08579v1" "1901.08486v1" "1901.08277v1" "1901.07223v2" "1901.08180v1" "1901.09006v1" "1901.08906v1" "1901.09608v1" "1901.09593v1" "1901.10187v1" "1901.10142v1" "1902.00473v1" "1902.00313v1" "1902.00163v1" "1902.01026v1" "1902.01378v1" "1902.01275v1" "1902.01061v1" "1902.01626v1" "1902.01569v1" "1902.01537v1" "1902.01728v1" "1902.01549v1" "1902.02752v1" "1902.03057v1" "1902.02923v1" "1902.04343v1" "1902.04541v1" "1902.03471v2" "1902.04987v1" "1902.04696v1" "1902.04992v1" "1902.05522v1" "1902.04245v2" "1902.05247v1" "1902.05947v1" "1902.06527v1" "1902.06729v1" "1902.06426v1" "1902.06379v1" "1902.06907v1" "1902.08536v1" "1902.09051v1" "1902.09516v1" "1902.09738v1" "1902.10671v1" "1902.10363v1" "1902.10272v1" "1902.11046v1" "1902.10928v1" "1902.11020v1" "1902.10904v1" "1902.06326v2" "1903.00445v1" "1903.00401v1" "1903.00425v1" "1903.00412v1" "1903.00268v1" "1903.00258v1" "1903.01959v1" "1903.01669v1" "1903.01631v1" "1903.00425v2" "1903.01864v1" "1903.02330v1")


for i in "${papers[@]}"; do 

	url="https://arxiv.org/pdf/"
	url+="$i"
	url+=".pdf"

	out="output/"
	out+="$i"
	out+=".pdf"

	curl "$url" --output "$out"
done
