.class public Lcom/ubermedia/uberads/b;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "GetAdsTask"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Ljava/util/Map;)Lcom/ubermedia/uberads/c;
.registers 7
const/4 v0, 0x0
const-string v1, "http://serve.uberads.com/request/json/0a281266-2c5a-11e3-bbbe-22000abc132c"
new-instance v2, Lcom/ubermedia/net/b;
invoke-direct {v2, v1}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V
const/4 v1, 0x0
aget-object v1, p1, v1
const-string v3, "GET"
invoke-virtual {v2, v3}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lcom/ubermedia/net/b;->b(Ljava/util/Map;)Lcom/ubermedia/net/b;
:try_start_13
invoke-virtual {v2}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;
move-result-object v2
invoke-static {v2}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
const/16 v3, 0xc8
if-eq v1, v3, :cond_3b
const-string v2, "GetAdsTask"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Response code is "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_3a
:cond_3a
return-object v0
:cond_3b
invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Lcom/ubermedia/net/d;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_3a
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-static {v3}, Lcom/ubermedia/uberads/c;->a(Lorg/json/JSONObject;)Lcom/ubermedia/uberads/c;
move-result-object v1
invoke-static {v2}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:try_end_55
.catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_55} :catch_57
.catch Ljava/io/IOException; {:try_start_13 .. :try_end_55} :catch_5c
.catch Lorg/json/JSONException; {:try_start_13 .. :try_end_55} :catch_61
move-object v0, v1
goto :goto_3a
:catch_57
move-exception v1
invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
goto :goto_3a
:catch_5c
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3a
:catch_61
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_3a
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/util/Map;
invoke-virtual {p0, p1}, Lcom/ubermedia/uberads/b;->a([Ljava/util/Map;)Lcom/ubermedia/uberads/c;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/ubermedia/uberads/c;)V
.registers 6
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
if-eqz p1, :cond_52
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Lcom/twidroid/d/v;->c(J)V
invoke-virtual {p1}, Lcom/ubermedia/uberads/c;->e()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_53
const-string v0, "GetAdsTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Got "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Lcom/ubermedia/uberads/c;->e()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ads"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/ubermedia/uberads/c;->e()Ljava/util/ArrayList;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/uberads/UberAd;
invoke-static {v1, v0}, Lcom/ubermedia/uberads/a;->a(Landroid/content/Context;Lcom/ubermedia/uberads/UberAd;)V
:cond_52
:goto_52
return-void
:cond_53
const-string v0, "GetAdsTask"
const-string v1, "No ads was received."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_52
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/ubermedia/uberads/c;
invoke-virtual {p0, p1}, Lcom/ubermedia/uberads/b;->a(Lcom/ubermedia/uberads/c;)V
return-void
.end method