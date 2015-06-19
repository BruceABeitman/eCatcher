.class public Lcom/twidroid/net/d/e;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ImageDownloadTask"


# instance fields
.field private b:Lcom/twidroid/net/d/f;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/d/f;)V
    .registers 2

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/d/e;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 11

    const/16 v7, 0xc8

    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v0, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    invoke-interface {v0, v5, v6, v3}, Lcom/twidroid/net/d/f;->a(JI)V

    :cond_14
    :goto_14
    return-object v1

    :cond_15
    const-string v2, "ImageDownloadTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start loading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\"[]"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "ImageDownloadTask"

    const-string v2, "Adding http:// to uri"

    invoke-static {v0, v2}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    :cond_69
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/twidroid/net/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/net/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/twidroid/net/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_95
    new-instance v0, Lcom/ubermedia/net/b;

    iget-object v2, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a4} :catch_174

    move-result-object v0

    const/4 v2, 0x1

    :try_start_a6
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    if-eq v2, v7, :cond_bf

    const/16 v6, 0x12e

    if-eq v2, v6, :cond_be

    const/16 v6, 0x12d

    if-eq v2, v6, :cond_be

    const/16 v6, 0x12f

    if-ne v2, v6, :cond_bf

    :cond_be
    move v3, v4

    :cond_bf
    if-eqz v3, :cond_e0

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ubermedia/net/b;

    invoke-direct {v3, v2}, Lcom/ubermedia/net/b;-><init>(Ljava/lang/String;)V

    const-string v2, "GET"

    invoke-virtual {v3, v2}, Lcom/ubermedia/net/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ubermedia/net/b;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    :cond_e0
    if-eq v2, v7, :cond_10d

    iget-object v2, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v6}, Lcom/twidroid/net/d/f;->a(JI)V

    const-string v2, "ImageDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download, code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_a6 .. :try_end_106} :catchall_168
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_106} :catch_128

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_14

    :cond_10d
    :try_start_10d
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_11d
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_156

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_127
    .catchall {:try_start_10d .. :try_end_127} :catchall_168
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_127} :catch_128

    goto :goto_11d

    :catch_128
    move-exception v2

    :goto_129
    :try_start_129
    iget-object v2, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    if-eqz v2, :cond_139

    iget-object v2, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    monitor-enter v2
    :try_end_130
    .catchall {:try_start_129 .. :try_end_130} :catchall_168

    :try_start_130
    iget-object v3, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    invoke-interface {v3, v6, v7, v4}, Lcom/twidroid/net/d/f;->a(JI)V

    monitor-exit v2
    :try_end_139
    .catchall {:try_start_130 .. :try_end_139} :catchall_165

    :cond_139
    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13e
    :goto_13e
    iget-object v0, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    monitor-enter v2

    :try_start_145
    iget-object v0, p0, Lcom/twidroid/net/d/e;->b:Lcom/twidroid/net/d/f;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/net/d/e;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/twidroid/net/d/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_14

    :catchall_153
    move-exception v0

    monitor-exit v2
    :try_end_155
    .catchall {:try_start_145 .. :try_end_155} :catchall_153

    throw v0

    :cond_156
    :try_start_156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15f
    .catchall {:try_start_156 .. :try_end_15f} :catchall_168
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15f} :catch_128

    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_13e

    :catchall_165
    move-exception v1

    :try_start_166
    monitor-exit v2
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    :try_start_167
    throw v1
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_168

    :catchall_168
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_16c
    if-eqz v1, :cond_171

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_171
    throw v0

    :catchall_172
    move-exception v0

    goto :goto_16c

    :catch_174
    move-exception v0

    move-object v0, v1

    goto :goto_129
.end method
