.class public Lcom/twidroid/net/a/b/o;
.super Lcom/twidroid/net/a/b/b;
.source "SourceFile"
.field private static final t:Ljava/lang/String; = "YFrogImageApi"
.field protected final a:Ljava/lang/String;
.field protected final r:Ljava/lang/String;
.field private final s:Ljava/lang/String;
.method public constructor <init>(Lcom/twidroid/model/twitter/c;I)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/a/b/b;-><init>(Lcom/twidroid/model/twitter/c;I)V
const-string v0, "http://yfrog.com/api/upload"
iput-object v0, p0, Lcom/twidroid/net/a/b/o;->a:Ljava/lang/String;
const-string v0, "https://yfrog.com/api/xauth_upload"
iput-object v0, p0, Lcom/twidroid/net/a/b/o;->r:Ljava/lang/String;
const-string v0, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
iput-object v0, p0, Lcom/twidroid/net/a/b/o;->s:Ljava/lang/String;
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "YFrog"
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
.registers 16
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v3, 0x2
const/4 v2, 0x1
const/4 v4, 0x0
if-nez p7, :cond_9d
const/16 v0, 0xa
new-array v0, v0, [Ljava/lang/Object;
const-string v1, "username"
aput-object v1, v0, v4
iget-object v1, p0, Lcom/twidroid/net/a/b/o;->b:Ljava/lang/String;
aput-object v1, v0, v2
const-string v1, "password"
aput-object v1, v0, v3
iget-object v1, p0, Lcom/twidroid/net/a/b/o;->c:Ljava/lang/String;
aput-object v1, v0, v5
const-string v1, "source"
aput-object v1, v0, v6
const/4 v1, 0x5
const-string v2, "twidroyd"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "key"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "message"
aput-object v2, v0, v1
const/16 v1, 0x9
aput-object p6, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/b/o;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
:goto_3c
invoke-virtual {p4}, Lcom/twidroid/d/v;->ax()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p0, p3, v1, p2}, Lcom/twidroid/net/a/b/o;->a(Landroid/app/Activity;Ljava/util/Map;Ljava/lang/String;)V
:cond_45
if-nez p7, :cond_bc
const-string v2, "http://yfrog.com/api/upload"
:goto_49
const/4 v3, 0x0
move-object v0, p0
move-object v5, p7
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/b/o;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I[Lorg/apache/http/Header;)Lcom/twidroid/net/a/b/e;
move-result-object v3
iget v0, p0, Lcom/twidroid/net/a/b/o;->d:I
invoke-static {p3, p2, v0}, Lcom/twidroid/net/a/b/o;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_bf
const-string v0, "YFrogImageApi"
const-string v1, "Image decoding failed: uploading raw image"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "media"
move-object v0, p0
move-object v2, p2
move-object v4, p5
move-object v5, p3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/net/a/b/e;Landroid/os/Handler;Landroid/app/Activity;)Ljava/io/OutputStream;
move-result-object v0
:goto_69
const-string v1, "YFrogImageApi"
const-string v2, "::Image Upload Complete"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/twidroid/net/a/b/o;->a(Ljava/io/Closeable;)V
invoke-virtual {p0, p5}, Lcom/twidroid/net/a/b/o;->a(Landroid/os/Handler;)Ljava/lang/String;
move-result-object v0
const-string v1, "YFrogImageApi"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::Upload response: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/16 v1, 0x64
invoke-virtual {p5, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
invoke-virtual {p0, v0}, Lcom/twidroid/net/a/b/o;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_9d
const/4 v0, 0x6
new-array v0, v0, [Ljava/lang/Object;
const-string v1, "source"
aput-object v1, v0, v4
const-string v1, "twidroid"
aput-object v1, v0, v2
const-string v1, "key"
aput-object v1, v0, v3
const-string v1, "07DIOSVY8420f425b68fa8fc23ff2f131112ec01"
aput-object v1, v0, v5
const-string v1, "message"
aput-object v1, v0, v6
const/4 v1, 0x5
aput-object p6, v0, v1
invoke-static {v0}, Lcom/twidroid/net/a/b/o;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
goto :goto_3c
:cond_bc
const-string v2, "https://yfrog.com/api/xauth_upload"
goto :goto_49
:cond_bf
const-string v1, "media"
invoke-virtual {p0, v1, p5, v3, v0}, Lcom/twidroid/net/a/b/o;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/twidroid/net/a/b/e;Landroid/graphics/Bitmap;)Ljava/io/OutputStream;
move-result-object v0
goto :goto_69
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 6
:try_start_0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "rsp"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_46
const-string v0, "stat"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_13
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_48
const-string v3, "ok"
invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_48
const-string v0, "mediaurl"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_45
const-string v1, "YFrogImageApi"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::parseResponse: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_45
return-object v0
:cond_46
const/4 v0, 0x0
goto :goto_13
:cond_48
const-string v0, "err"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "code"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
new-instance v2, Lcom/ubermedia/net/a/a/a;
const-string v3, "msg"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0, v1}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v2
:try_end_64
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_64
:catch_64
move-exception v0
new-instance v1, Lcom/ubermedia/net/a/a/a;
invoke-direct {v1, v0}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public b()Ljava/lang/String;
.registers 2
const-string v0, "yfrog.com"
return-object v0
.end method
.method public c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public d()Z
.registers 2
const/4 v0, 0x1
return v0
.end method