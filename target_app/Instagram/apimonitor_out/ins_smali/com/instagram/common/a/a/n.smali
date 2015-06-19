.class final Lcom/instagram/common/a/a/n;
.super Ljava/lang/Object;
.source "RequestPerformerUtil.java"
.method static a(Lcom/instagram/common/a/a/a;)Ljava/lang/Object;
.registers 5
invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
if-nez v1, :cond_f
invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->g()Ljava/lang/Object;
move-result-object v0
:goto_e
return-object v0
:cond_f
:try_start_f
invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->d()Lcom/instagram/common/a/a/p;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->d()Lcom/instagram/common/a/a/p;
move-result-object v0
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/p;->a(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
:try_end_1c
.catchall {:try_start_f .. :try_end_1c} :catchall_49
.catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_29
move-result-object v0
:try_start_1d
:goto_1d
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_24
.catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_25
goto :goto_e
:catch_25
move-exception v1
goto :goto_e
:cond_27
const/4 v0, 0x0
goto :goto_1d
:catch_29
move-exception v0
:try_start_2a
invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->c_()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v2
const-string v3, "network_request"
invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2, v0}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-virtual {p0}, Lcom/instagram/common/a/a/a;->g()Ljava/lang/Object;
:try_end_3e
.catchall {:try_start_2a .. :try_end_3e} :catchall_49
move-result-object v0
:try_start_3f
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_46
.catch Ljava/io/IOException; {:try_start_3f .. :try_end_46} :catch_47
goto :goto_e
:catch_47
move-exception v1
goto :goto_e
:catchall_49
move-exception v0
:try_start_4a
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:try_end_51
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_52
:goto_51
throw v0
:catch_52
move-exception v1
goto :goto_51
.end method