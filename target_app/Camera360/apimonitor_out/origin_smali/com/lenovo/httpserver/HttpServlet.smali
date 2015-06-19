.class public abstract Lcom/lenovo/httpserver/HttpServlet;
.super Ljava/lang/Object;
.source "HttpServlet.java"


# static fields
.field public static final CONTENT_TYPE_HTML:Ljava/lang/String; = "text/html; charset=UTF-8"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json; charset=UTF-8"

.field public static final CONTENT_TYPE_OCTET:Ljava/lang/String; = "application/octet-stream"

.field public static final CONTENT_TYPE_TEXT:Ljava/lang/String; = "text/plain; charset=UTF-8"

.field public static final CRLF:Ljava/lang/String; = "\r\n"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mServletPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/httpserver/HttpServlet;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/httpserver/HttpServlet;->mServletPath:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p1, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1.1"

    iget-object v3, p1, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v2, 0x195

    invoke-virtual {p2, v2, v0}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V

    :goto_26
    return-void

    :cond_27
    const/16 v2, 0x190

    invoke-virtual {p2, v2, v0}, Lcom/lenovo/httpserver/HttpResponse;->sendError(ILjava/lang/String;)V

    goto :goto_26
.end method

.method protected static sendFile(Lcom/lenovo/httpserver/HttpResponse;Ljava/lang/String;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/httpserver/HttpResponse;->setContentLength(J)V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I

    invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpResponse;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lenovo/httpserver/HttpServlet;->sendFileContents(Ljava/io/File;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected static sendFileContents(Ljava/io/File;Ljava/io/OutputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v7, p0, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/high16 v8, 0x1

    :try_start_10
    new-array v0, v8, [B

    :cond_12
    :goto_12
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_25

    move-result v1

    if-gez v1, :cond_1c

    :goto_18
    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    return-void

    :cond_1c
    if-eqz v1, :cond_12

    const/4 v8, 0x0

    :try_start_1f
    invoke-virtual {p1, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_25

    int-to-long v8, v1

    add-long/2addr v2, v8

    goto :goto_12

    :catch_25
    move-exception v4

    :try_start_26
    const-string/jumbo v8, "HttpServlet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed: file = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", completed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_26 .. :try_end_69} :catchall_6a

    goto :goto_18

    :catchall_6a
    move-exception v8

    invoke-static {v7}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/io/RandomAccessFile;)V

    throw v8
.end method


# virtual methods
.method protected doDelete(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    return-void
.end method

.method protected doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    return-void
.end method

.method protected doHead(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    return-void
.end method

.method protected doPost(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    return-void
.end method

.method protected doPut(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    return-void
.end method

.method protected doTrace(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TRACE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/httpserver/HttpRequest;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_61
    const-string/jumbo v3, "message/http"

    invoke-virtual {p2, v3}, Lcom/lenovo/httpserver/HttpResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lenovo/httpserver/HttpResponse;->getBufferedWriter()Ljava/io/BufferedWriter;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final getServletPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/httpserver/HttpServlet;->mServletPath:Ljava/lang/String;

    return-object v0
.end method

.method public service(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lcom/lenovo/httpserver/HttpRequest;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doGet(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    :goto_e
    return-void

    :cond_f
    const-string/jumbo v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doPost(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e

    :cond_1c
    const-string/jumbo v1, "PUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doPut(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e

    :cond_29
    const-string/jumbo v1, "DELETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doDelete(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e

    :cond_36
    const-string/jumbo v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doHead(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e

    :cond_43
    const-string/jumbo v1, "TRACE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->doTrace(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e

    :cond_50
    invoke-direct {p0, p1, p2}, Lcom/lenovo/httpserver/HttpServlet;->a(Lcom/lenovo/httpserver/HttpRequest;Lcom/lenovo/httpserver/HttpResponse;)V

    goto :goto_e
.end method
