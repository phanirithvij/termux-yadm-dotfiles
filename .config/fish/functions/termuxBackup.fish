function termuxBackup
    tar cf - -C /data/data/com.termux/files ./home ./usr | pv -s (du -sb $HOME $PREFIX | awk '{s+=$1} END {print s}') | gzip > /sdcard/termux-backup.tar.gz
end
