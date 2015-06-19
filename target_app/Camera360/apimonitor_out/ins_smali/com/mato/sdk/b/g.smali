.class public final Lcom/mato/sdk/b/g;
.super Lcom/mato/sdk/b/c;
.field private static final a:Ljava/lang/String; = "Mato.MatoLogReportAsyncTask"
.field private b:[B
.field private c:Lcom/mato/sdk/b/d;
.field private d:Z
.method public constructor <init>(Lcom/mato/sdk/b/d;[BZ)V
.registers 4
invoke-direct {p0}, Lcom/mato/sdk/b/c;-><init>()V
iput-object p1, p0, Lcom/mato/sdk/b/g;->c:Lcom/mato/sdk/b/d;
iput-object p2, p0, Lcom/mato/sdk/b/g;->b:[B
iput-boolean p3, p0, Lcom/mato/sdk/b/g;->d:Z
return-void
.end method
.method final a()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/mato/sdk/a/b$f;->b()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final a(Ljava/lang/String;)V
.registers 4
if-nez p1, :cond_c
const-string/jumbo v0, "Mato.MatoLogReportAsyncTask"
const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u6210\u529f\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
return-void
:cond_c
:try_start_c
const-string/jumbo v0, "success"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/mato/sdk/b/g;->c:Lcom/mato/sdk/b/d;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/mato/sdk/b/g;->c:Lcom/mato/sdk/b/d;
const-string/jumbo v1, "\u4e0a\u62a5\u65e5\u5fd7\u6210\u529f"
invoke-interface {v0, v1}, Lcom/mato/sdk/b/d;->a(Ljava/lang/String;)V
:cond_21
const-string/jumbo v0, "Mato.MatoLogReportAsyncTask"
const-string/jumbo v1, "report succeed"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2a} :catch_2b
goto :goto_b
:catch_2b
move-exception v0
const-string/jumbo v0, "Mato.MatoLogReportAsyncTask"
const-string/jumbo v1, "json exception"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_b
:cond_36
:try_start_36
const-string/jumbo v0, "Mato.MatoLogReportAsyncTask"
const-string/jumbo v1, "report failed"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3f
.catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_2b
goto :goto_b
.end method
.method final b()Lorg/apache/http/HttpEntity;
.registers 11
:try_start_0
invoke-static {}, Lcom/mato/sdk/utils/g;->b()Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/mato/sdk/utils/h;->a()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/mato/sdk/utils/h;->b()Ljava/lang/String;
move-result-object v4
invoke-static {}, Lcom/mato/sdk/utils/g;->g()Ljava/lang/String;
move-result-object v5
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "2989d4f8dcda393d1c1ca3c021f0cb10"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
move-result-object v6
invoke-static {v6}, Lcom/mato/sdk/utils/j;->a([B)Ljava/lang/String;
move-result-object v6
invoke-static {}, Lcom/mato/sdk/utils/h;->c()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v9, "imei"
invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "packageName"
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "networkType"
invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "carrier"
invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "viaProxy"
invoke-static {}, Lcom/mato/sdk/a/b$e;->a()Z
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "serviceType"
invoke-static {}, Lcom/mato/sdk/a/b;->c()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "timestamp"
invoke-interface {v8, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "authKey"
invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "platform"
invoke-static {}, Lcom/mato/sdk/utils/g;->l()Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "appVersion"
invoke-static {}, Lcom/mato/sdk/utils/g;->j()Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "cpu"
invoke-static {}, Lcom/mato/sdk/utils/g;->f()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "memory"
invoke-static {}, Lcom/mato/sdk/utils/g;->e()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "resolution"
invoke-static {}, Lcom/mato/sdk/utils/g;->k()Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "sdkVersion"
invoke-static {}, Lcom/mato/sdk/a/b;->k()Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "reportFirstTime"
iget-boolean v2, p0, Lcom/mato/sdk/b/g;->d:Z
invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "model"
new-instance v2, Ljava/lang/StringBuilder;
sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "type"
const-string/jumbo v2, "wspx-client"
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "codec"
const-string/jumbo v2, "gzip"
invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "imsi"
invoke-interface {v8, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v1, "Mato.MatoLogReportAsyncTask"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the info for logreport is: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Lcom/mato/sdk/b/h;
invoke-direct {v3}, Lcom/mato/sdk/b/h;-><init>()V
invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_12e
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_142
const-string/jumbo v1, "filename"
const-string/jumbo v2, "accesslog.gzip"
iget-object v4, p0, Lcom/mato/sdk/b/g;->b:[B
const/4 v5, 0x1
invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mato/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;[BZ)V
move-object v1, v3
:goto_141
return-object v1
:cond_142
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Ljava/util/Map$Entry;
move-object v2, v0
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v3, v1, v2}, Lcom/mato/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_159
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_159} :catch_15a
goto :goto_12e
:catch_15a
move-exception v1
const/4 v1, 0x0
goto :goto_141
.end method
.method final c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method