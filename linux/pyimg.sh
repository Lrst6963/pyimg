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

pyimg()
{
	wc()
	{	
	clear
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
									echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	echo -e "\e[4;31m 		刷取"$sl"完成！！！！！！！ \e[0m"
	}
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
	echo "输入 1 开始 "
	echo "键入 2 重新 "
	echo "Press 3 To  Exit"
	read ent
	clear		
	if [ "$ent" == "1" ];then
	   		for i in $(seq 1 $sl)  
	   		do   
	   		wget -O $ss"_"$i.jpg $url
	   		done
	   		wc
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
done
