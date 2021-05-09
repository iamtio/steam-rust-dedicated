FROM cm2network/steamcmd:root
ENV STEAMAPPID 258550
ENV STEAMAPP rust
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"
RUN apt-get update \
	&& apt-get install -y --no-install-recommends --no-install-suggests \
		sqlite3 \
		libsdl2-2.0-0 \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir -p "${STEAMAPPDIR}" \
	&& chown ${USER}:${USER} ${STEAMAPPDIR}
USER ${USER}
WORKDIR ${HOMEDIR}
COPY --chown=${USER}:${USER} entry.sh "${HOMEDIR}/"
COPY --chown=${USER}:${USER} run.cfg "${HOMEDIR}/"
EXPOSE 28015 28016
CMD ${HOMEDIR}/entry.sh
