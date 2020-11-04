#! /bin/sh

##初始化配置
$INSTALL_PATH/codecc/gateway/codecc_render_tpl -m ci $INSTALL_PATH/codecc/gateway/support-files/templates/gateway*
$INSTALL_PATH/codecc/gateway/codecc_render_tpl -m ci $INSTALL_PATH/codecc/frontend/pipeline/frontend#pipeline#index.html
$INSTALL_PATH/codecc/gateway/codecc_render_tpl -m ci $INSTALL_PATH/codecc/frontend/console/frontend#console#index.html
cp -rf $INSTALL_PATH/codecc/gateway/core/* $INSTALL_PATH/codecc/gateway/

##启动程序
/usr/local/openresty/nginx/sbin/nginx
tail -f /dev/null