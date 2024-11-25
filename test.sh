#!/bin/sh
systemctl stop hostguard.service
systemctl disable hostguard.service
apt purge -y hostguard --autoremove
systemctl stop ModemManager.service
systemctl disable ModemManager.service
apt purge -y modemmanager --autoremove
/CloudrResetPwdAgent/bin/cloudResetPwdAgent.script remove
rm -rf /CloudrResetPwdAgent
/usr/local/uniagent/script/uninstall_not_root.sh
rm -rf /usr/local/uniagent
/usr/local/uniagentd/bin/uninstall_uniagent.sh
rm -rf /usr/local/uniagentd
