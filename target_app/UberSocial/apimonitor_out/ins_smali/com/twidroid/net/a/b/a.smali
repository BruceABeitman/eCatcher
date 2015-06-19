.class public Lcom/twidroid/net/a/b/a;
.super Lcom/twidroid/net/a/b/b;
.source "SourceFile"
.field private static final r:Ljava/lang/String; = "/statuses/update_with_media.json"
.field private static final s:Ljava/lang/String; = "upload.twitter.com/1"
.field private static t:Ljava/lang/String;
.field  a:J
.method static constructor <clinit>()V
.registers 1
const-string v0, "NativeImage"
sput-object v0, Lcom/twidroid/net/a/b/a;->t:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;I)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/twidroid/net/a/b/b;-><init>(Lcom/twidroid/model/twitter/c;I)V
const-wide/16 v0, 0x1
iput-wide v0, p0, Lcom/twidroid/net/a/b/a;->a:J
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "twitter"
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
.registers 26
const/4 v9, 0x0
const-wide/16 v10, 0x0
const-wide/16 v12, 0x0
const-string v14, ""
const-wide/16 v15, -0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
move-object/from16 v2, p2
move-object/from16 v3, p3
move-object/from16 v4, p4
move-object/from16 v5, p5
move-object/from16 v6, p6
move-object/from16 v7, p7
move-object/from16 v8, p8
invoke-virtual/range {v0 .. v16}, Lcom/twidroid/net/a/b/a;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;ZDDLjava/lang/String;J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;ZDDLjava/lang/String;J)Ljava/lang/String;
.registers 34
const/4 v3, 0x0
if-eqz p8, :cond_9
const/4 v2, 0x0
move-object/from16 v0, p8
invoke-virtual {v0, v2}, Lcom/twidroid/net/a/b/c;->a(I)V
:cond_9
new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/twidroid/net/a/b/a;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/twidroid/net/a/b/a;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v2
const-string v4, "http.protocol.version"
sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-interface {v2, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual/range {p1 .. p1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v4
const-string v5, "1.1"
invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_33
const-string v2, "upload.twitter.com/1"
:cond_33
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "https://"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "/statuses/update_with_media.json"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v2, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/twidroid/net/a/b/a;->g:Lorg/apache/http/client/methods/HttpPost;
invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v2
check-cast v2, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v2
invoke-virtual {v2, v4}, Lcom/twidroid/net/a/c/c;->p(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/net/a/b/a;->g:Lorg/apache/http/client/methods/HttpPost;
const-string v5, "Authorization"
invoke-virtual {v4, v5, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v9, Lcom/ubermedia/net/h;
sget-object v2, Lorg/apache/a/a/a/d;->b:Lorg/apache/a/a/a/d;
new-instance v4, Lcom/twidroid/net/a/b/a$1;
move-object/from16 v0, p0
move-object/from16 v1, p8
invoke-direct {v4, v0, v1}, Lcom/twidroid/net/a/b/a$1;-><init>(Lcom/twidroid/net/a/b/a;Lcom/twidroid/net/a/b/c;)V
invoke-direct {v9, v2, v4}, Lcom/ubermedia/net/h;-><init>(Lorg/apache/a/a/a/d;Lcom/ubermedia/net/j;)V
invoke-virtual/range {p3 .. p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;
move-result-object v2
check-cast v2, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/d/v;->cj()J
move-result-wide v10
const/4 v7, 0x1
move-object/from16 v0, p0
iget v6, v0, Lcom/twidroid/net/a/b/a;->d:I
const-wide/16 v4, 0x0
move-object v2, v3
:goto_96
if-eqz v7, :cond_f5
:try_start_98
move-object/from16 v0, p3
move-object/from16 v1, p2
invoke-static {v0, v1, v6}, Lcom/twidroid/net/a/b/b;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
move-result-object v2
sget-object v3, Lcom/twidroid/net/a/b/a;->t:Ljava/lang/String;
const-string v8, "compressing image..."
invoke-static {v3, v8}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
if-nez v2, :cond_c3
new-instance v2, Lcom/ubermedia/net/a/a/a;
const-string v3, "Image preprocessing failed."
invoke-direct {v2, v3}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v2
:try_end_b1
.catch Ljava/lang/OutOfMemoryError; {:try_start_98 .. :try_end_b1} :catch_b1
:catch_b1
move-exception v2
sget-object v3, Lcom/twidroid/net/a/b/a;->t:Ljava/lang/String;
const-string v4, ""
invoke-static {v3, v4, v2}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v3, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;)V
throw v3
:try_start_c3
:cond_c3
move-object/from16 v0, p3
invoke-static {v0, v2}, Lcom/twidroid/net/a/b/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/io/File;
move-result-object v8
new-instance v12, Lorg/apache/a/a/a/a/e;
const-string v2, "image/jpeg"
invoke-direct {v12, v8, v2}, Lorg/apache/a/a/a/a/e;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v12}, Lorg/apache/a/a/a/a/e;->c()J
move-result-wide v2
const-wide/16 v13, 0x0
cmp-long v13, v10, v13
if-lez v13, :cond_ea
cmp-long v13, v2, v10
if-lez v13, :cond_ea
cmp-long v13, v4, v2
if-eqz v13, :cond_ea
add-int/lit8 v4, v6, 0x1
move v5, v7
:goto_e5
move v6, v4
move v7, v5
move-wide v4, v2
move-object v2, v8
goto :goto_96
:cond_ea
const/4 v2, 0x0
const-string v3, "media[]"
invoke-virtual {v9, v3, v12}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
:try_end_f0
.catch Ljava/lang/OutOfMemoryError; {:try_start_c3 .. :try_end_f0} :catch_b1
move-wide v15, v4
move v4, v6
move v5, v2
move-wide v2, v15
goto :goto_e5
:cond_f5
const-string v3, "status"
new-instance v4, Lorg/apache/a/a/a/a/g;
const-string v5, "UTF-8"
invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v5
move-object/from16 v0, p6
invoke-direct {v4, v0, v5}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
invoke-virtual {v9, v3, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
if-eqz p9, :cond_127
if-nez p14, :cond_195
const-string v3, "lat"
new-instance v4, Lorg/apache/a/a/a/a/g;
invoke-static/range {p10 .. p11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v3, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
const-string v3, "long"
new-instance v4, Lorg/apache/a/a/a/a/g;
invoke-static/range {p12 .. p13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v3, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
:goto_127
:cond_127
const-wide/16 v3, 0x0
cmp-long v3, p15, v3
if-lez v3, :cond_13b
const-string v3, "in_reply_to_status_id"
new-instance v4, Lorg/apache/a/a/a/a/g;
invoke-static/range {p15 .. p16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v3, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
:cond_13b
invoke-virtual {v9}, Lcom/ubermedia/net/h;->getContentLength()J
move-result-wide v3
move-object/from16 v0, p0
iput-wide v3, v0, Lcom/twidroid/net/a/b/a;->a:J
sget-object v3, Lcom/twidroid/net/a/b/a;->t:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Total Size determined: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
iget-wide v5, v0, Lcom/twidroid/net/a/b/a;->a:J
invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/net/a/b/a;->g:Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {v3, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/twidroid/net/a/b/a;->h:Lorg/apache/http/impl/client/DefaultHttpClient;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/twidroid/net/a/b/a;->g:Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v3
new-instance v4, Ljava/io/BufferedReader;
new-instance v5, Ljava/io/InputStreamReader;
invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
const-string v6, "UTF-8"
invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
:goto_18b
invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_1a2
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18b
:cond_195
const-string v3, "place_id"
new-instance v4, Lorg/apache/a/a/a/a/g;
move-object/from16 v0, p14
invoke-direct {v4, v0}, Lorg/apache/a/a/a/a/g;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v3, v4}, Lcom/ubermedia/net/h;->a(Ljava/lang/String;Lorg/apache/a/a/a/a/c;)V
goto :goto_127
:cond_1a2
sget-object v4, Lcom/twidroid/net/a/b/a;->t:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Twitter response "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p8, :cond_1ce
const/16 v4, 0x64
move-object/from16 v0, p8
invoke-virtual {v0, v4}, Lcom/twidroid/net/a/b/c;->a(I)V
const-string v4, ""
move-object/from16 v0, p8
invoke-virtual {v0, v4}, Lcom/twidroid/net/a/b/c;->a(Ljava/lang/String;)V
:cond_1ce
if-eqz v2, :cond_1d3
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_1d3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
return-object p1
.end method
.method public b()Ljava/lang/String;
.registers 2
const-string v0, "pic.twitter.com"
return-object v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/net/a/b/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method