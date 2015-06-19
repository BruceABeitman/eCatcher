.class public final Lcom/facebook/a/c/d;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private a:Lcom/facebook/a/c/c;


# direct methods
.method public constructor <init>(Lcom/facebook/a/c/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/a/c/d;->a:Lcom/facebook/a/c/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;Ljava/lang/String;Lcom/facebook/a/c/a;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/a/c/d;->a:Lcom/facebook/a/c/c;

    invoke-interface {v0, p1}, Lcom/facebook/a/c/c;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v2, "Android"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {v1, v0, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :try_start_22
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/facebook/a/c/a;->a(I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_47

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_47
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
