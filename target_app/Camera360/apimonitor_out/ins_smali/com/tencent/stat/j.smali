.class  Lcom/tencent/stat/j;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private a:Landroid/content/Context;
.field private b:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
iput-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
iput-object p1, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
if-eqz p2, :cond_e
iput-object p2, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
:cond_e
return-void
.end method
.method private a(Ljava/lang/String;I)Lcom/tencent/stat/NetworkMonitor;
.registers 11
new-instance v2, Lcom/tencent/stat/NetworkMonitor;
invoke-direct {v2}, Lcom/tencent/stat/NetworkMonitor;-><init>()V
new-instance v3, Ljava/net/Socket;
invoke-direct {v3}, Ljava/net/Socket;-><init>()V
const/4 v0, 0x0
:try_start_b
invoke-virtual {v2, p1}, Lcom/tencent/stat/NetworkMonitor;->setDomain(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Lcom/tencent/stat/NetworkMonitor;->setPort(I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
new-instance v1, Ljava/net/InetSocketAddress;
invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
const/16 v6, 0x7530
invoke-static {v3, v1, v6}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
sub-long v4, v6, v4
invoke-virtual {v2, v4, v5}, Lcom/tencent/stat/NetworkMonitor;->setMillisecondsConsume(J)V
invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
move-result-object v1
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/tencent/stat/NetworkMonitor;->setRemoteIp(Ljava/lang/String;)V
if-eqz v3, :cond_38
invoke-static {v3}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:cond_38
:try_end_38
.catchall {:try_start_b .. :try_end_38} :catchall_63
.catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_4a
if-eqz v3, :cond_3d
:try_start_3a
invoke-static {v3}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_3d
.catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_41
:goto_3d
:cond_3d
invoke-virtual {v2, v0}, Lcom/tencent/stat/NetworkMonitor;->setStatusCode(I)V
return-object v2
:catch_41
move-exception v1
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_3d
:catch_4a
move-exception v0
move-object v1, v0
const/4 v0, -0x1
:try_start_4d
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
:try_end_54
.catchall {:try_start_4d .. :try_end_54} :catchall_63
if-eqz v3, :cond_3d
:try_start_56
invoke-static {v3}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_59
.catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a
goto :goto_3d
:catch_5a
move-exception v1
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_3d
:catchall_63
move-exception v0
if-eqz v3, :cond_69
:try_start_66
invoke-static {v3}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:cond_69
:goto_69
:try_end_69
.catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_6a
throw v0
:catch_6a
move-exception v1
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_69
.end method
.method private a()Ljava/util/Map;
.registers 9
const/4 v3, 0x0
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v1, "__MTA_TEST_SPEED__"
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/tencent/stat/StatConfig;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1a
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_1b
:cond_1a
return-object v0
:cond_1b
const-string/jumbo v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v5, v4
move v2, v3
:goto_24
if-ge v2, v5, :cond_1a
aget-object v1, v4, v2
const-string/jumbo v6, ","
invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_35
array-length v6, v1
const/4 v7, 0x2
if-eq v6, v7, :cond_39
:goto_35
:cond_35
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_24
:cond_39
aget-object v6, v1, v3
if-eqz v6, :cond_35
invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v7
if-eqz v7, :cond_35
const/4 v7, 0x1
:try_start_48
aget-object v1, v1, v7
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_51
.catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_51} :catch_5a
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_35
:catch_5a
move-exception v1
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v6
invoke-virtual {v6, v1}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Exception;)V
goto :goto_35
.end method
.method public run()V
.registers 7
:try_start_0
iget-object v0, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/tencent/stat/common/k;->h(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
if-nez v0, :cond_13
invoke-direct {p0}, Lcom/tencent/stat/j;->a()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
:cond_13
iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_33
:cond_1f
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
const-string/jumbo v1, "empty domain list."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
:try_end_29
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a
goto :goto_8
:catch_2a
move-exception v0
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
goto :goto_8
:cond_33
:try_start_33
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/tencent/stat/j;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_42
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a7
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
if-eqz v1, :cond_5c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_67
:cond_5c
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
const-string/jumbo v1, "empty domain name."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
goto :goto_42
:cond_67
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
if-nez v2, :cond_8b
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "port is null for "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->w(Ljava/lang/Object;)V
goto :goto_42
:cond_8b
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-direct {p0, v1, v0}, Lcom/tencent/stat/j;->a(Ljava/lang/String;I)Lcom/tencent/stat/NetworkMonitor;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/stat/NetworkMonitor;->toJSONObject()Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_42
:cond_a7
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v0
if-eqz v0, :cond_8
new-instance v0, Lcom/tencent/stat/a/i;
iget-object v1, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
const/4 v4, 0x0
invoke-static {v2, v4}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/tencent/stat/a/i;-><init>(Landroid/content/Context;I)V
invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/tencent/stat/a/i;->a(Ljava/lang/String;)V
iget-object v1, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
if-eqz v1, :cond_8
iget-object v1, p0, Lcom/tencent/stat/j;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/tencent/stat/k;
invoke-direct {v2, v0}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_d8
.catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_d8} :catch_2a
goto/16 :goto_8
.end method