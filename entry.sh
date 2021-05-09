#!/bin/bash
bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous \
				+force_install_dir "${STEAMAPPDIR}" \
				+app_update "${STEAMAPPID}" \
				+quit

cd ${STEAMAPPDIR}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`dirname $0`/RustDedicated_Data/Plugins/x86_64
exec xargs -a "${HOMEDIR}/run.cfg" ./RustDedicated
# exec ./RustDedicated +server.port 28015 \
#   +rcon.port 28016 \
#   +rcon.password "rcon password here" \
#   +rcon.web 1 \
#   +server.maxplayers 10 \
#   +server.hostname "Server Name" \
#   +server.identity "my_server_identity" \
#   +server.level "Procedural Map" \
#   +server.seed 12345 \
#   +server.worldsize 3000 \
#   +server.saveinterval 300 \
#   +server.globalchat true \
#   +server.description "Description Here" \
#   +server.headerimage "512x256px JPG/PNG headerimage link here" \
#   +server.url "Website Here"

