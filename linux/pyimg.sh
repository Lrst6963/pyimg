#!/bin/bash
logo()
	{
	echo "                                              ___           ___      "
	echo "     ___           __             ___        /  /\         /  /\     "
	echo "    /  /\         |  |\          /__/\      /  /::|       /  /::\    "
	echo "   /  /::\        |  |:|         \__\:\    /  /:|:|      /  /:/\:\   "
	echo "  /  /:/\:\       |  |:|         /  /::\  /  /:/|:|__   /  /:/  \:\  "
	echo " /  /::\ \:\      |__|:|__    __/  /:/\/ /__/:/_|::::\ /__/:/_\_ \:\ "
	echo "/__/:/\:\_\:\     /  /::::\  /__/\/:/~~  \__\/  /~~/:/ \  \:\__/\_\/ "
	echo "\__\/  \:\/:/    /  /:/~~~~  \  \::/           /  /:/   \  \:\ \:\   "
	echo "     \  \::/    /__/:/        \  \:\          /  /:/     \  \:\/:/   "
	echo "      \__\/     \__\/          \__\/         /__/:/       \  \::/    "
	echo "                                             \__\/         \__\/     "
	echo "									--By Lrst_6963"
	}

dn()
	{	
	#clear
	echo
	echo -e "\e[4;31m 		刷取"$sl"完成！！	 \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！	 \e[0m"
	}

pyimg()
	{
	logo
	echo ""
	echo "输入图片名："
	read ss
	clear
	logo
	echo " "
	echo "输入刷图数量："
	read sl
	clear
	logo
	echo ""
	echo "
	 随机二次元图片：https://api.yimian.xyz/img?type=moe	 
	 随机Bing壁纸：https://api.yimian.xyz/img?type=wallpaper/	
	 随机1920x1080尺寸二次元图片：https://api.yimian.xyz/img?type=moe&size=1920x1080	
	 东方的随机图，43000+：https://img.paulzzh.tech/touhou/random	
	 动漫图片接口：https://www.xzccc.com/api/acg/	
	 涩图接口（弃用，浏览器能用，）：http://setu.awsl.ee/	
	 暗鸦の随机图片API接口:https://api.r10086.com/动漫综合1.php	
	 随机二次元图片API-樱花：http://www.dmoe.cc/random.php	
	 https://api.r10086.com/缘之空1.php	
	 岁月小筑随机图片（ACG背景）：http://img.xjh.me/random_img.php?type=bg&ctype=acg	
	 岁月小筑随机图片（背景）：http://img.xjh.me/random_img.php?type=bg	
	 随机输出图：https://api.yuzhitu.cn//sjbz/api.php?method=mobile&lx=suiji	
	 动漫星空：https://api.dongmanxingkong.com/suijitupian/acg/1080p/index.php	
	 https://yingserver.cn/open/acgimg/acgurl.php	
	 http://l-by.cn/api/api/api.php（二次元动漫）丨
	 http://l-by.cn/api/mcapi/mcapi.php（mc酱动漫）丨
	 http://l-by.cn/api/gqapi/gqapi.php（高清壁纸）	
	 https://api.dujin.org/pic/"
	echo ""
	echo "输入刷图接口哦！！："
	read url
	clear
	sta()
	{
	logo
	echo ""
	echo "请确认："
	echo ""
	echo "		图片数量："$sl
        echo ""	
	echo "		图片名字："$ss
	echo ""
	echo "		图片接口："$url
	echo ""
	echo "Press 1 To  Start "
	echo "Press 2 To  Restart "
	echo "Press 3 To  Exit"
	read ent
	clear		
	if [ "$ent" == "1" ];then
	   		for i in $(seq 1 $sl)  
	   		do   
				wget -q -O $ss"_"$i.jpg $url
				echo -e "\e[4;31m 		第$i张完成！！ \e[0m"
	   		done
	   		dn
			exit
		elif [ "$ent" == "2" ];then
			pyimg
		elif [ "$ent" == "3" ];then
			exit
		else
			echo -e "\e[4;32m 输入无效   ！！！ \e[0m"
			echo -e "\e[4;32m 请重新输入 ！！！ \e[0m"
			sta
	fi
	}
	sta
	}   
help()
	{
	echo "
	-u "URL"
	-n file name
	-v volume
	-help help
	-o 进入选项模式 推荐
	"
	}


optt()
{
		while : 
		do
			logo
			echo ""
			echo -e "\e[4;31m 选择吧!!! \e[0m"
			echo " "
			echo "Press 1 To  Start "
			echo "Press 2 To  Start "
			echo "Press 3 To  Start "
			echo "Press 4 To  Exit "
			read ins
			clear
			if [ "$ins" == "1" ];then
					pyimg
					exit
				elif [ "$ins" == "2" ];then
					pyimg
					exit
				elif [ "$ins" = "3" ];then
					pyimg
					exit
					elif [ "$ins" = "4" ];then
					exit
					else
					echo ""
					echo -e "\e[4;32m 输入无效 ！！！ \e[0m"
			fi
		done; }

Get_Dist_Name()
{
    if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
        DISTRO='CentOS'
        PM='yum'
    elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
        DISTRO='RHEL'
        PM='yum'
    elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
        DISTRO='Aliyun'
        PM='yum'
    elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
        DISTRO='Fedora'
        PM='yum'
    elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
        DISTRO='Debian'
        PM='apt'
    elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
        DISTRO='Ubuntu'
        PM='apt'
    elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
        DISTRO='Raspbian'
        PM='apt'
    else
        DISTRO='unknow'
    fi
}

while getopts "u:n:v:h:o" OPT; do
		case $OPT in
			u) url=$OPTARG;;
			n) name=$OPTARG;;
			v) nu=$OPTARG;;
			h) help && exit 1;;
			o) optt;;
			*) echo "未知参数 | 输入'pyimg -help'获取帮助" && exit 1;;
		esac
done
clear
echo "URL:"$url
echo "Name:"$name
echo "Volume:"$nu
if [ ! $url ]; then
		echo "
		-u 参数不能为空
		输入'pyimg -help'获取帮助
		"
		exit
elif [ ! $name ]; then
		echo "
		-n 参数不能为空
		输入'pyimg -help'获取帮助
		"
		exit
elif [ ! $nu ]; then
		echo "
		-v 参数不能为空
		输入'pyimg -help'获取帮助
		"
		exit
fi
logo
Get_Dist_Name
if [ $PM = yum ]; then
	yum -qa | grep "wget"
elif [ $PM = apt ]; then
	dpkg -l | grep "wget"
fi
if [ $? = 1 ]; then
	$PM install wget
fi
for i in $(seq 1 $nu); do   
	timeout 60 wget -q -O $name"_"$i.jpg $url
	echo -e "\e[4;31m 		第$i张完成！！ \e[0m"
done
dn