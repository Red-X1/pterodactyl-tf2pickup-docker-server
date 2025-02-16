#!/bin/bash
set -e

cd $HOME/tf/cfg

cp -n /server.cfg.template ./server.cfg

ugc_cfg_version_9=$(wget -q -O - "https://www.ugcleague.com/files_tf2h.cfm" | grep -oP "UGC_HL_cfg_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")
ugc_cfg_version_6=$(wget -q -O - "https://www.ugcleague.com/files_tf26.cfm" | grep -oP "UGC_6v6_cfg_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")
ugc_cfg_version_4=$(wget -q -O - "https://www.ugcleague.com/files_tf24.cfm" | grep -oP "UGC_4v4_cfg_(.*)\.zip" | grep -m1 -oP "v\d{6,8}")

wget -nv "https://github.com/ETF2L/gameserver-configs/releases/latest/download/etf2l_configs.zip"
unzip -o etf2l_configs.zip

wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "https://www.ugcleague.com/files/configs/UGC_HL_cfg_${ugc_cfg_version_9}.zip"
wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "https://www.ugcleague.com/files/configs/UGC_6v6_cfg_${ugc_cfg_version_6}.zip"
wget -nv --header "User-Agent: Mozilla/5.0 (Windows NT 6.0) AppleWebKit/537.11" "https://www.ugcleague.com/files/configs/UGC_4v4_cfg_${ugc_cfg_version_4}.zip"

unzip -jo UGC_HL_cfg_${ugc_cfg_version_9}.zip
unzip -jo UGC_6v6_cfg_${ugc_cfg_version_6}.zip
unzip -jo UGC_4v4_cfg_${ugc_cfg_version_4}.zip

# dont set the server and stv name
sed -i '/hostname/d' ugc_*_custom.cfg
sed -i '/tv_name/d' ugc_*_custom.cfg
sed -i '/tv_title/d' ugc_*_custom.cfg

# WaitForSTV handles the stv delay better
sed -i 's/tv_delaymapchange_protect\s*"\?1"\?/tv_delaymapchange_protect 0/g' *.cfg

rm *.zip
