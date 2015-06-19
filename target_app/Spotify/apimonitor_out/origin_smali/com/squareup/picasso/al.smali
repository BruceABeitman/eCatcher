.class public final Lcom/squareup/picasso/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# static fields
.field static volatile a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/al;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/al;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Z)Lcom/squareup/picasso/n;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_28

    iget-object v0, p0, Lcom/squareup/picasso/al;->c:Landroid/content/Context;

    sget-object v1, Lcom/squareup/picasso/al;->a:Ljava/lang/Object;

    if-nez v1, :cond_28

    :try_start_c
    sget-object v1, Lcom/squareup/picasso/al;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_7d

    :try_start_f
    sget-object v2, Lcom/squareup/picasso/al;->a:Ljava/lang/Object;

    if-nez v2, :cond_27

    invoke-static {v0}, Lcom/squareup/picasso/am;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-nez v0, :cond_25

    invoke-static {v2}, Lcom/squareup/picasso/am;->a(Ljava/io/File;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    :cond_25
    sput-object v0, Lcom/squareup/picasso/al;->a:Ljava/lang/Object;

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_7a

    :cond_28
    :goto_28
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz p2, :cond_4e

    const-string v1, "Cache-Control"

    const-string v2, "only-if-cached,max-age=2147483647"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_7f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v2, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_7a
    move-exception v0

    :try_start_7b
    monitor-exit v1

    throw v0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception v0

    goto :goto_28

    :cond_7f
    const-string v1, "Content-Length"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "X-Android-Response-Source"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/am;->a(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Lcom/squareup/picasso/n;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0, v3, v1, v2}, Lcom/squareup/picasso/n;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v4
.end method
