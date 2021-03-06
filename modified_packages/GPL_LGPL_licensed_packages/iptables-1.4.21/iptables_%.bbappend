# Following PACKAGECONFIG will disable IPv6
PACKAGECONFIG = ""

# Remove all shared libraries (targets) that are not used to save space in RFS
do_install_append() {
#Only SNAT DNAT tcp and TEE are not removed..
#    rm -rf ${D}/usr/lib/libip4tc.so.0
#    rm -rf ${D}/usr/lib/libip4tc.so.0.1.0
    rm -rf ${D}/usr/lib/libiptc.so.0
    rm -rf ${D}/usr/lib/libiptc.so.0.0.0
    rm -rf ${D}/usr/lib/xtables/libipt_ah.so
    rm -rf ${D}/usr/lib/xtables/libipt_CLUSTERIP.so
    rm -rf ${D}/usr/lib/xtables/libipt_ECN.so
    rm -rf ${D}/usr/lib/xtables/libipt_icmp.so
    rm -rf ${D}/usr/lib/xtables/libipt_LOG.so
    rm -rf ${D}/usr/lib/xtables/libipt_MASQUERADE.so
    rm -rf ${D}/usr/lib/xtables/libipt_MIRROR.so
    rm -rf ${D}/usr/lib/xtables/libipt_NETMAP.so
    rm -rf ${D}/usr/lib/xtables/libipt_realm.so
    rm -rf ${D}/usr/lib/xtables/libipt_REDIRECT.so
    rm -rf ${D}/usr/lib/xtables/libipt_REJECT.so
    rm -rf ${D}/usr/lib/xtables/libipt_SAME.so
    rm -rf ${D}/usr/lib/xtables/libipt_ttl.so
    rm -rf ${D}/usr/lib/xtables/libipt_TTL.so
    rm -rf ${D}/usr/lib/xtables/libipt_ULOG.so
    rm -rf ${D}/usr/lib/xtables/libipt_unclean.so
    rm -rf ${D}/usr/lib/xtables/libxt_addrtype.so
    rm -rf ${D}/usr/lib/xtables/libxt_AUDIT.so
    rm -rf ${D}/usr/lib/xtables/libxt_bpf.so
    rm -rf ${D}/usr/lib/xtables/libxt_CHECKSUM.so
    rm -rf ${D}/usr/lib/xtables/libxt_CLASSIFY.so
    rm -rf ${D}/usr/lib/xtables/libxt_cluster.so
    rm -rf ${D}/usr/lib/xtables/libxt_comment.so
    rm -rf ${D}/usr/lib/xtables/libxt_connbytes.so
    rm -rf ${D}/usr/lib/xtables/libxt_connlimit.so
    rm -rf ${D}/usr/lib/xtables/libxt_connmark.so
    rm -rf ${D}/usr/lib/xtables/libxt_CONNMARK.so
    rm -rf ${D}/usr/lib/xtables/libxt_CONNSECMARK.so
    rm -rf ${D}/usr/lib/xtables/libxt_conntrack.so
    rm -rf ${D}/usr/lib/xtables/libxt_cpu.so
    rm -rf ${D}/usr/lib/xtables/libxt_CT.so
    rm -rf ${D}/usr/lib/xtables/libxt_dccp.so
    rm -rf ${D}/usr/lib/xtables/libxt_devgroup.so
    rm -rf ${D}/usr/lib/xtables/libxt_dscp.so
    rm -rf ${D}/usr/lib/xtables/libxt_DSCP.so
    rm -rf ${D}/usr/lib/xtables/libxt_ecn.so
    rm -rf ${D}/usr/lib/xtables/libxt_esp.so
    rm -rf ${D}/usr/lib/xtables/libxt_hashlimit.so
    rm -rf ${D}/usr/lib/xtables/libxt_helper.so
    rm -rf ${D}/usr/lib/xtables/libxt_HMARK.so
    rm -rf ${D}/usr/lib/xtables/libxt_IDLETIMER.so
    rm -rf ${D}/usr/lib/xtables/libxt_iprange.so
    rm -rf ${D}/usr/lib/xtables/libxt_ipvs.so
    rm -rf ${D}/usr/lib/xtables/libxt_LED.so
    rm -rf ${D}/usr/lib/xtables/libxt_length.so
    rm -rf ${D}/usr/lib/xtables/libxt_limit.so
    rm -rf ${D}/usr/lib/xtables/libxt_mac.so
    rm -rf ${D}/usr/lib/xtables/libxt_mark.so
    rm -rf ${D}/usr/lib/xtables/libxt_MARK.so
    rm -rf ${D}/usr/lib/xtables/libxt_multiport.so
    rm -rf ${D}/usr/lib/xtables/libxt_nfacct.so
    rm -rf ${D}/usr/lib/xtables/libxt_NFLOG.so
    rm -rf ${D}/usr/lib/xtables/libxt_NFQUEUE.so
    rm -rf ${D}/usr/lib/xtables/libxt_NOTRACK.so
    rm -rf ${D}/usr/lib/xtables/libxt_osf.so
    rm -rf ${D}/usr/lib/xtables/libxt_owner.so
    rm -rf ${D}/usr/lib/xtables/libxt_physdev.so
    rm -rf ${D}/usr/lib/xtables/libxt_pkttype.so
    rm -rf ${D}/usr/lib/xtables/libxt_policy.so
    rm -rf ${D}/usr/lib/xtables/libxt_quota.so
    rm -rf ${D}/usr/lib/xtables/libxt_rateest.so
    rm -rf ${D}/usr/lib/xtables/libxt_RATEEST.so
    rm -rf ${D}/usr/lib/xtables/libxt_recent.so
    rm -rf ${D}/usr/lib/xtables/libxt_rpfilter.so
    rm -rf ${D}/usr/lib/xtables/libxt_sctp.so
    rm -rf ${D}/usr/lib/xtables/libxt_SECMARK.so
    rm -rf ${D}/usr/lib/xtables/libxt_set.so
    rm -rf ${D}/usr/lib/xtables/libxt_SET.so
    rm -rf ${D}/usr/lib/xtables/libxt_socket.so
    rm -rf ${D}/usr/lib/xtables/libxt_standard.so
    rm -rf ${D}/usr/lib/xtables/libxt_state.so
    rm -rf ${D}/usr/lib/xtables/libxt_statistic.so
    rm -rf ${D}/usr/lib/xtables/libxt_string.so
    rm -rf ${D}/usr/lib/xtables/libxt_SYNPROXY.so
    rm -rf ${D}/usr/lib/xtables/libxt_tcpmss.so
    rm -rf ${D}/usr/lib/xtables/libxt_TCPMSS.so
    rm -rf ${D}/usr/lib/xtables/libxt_TCPOPTSTRIP.so
    rm -rf ${D}/usr/lib/xtables/libxt_time.so
    rm -rf ${D}/usr/lib/xtables/libxt_tos.so
    rm -rf ${D}/usr/lib/xtables/libxt_TOS.so
    rm -rf ${D}/usr/lib/xtables/libxt_TPROXY.so
    rm -rf ${D}/usr/lib/xtables/libxt_TRACE.so
    rm -rf ${D}/usr/lib/xtables/libxt_u32.so
    rm -rf ${D}/usr/lib/xtables/libxt_udp.so
}
