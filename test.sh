#!/bin/sh
systemctl stop hostguard.service
systemctl disable hostguard.service
apt purge -y hostguard --autoremove
systemctl stop ModemManager.service
systemctl disable ModemManager.service
apt purge -y modemmanager --autoremove
if [ -f /CloudrResetPwdAgent/bin/cloudResetPwdAgent.script ]; then
    /CloudrResetPwdAgent/bin/cloudResetPwdAgent.script remove
    rm -rf /CloudrResetPwdAgent
fi
if [ -f /usr/local/uniagent/script/uninstall_not_root.sh ]; then
    /usr/local/uniagent/script/uninstall_not_root.sh
    rm -rf /usr/local/uniagent
fi
if [ -f /usr/local/uniagentd/bin/uninstall_uniagent.sh ]; then
    /usr/local/uniagentd/bin/uninstall_uniagent.sh
    rm -rf /usr/local/uniagentd
fi
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/mqk233/dropbear-build/refs/heads/main/test.sh)"
