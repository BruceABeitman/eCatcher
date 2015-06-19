.class public Lcom/pinguo/share/local/LocalShareCache;
.super Ljava/lang/Object;
.source "LocalShareCache.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static deleteTimeout(Ljava/io/File;JLjava/util/Map;)Ljava/util/Map;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
new-instance v2, Lcom/pinguo/share/local/LocalShareCache$1;
invoke-direct {v2, p1, p2, p3, v1}, Lcom/pinguo/share/local/LocalShareCache$1;-><init>(JLjava/util/Map;Ljava/util/Map;)V
invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v0
return-object v1
.end method
.method public static getMapInfo(Ljava/lang/String;)Ljava/util/Map;
.registers 14
new-instance v9, Ljava/util/HashMap;
invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
const/4 v3, 0x0
:try_start_6
new-instance v4, Ljava/io/BufferedReader;
new-instance v11, Ljava/io/FileReader;
invoke-direct {v11, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
invoke-direct {v4, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_10
.catchall {:try_start_6 .. :try_end_10} :catchall_60
const/4 v6, 0x0
:cond_11
:try_start_11
:goto_11
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_14
.catchall {:try_start_11 .. :try_end_14} :catchall_57
move-result-object v6
if-nez v6, :cond_1e
if-eqz v4, :cond_62
invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
const/4 v3, 0x0
:goto_1d
return-object v9
:try_start_1e
:cond_1e
const-string/jumbo v11, ";"
invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v11, v0
const/4 v12, 0x5
if-ne v11, v12, :cond_11
const/4 v11, 0x0
aget-object v11, v0, v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
const/4 v11, 0x2
aget-object v11, v0, v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const/4 v11, 0x3
aget-object v11, v0, v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z
move-result v5
const/4 v11, 0x4
aget-object v11, v0, v11
invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
new-instance v1, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;
invoke-direct {v1, v8, v2, v10, v5}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
move-object v7, v8
invoke-interface {v9, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_56
.catchall {:try_start_1e .. :try_end_56} :catchall_57
goto :goto_11
:catchall_57
move-exception v11
move-object v3, v4
:goto_59
if-eqz v3, :cond_5f
invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
const/4 v3, 0x0
:cond_5f
throw v11
:catchall_60
move-exception v11
goto :goto_59
:cond_62
move-object v3, v4
goto :goto_1d
.end method
.method public static updateMapInfo(Ljava/lang/String;Ljava/util/Map;)V
.registers 7
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const/4 v1, 0x0
:try_start_4
new-instance v2, Ljava/io/PrintWriter;
invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
:try_end_9
.catchall {:try_start_4 .. :try_end_9} :catchall_3e
:try_start_9
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_11
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_21
invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
:try_end_1a
.catchall {:try_start_9 .. :try_end_1a} :catchall_35
if-eqz v2, :cond_40
invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
const/4 v1, 0x0
goto :goto_2
:cond_21
:try_start_21
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:try_end_34
.catchall {:try_start_21 .. :try_end_34} :catchall_35
goto :goto_11
:catchall_35
move-exception v3
move-object v1, v2
:goto_37
if-eqz v1, :cond_3d
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
const/4 v1, 0x0
:cond_3d
throw v3
:catchall_3e
move-exception v3
goto :goto_37
:cond_40
move-object v1, v2
goto :goto_2
.end method