
function_gcd () 
{
	echo 'in function'
	a=$1
	b=$2
	q=1
	let 'r = a-q*b'
	echo "r $r, a $a q $q b $b" 
	while [ $r -gt $b ]
	do
		echo "q is $q"
		let 'q=q+1'
		let 'r=a-b*q'
		echo "r $r q $q"
	done
        echo "final r $r q $q" 
}
echo "type two integers"
read val1 val2
if [ $val1 -gt $val2 ]
then
	init_a=$val1
	init_b=$val2
else 
	init_a=$val2
	init_b=$val1
fi

function_gcd $init_a $init_b

