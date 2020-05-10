for app in `ps -aux |grep $1 |awk '{print $2}'`
do
	kill -9 $app
done

