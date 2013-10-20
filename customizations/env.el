(setq path "/Users/stevej/.opam/4.01.0/bin:/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/bin:/usr/sbin:/Users/stevej/bin:/opt/local/bin:/Users/stevej/local/ensime:/Users/stevej/local/scala-2.8.1.final/bin:/Users/stevej/Library/Haskell/bin")
(setenv "PATH" path)

(setq ensime-jvm-args "-server -verbose:class -verbosegc -Xloggc:/tmp/ensime_gc.log -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:+PrintGCDateStamps -XX:+PrintTenuringDistribution -XX:+PrintHeapAtGC -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+UseAdaptiveSizePolicy -Xms256M -Xmx2048M -Dfile.encoding=UTF-8")

(setenv "ENSIME_JVM_ARGS" ensime-jvm-args)

(setenv "CAML_LD_LIBRARY_PATH" "/Users/stevej/.opam/4.01.0/lib/stublibs")
(setenv "OCAML_TOPLEVEL_PATH" "/Users/stevej/.opam/4.01.0/lib/toplevel")

(setq exec-path (append exec-path (split-string path ":")))
