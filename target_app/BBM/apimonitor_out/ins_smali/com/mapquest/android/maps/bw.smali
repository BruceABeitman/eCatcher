.class final Lcom/mapquest/android/maps/bw;
.super Lcom/mapquest/android/maps/bz;
.source "ThreadBasedTileDownloader.java"
.field final a:I
.field final b:I
.field final c:I
.field final d:I
.field final e:I
.field  f:Lorg/apache/http/impl/io/HttpRequestWriter;
.field  g:Lorg/apache/http/impl/io/HttpResponseParser;
.field  h:Lcom/mapquest/android/maps/bu;
.field  i:Landroid/os/Handler;
.field  j:Landroid/os/Looper;
.field final synthetic k:Lcom/mapquest/android/maps/bt;
.field private o:Ljava/net/Socket;
.field private p:Ljava/lang/String;
.field private q:I
.field private r:I
.field private s:Lorg/apache/http/params/HttpParams;
.field private t:Lorg/apache/http/impl/io/SocketInputBuffer;
.field private u:Lorg/apache/http/impl/io/SocketOutputBuffer;
.field private v:Ljava/io/ByteArrayOutputStream;
.method public constructor <init>(Lcom/mapquest/android/maps/bt;)V
.registers 5
const/4 v2, 0x0
const/16 v1, 0x1388
iput-object p1, p0, Lcom/mapquest/android/maps/bw;->k:Lcom/mapquest/android/maps/bt;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/mapquest/android/maps/bz;-><init>(Lcom/mapquest/android/maps/bt;B)V
iput v1, p0, Lcom/mapquest/android/maps/bw;->a:I
const/4 v0, 0x1
iput v0, p0, Lcom/mapquest/android/maps/bw;->b:I
const/4 v0, 0x2
iput v0, p0, Lcom/mapquest/android/maps/bw;->c:I
const/4 v0, 0x3
iput v0, p0, Lcom/mapquest/android/maps/bw;->d:I
const/16 v0, 0x7530
iput v0, p0, Lcom/mapquest/android/maps/bw;->e:I
const-string v0, ""
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->p:Ljava/lang/String;
iput v1, p0, Lcom/mapquest/android/maps/bw;->r:I
iput-object v2, p0, Lcom/mapquest/android/maps/bw;->f:Lorg/apache/http/impl/io/HttpRequestWriter;
iput-object v2, p0, Lcom/mapquest/android/maps/bw;->g:Lorg/apache/http/impl/io/HttpResponseParser;
new-instance v0, Lcom/mapquest/android/maps/bu;
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/bu;-><init>(Ljava/util/Queue;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
const-string v1, "mqandroid/1.1"
invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/bw;)V
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->u:Lorg/apache/http/impl/io/SocketOutputBuffer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->u:Lorg/apache/http/impl/io/SocketOutputBuffer;
invoke-virtual {v0}, Lorg/apache/http/impl/io/SocketOutputBuffer;->flush()V
:cond_9
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/bw;Lcom/mapquest/android/maps/ca;)V
.registers 9
const/16 v6, 0x5dc
const/4 v5, 0x0
new-instance v1, Ljava/net/URI;
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->a:Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_17
const/16 v0, 0x50
:cond_17
iget-object v3, p0, Lcom/mapquest/android/maps/bw;->p:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_26
iget v3, p0, Lcom/mapquest/android/maps/bw;->q:I
if-eq v0, v3, :cond_26
invoke-virtual {p0}, Lcom/mapquest/android/maps/bw;->a()V
:cond_26
iget-object v3, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
if-nez v3, :cond_88
iput-object v2, p0, Lcom/mapquest/android/maps/bw;->p:Ljava/lang/String;
iput v0, p0, Lcom/mapquest/android/maps/bw;->q:I
new-instance v3, Ljava/net/Socket;
invoke-direct {v3, v2, v0}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v2, 0x3
const-wide/16 v3, 0x7530
invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_41
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
invoke-virtual {v0, v5, v5}, Ljava/net/Socket;->setSoLinger(ZI)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
const/16 v2, 0x1388
invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V
new-instance v0, Lorg/apache/http/impl/io/SocketInputBuffer;
iget-object v2, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
iget-object v3, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
invoke-direct {v0, v2, v6, v3}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->t:Lorg/apache/http/impl/io/SocketInputBuffer;
new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;
iget-object v2, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
iget-object v3, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
invoke-direct {v0, v2, v6, v3}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->u:Lorg/apache/http/impl/io/SocketOutputBuffer;
new-instance v0, Lorg/apache/http/impl/io/HttpRequestWriter;
iget-object v2, p0, Lcom/mapquest/android/maps/bw;->u:Lorg/apache/http/impl/io/SocketOutputBuffer;
new-instance v3, Lorg/apache/http/message/BasicLineFormatter;
invoke-direct {v3}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V
iget-object v4, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->f:Lorg/apache/http/impl/io/HttpRequestWriter;
new-instance v0, Lorg/apache/http/impl/io/HttpResponseParser;
iget-object v2, p0, Lcom/mapquest/android/maps/bw;->t:Lorg/apache/http/impl/io/SocketInputBuffer;
new-instance v3, Lorg/apache/http/message/BasicLineParser;
invoke-direct {v3}, Lorg/apache/http/message/BasicLineParser;-><init>()V
new-instance v4, Lorg/apache/http/impl/DefaultHttpResponseFactory;
invoke-direct {v4}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V
iget-object v5, p0, Lcom/mapquest/android/maps/bw;->s:Lorg/apache/http/params/HttpParams;
invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/http/impl/io/HttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->g:Lorg/apache/http/impl/io/HttpResponseParser;
:cond_88
new-instance v2, Lorg/apache/http/message/BasicHttpRequest;
const-string v0, "GET"
invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v0, v3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v3
if-lez v3, :cond_b8
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v3, 0x3a
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/net/URI;->getPort()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_b8
const-string v1, "Host"
invoke-virtual {v2, v1, v0}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Connection"
const-string v1, "keep-alive"
invoke-virtual {v2, v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->f:Lorg/apache/http/impl/io/HttpRequestWriter;
invoke-virtual {v0, v2}, Lorg/apache/http/impl/io/HttpRequestWriter;->write(Lorg/apache/http/HttpMessage;)V
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/bw;Lorg/apache/http/impl/io/HttpResponseParser;)[B
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bw;->a(Lorg/apache/http/impl/io/HttpResponseParser;)[B
move-result-object v0
return-object v0
.end method
.method private a(Lorg/apache/http/impl/io/HttpResponseParser;)[B
.registers 10
const/16 v7, 0x1388
invoke-virtual {p1}, Lorg/apache/http/impl/io/HttpResponseParser;->parse()Lorg/apache/http/HttpMessage;
move-result-object v1
move-object v0, v1
check-cast v0, Lorg/apache/http/HttpResponse;
new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;
invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V
const-string v3, "Content-Encoding"
invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v3
if-eqz v3, :cond_19
invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V
:cond_19
const-string v3, "Content-Type"
invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v3
if-eqz v3, :cond_24
invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V
:cond_24
const-string v3, "Content-Length"
invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v3
if-eqz v3, :cond_41
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V
new-instance v5, Lorg/apache/http/impl/io/ContentLengthInputStream;
iget-object v6, p0, Lcom/mapquest/android/maps/bw;->t:Lorg/apache/http/impl/io/SocketInputBuffer;
invoke-direct {v5, v6, v3, v4}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V
invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V
:cond_41
const-string v3, "Transfer-Encoding"
invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v1
if-eqz v1, :cond_63
invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string v3, "chunked"
invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-ltz v1, :cond_63
const/4 v1, 0x1
invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V
new-instance v1, Lorg/apache/http/impl/io/ChunkedInputStream;
iget-object v3, p0, Lcom/mapquest/android/maps/bw;->t:Lorg/apache/http/impl/io/SocketInputBuffer;
invoke-direct {v1, v3}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V
invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V
:cond_63
new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;
const-string v3, "Keep-Alive"
invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
move-result-object v3
invoke-direct {v1, v3}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V
:goto_6e
:cond_6e
invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_9d
invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_6e
const-string v5, "timeout"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_6e
:try_start_8a
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
mul-int/lit16 v3, v3, 0x3e8
iput v3, p0, Lcom/mapquest/android/maps/bw;->r:I
iget v3, p0, Lcom/mapquest/android/maps/bw;->r:I
if-le v3, v7, :cond_6e
const/16 v3, 0x1388
iput v3, p0, Lcom/mapquest/android/maps/bw;->r:I
:try_end_9a
.catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_9a} :catch_9b
goto :goto_6e
:catch_9b
move-exception v3
goto :goto_6e
:cond_9d
invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
iget-object v1, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_c7
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->writeTo(Ljava/io/OutputStream;)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:goto_c6
return-object v0
:cond_c7
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->v:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->writeTo(Ljava/io/OutputStream;)V
const/4 v0, 0x0
goto :goto_c6
.end method
.method static synthetic b(Lcom/mapquest/android/maps/bw;)I
.registers 2
iget v0, p0, Lcom/mapquest/android/maps/bw;->r:I
return v0
.end method
.method public final a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
if-eqz v0, :cond_a
:try_start_5
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
invoke-static {v0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_a
.catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_15
:cond_a
:goto_a
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->o:Ljava/net/Socket;
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->t:Lorg/apache/http/impl/io/SocketInputBuffer;
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->u:Lorg/apache/http/impl/io/SocketOutputBuffer;
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->f:Lorg/apache/http/impl/io/HttpRequestWriter;
iput-object v3, p0, Lcom/mapquest/android/maps/bw;->g:Lorg/apache/http/impl/io/HttpResponseParser;
return-void
:catch_15
move-exception v0
const-string v1, "mq.maps.downloader"
const-string v2, "Error closing socket"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_a
.end method
.method public final b()V
.registers 3
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/mapquest/android/maps/bw;->m:Z
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->l:Lcom/mapquest/android/maps/bu;
iput-boolean v1, v0, Lcom/mapquest/android/maps/bu;->a:Z
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->clear()V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
iput-boolean v1, v0, Lcom/mapquest/android/maps/bu;->a:Z
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
:cond_28
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->j:Landroid/os/Looper;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->j:Landroid/os/Looper;
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
:cond_31
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_a
return-void
.end method
.method public final run()V
.registers 4
:try_start_0
invoke-static {}, Landroid/os/Looper;->prepare()V
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->j:Landroid/os/Looper;
new-instance v0, Lcom/mapquest/android/maps/bx;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/bx;-><init>(Lcom/mapquest/android/maps/bw;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->size()I
move-result v0
if-lez v0, :cond_1e
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->i:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
:cond_1e
invoke-static {}, Landroid/os/Looper;->loop()V
:goto_21
:try_end_21
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_2a
iget-object v0, p0, Lcom/mapquest/android/maps/bw;->h:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->clear()V
invoke-virtual {p0}, Lcom/mapquest/android/maps/bw;->a()V
return-void
:catch_2a
move-exception v0
const-string v1, "mq.maps.downloader"
const-string v2, "Looper.loop exited "
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_21
.end method