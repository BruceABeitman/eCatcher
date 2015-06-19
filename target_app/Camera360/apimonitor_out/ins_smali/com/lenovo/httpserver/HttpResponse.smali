.class public Lcom/lenovo/httpserver/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"
.field private a:Ljava/lang/String;
.field private b:J
.field private final c:Ljava/util/Map;
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final e:Ljava/io/OutputStream;
.field private final f:Ljava/io/ByteArrayOutputStream;
.field private final g:Ljava/io/BufferedWriter;
.field private h:Ljava/lang/Runnable;
.field public mCloseSocket:Z
.field public mProtocol:Ljava/lang/String;
.field public mVersion:Ljava/lang/String;
.field public statusCode:I
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0xc8
iput v0, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
iput-boolean v2, p0, Lcom/lenovo/httpserver/HttpResponse;->mCloseSocket:Z
const-string/jumbo v0, "text/plain; charset=UTF-8"
iput-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->a:Ljava/lang/String;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object p1, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
iput-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->f:Ljava/io/ByteArrayOutputStream;
new-instance v0, Ljava/io/BufferedWriter;
new-instance v1, Ljava/io/OutputStreamWriter;
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->f:Ljava/io/ByteArrayOutputStream;
const-string/jumbo v3, "UTF-8"
invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
iput-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->g:Ljava/io/BufferedWriter;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v1, "Server"
const-string/jumbo v2, "Lenovo AnyShare"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private static a(I)Ljava/lang/String;
.registers 3
sget-object v0, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lorg/apache/http/impl/EnglishReasonPhraseCatalog;
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, p0, v1}, Lorg/apache/http/impl/EnglishReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private b()V
.registers 12
const/4 v10, 0x1
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v7, 0x0
invoke-virtual {v6, v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v6
if-nez v6, :cond_b
:goto_a
return-void
:cond_b
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
if-nez v6, :cond_15
new-instance v6, Ljava/io/IOException;
invoke-direct {v6}, Ljava/io/IOException;-><init>()V
throw v6
:cond_15
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->mProtocol:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v6
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v6, "1.1"
iget-object v7, p0, Lcom/lenovo/httpserver/HttpResponse;->mVersion:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_34
const-string/jumbo v6, "/1.1"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_34
const-string/jumbo v6, " "
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget v7, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v6, " "
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
iget v7, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
invoke-static {v7}, Lcom/lenovo/httpserver/HttpResponse;->a(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v6, "\r\n"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v7, "Content-Type"
iget-object v8, p0, Lcom/lenovo/httpserver/HttpResponse;->a:Ljava/lang/String;
invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-wide v6, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
const-wide/16 v8, 0x0
cmp-long v6, v6, v8
if-ltz v6, :cond_ae
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v7, "Content-Length"
iget-wide v8, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_76
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_80
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_bc
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, ": "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "\r\n"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_80
:cond_ae
iput-boolean v10, p0, Lcom/lenovo/httpserver/HttpResponse;->mCloseSocket:Z
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v7, "Connection"
const-string/jumbo v8, "Close"
invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_76
:cond_bc
const-string/jumbo v6, "\r\n"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v5, Ljava/io/OutputStreamWriter;
iget-object v6, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
const-string/jumbo v7, "UTF-8"
invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
invoke-virtual {v5}, Ljava/io/Writer;->flush()V
goto/16 :goto_a
.end method
.method  a()V
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v2
if-nez v2, :cond_20
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->g:Ljava/io/BufferedWriter;
invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->g:Ljava/io/BufferedWriter;
invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->f:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
array-length v2, v0
int-to-long v2, v2
iput-wide v2, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
invoke-direct {p0}, Lcom/lenovo/httpserver/HttpResponse;->b()V
:cond_20
if-eqz v0, :cond_3e
iget v2, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
const/16 v3, 0xc8
if-lt v2, v3, :cond_3e
iget v2, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
const/16 v3, 0xcc
if-eq v2, v3, :cond_3e
iget v2, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
const/16 v3, 0x130
if-eq v2, v3, :cond_3e
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_3f
:goto_3e
:cond_3e
return-void
:catch_3f
move-exception v1
const-string/jumbo v2, "HttpResponse"
invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3e
.end method
.method protected a(Lcom/lenovo/httpserver/HttpRequest;)V
.registers 7
const/4 v4, 0x1
iget-object v1, p1, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
if-nez v1, :cond_39
const-string/jumbo v1, "http"
:goto_8
iput-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->mProtocol:Ljava/lang/String;
iget-object v1, p1, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
iput-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->mVersion:Ljava/lang/String;
const-string/jumbo v1, "1.1"
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->mVersion:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
const-string/jumbo v1, "Connection"
invoke-virtual {p1, v1}, Lcom/lenovo/httpserver/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
const-string/jumbo v1, "Close"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v2, "Connection"
const-string/jumbo v3, "Close"
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-boolean v4, p0, Lcom/lenovo/httpserver/HttpResponse;->mCloseSocket:Z
:cond_38
:goto_38
return-void
:cond_39
iget-object v1, p1, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
goto :goto_8
:cond_3c
const-string/jumbo v1, "1.0"
iget-object v2, p0, Lcom/lenovo/httpserver/HttpResponse;->mVersion:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_38
const-string/jumbo v1, "Connection"
invoke-virtual {p1, v1}, Lcom/lenovo/httpserver/HttpRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_59
const-string/jumbo v1, "Close"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_67
:cond_59
iget-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v2, "Connection"
const-string/jumbo v3, "Close"
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-boolean v4, p0, Lcom/lenovo/httpserver/HttpResponse;->mCloseSocket:Z
goto :goto_38
:cond_67
const-string/jumbo v1, "Keep-Alive"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_38
iget-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
const-string/jumbo v2, "Connection"
const-string/jumbo v3, "Keep-Alive"
invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_38
.end method
.method public getBufferedWriter()Ljava/io/BufferedWriter;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->g:Ljava/io/BufferedWriter;
return-object v0
.end method
.method public getContentLength()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
return-wide v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->a:Ljava/lang/String;
return-object v0
.end method
.method public getHeaders()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
return-object v0
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 4
:try_start_0
invoke-direct {p0}, Lcom/lenovo/httpserver/HttpResponse;->b()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_6
iget-object v1, p0, Lcom/lenovo/httpserver/HttpResponse;->e:Ljava/io/OutputStream;
return-object v1
:catch_6
move-exception v0
const-string/jumbo v1, "HttpResponse"
invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3
.end method
.method public getPostCloseCallback()Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->h:Ljava/lang/Runnable;
return-object v0
.end method
.method public sendError(ILjava/lang/String;)V
.registers 4
iput p1, p0, Lcom/lenovo/httpserver/HttpResponse;->statusCode:I
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpResponse;->getBufferedWriter()Ljava/io/BufferedWriter;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
return-void
.end method
.method public setContentLength(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/httpserver/HttpResponse;->b:J
return-void
.end method
.method public setContentType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/httpserver/HttpResponse;->a:Ljava/lang/String;
return-void
.end method
.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/lenovo/httpserver/HttpResponse;->c:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public setPostCloseHandler(Ljava/lang/Runnable;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/httpserver/HttpResponse;->h:Ljava/lang/Runnable;
return-void
.end method