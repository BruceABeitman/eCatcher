.class public final Lcom/squareup/picasso/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/picasso/Downloader;
.field private final a:Lcom/squareup/okhttp/o;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-static {p1}, Lcom/squareup/picasso/am;->b(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
invoke-direct {p0, v0}, Lcom/squareup/picasso/u;-><init>(Ljava/io/File;)V
return-void
.end method
.method private constructor <init>(Lcom/squareup/okhttp/m;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/squareup/okhttp/o;
invoke-direct {v0, p1}, Lcom/squareup/okhttp/o;-><init>(Lcom/squareup/okhttp/m;)V
iput-object v0, p0, Lcom/squareup/picasso/u;->a:Lcom/squareup/okhttp/o;
return-void
.end method
.method private constructor <init>(Ljava/io/File;)V
.registers 4
invoke-static {p1}, Lcom/squareup/picasso/am;->a(Ljava/io/File;)J
move-result-wide v0
invoke-direct {p0, p1, v0, v1}, Lcom/squareup/picasso/u;-><init>(Ljava/io/File;J)V
return-void
.end method
.method private constructor <init>(Ljava/io/File;J)V
.registers 6
new-instance v0, Lcom/squareup/okhttp/m;
invoke-direct {v0}, Lcom/squareup/okhttp/m;-><init>()V
invoke-direct {p0, v0}, Lcom/squareup/picasso/u;-><init>(Lcom/squareup/okhttp/m;)V
:try_start_8
iget-object v0, p0, Lcom/squareup/picasso/u;->a:Lcom/squareup/okhttp/o;
invoke-virtual {v0}, Lcom/squareup/okhttp/o;->a()Lcom/squareup/okhttp/m;
move-result-object v0
new-instance v1, Lcom/squareup/okhttp/b;
invoke-direct {v1, p1, p2, p3}, Lcom/squareup/okhttp/b;-><init>(Ljava/io/File;J)V
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/m;->a(Lcom/squareup/okhttp/b;)Lcom/squareup/okhttp/m;
:goto_16
:try_end_16
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
goto :goto_16
.end method
.method public final a(Landroid/net/Uri;Z)Lcom/squareup/picasso/n;
.registers 8
iget-object v0, p0, Lcom/squareup/picasso/u;->a:Lcom/squareup/okhttp/o;
new-instance v1, Ljava/net/URL;
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/o;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
move-result-object v1
const/16 v0, 0x3a98
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v0, 0x4e20
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
if-eqz p2, :cond_26
const-string v0, "Cache-Control"
const-string v2, "only-if-cached,max-age=2147483647"
invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:cond_26
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
const/16 v2, 0x12c
if-lt v0, v2, :cond_52
invoke-static {v1}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
new-instance v2, Lcom/squareup/picasso/Downloader$ResponseException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V
throw v2
:cond_52
const-string v0, "OkHttp-Response-Source"
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_60
const-string v0, "X-Android-Response-Source"
invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_60
const-string v2, "Content-Length"
const/4 v3, -0x1
invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I
move-result v2
int-to-long v2, v2
invoke-static {v0}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;)Z
move-result v0
new-instance v4, Lcom/squareup/picasso/n;
invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-direct {v4, v1, v0, v2, v3}, Lcom/squareup/picasso/n;-><init>(Ljava/io/InputStream;ZJ)V
return-object v4
.end method