.class final Lcom/squareup/okhttp/internal/http/ae;
.super Ljava/net/HttpURLConnection;
.source "SourceFile"
.field private final a:Lcom/squareup/okhttp/internal/http/u;
.field private final b:Lcom/squareup/okhttp/internal/http/z;
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/z;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v1
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;
move-result-object v1
invoke-direct {p0, v1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;
move-result-object v1
iput-object v1, p0, Lcom/squareup/okhttp/internal/http/ae;->a:Lcom/squareup/okhttp/internal/http/u;
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ae;->connected:Z
invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->h()Lcom/squareup/okhttp/internal/http/aa;
move-result-object v1
if-nez v1, :cond_27
:goto_1c
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/ae;->doOutput:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->method:Ljava/lang/String;
return-void
:cond_27
const/4 v0, 0x0
goto :goto_1c
.end method
.method static synthetic a(Lcom/squareup/okhttp/internal/http/ae;)Lcom/squareup/okhttp/internal/http/z;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
return-object v0
.end method
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final connect()V
.registers 2
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final disconnect()V
.registers 2
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final getAllowUserInteraction()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getConnectTimeout()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getContent()Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->c()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->c()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final getDefaultUseCaches()Z
.registers 2
invoke-super {p0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z
move-result v0
return v0
.end method
.method public final getDoInput()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final getDoOutput()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->f()Lcom/squareup/okhttp/internal/http/v;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final getErrorStream()Ljava/io/InputStream;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public final getHeaderField(I)Ljava/lang/String;
.registers 5
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid header index: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
if-nez p1, :cond_20
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v0
:goto_1f
return-object v0
:cond_20
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v0
goto :goto_1f
.end method
.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_9
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method
.method public final getHeaderFieldKey(I)Ljava/lang/String;
.registers 5
if-gez p1, :cond_17
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid header index: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
if-nez p1, :cond_1b
const/4 v0, 0x0
:goto_1a
return-object v0
:cond_1b
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
add-int/lit8 v1, p1, -0x1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v0
goto :goto_1a
.end method
.method public final getHeaderFields()Ljava/util/Map;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;
move-result-object v0
iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/z;->b()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public final getIfModifiedSince()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public final getInputStream()Ljava/io/InputStream;
.registers 2
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->c()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final getInstanceFollowRedirects()Z
.registers 2
invoke-super {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z
move-result v0
return v0
.end method
.method public final getOutputStream()Ljava/io/OutputStream;
.registers 2
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final getReadTimeout()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getRequestMethod()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getRequestProperties()Ljava/util/Map;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "ResponseCache cannot access request headers"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->a:Lcom/squareup/okhttp/internal/http/u;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getResponseCode()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->c()I
move-result v0
return v0
.end method
.method public final getResponseMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ae;->b:Lcom/squareup/okhttp/internal/http/z;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getUseCaches()Z
.registers 2
invoke-super {p0}, Ljava/net/HttpURLConnection;->getUseCaches()Z
move-result v0
return v0
.end method
.method public final setAllowUserInteraction(Z)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setChunkedStreamingMode(I)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setConnectTimeout(I)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setDefaultUseCaches(Z)V
.registers 2
invoke-super {p0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V
return-void
.end method
.method public final setDoInput(Z)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setDoOutput(Z)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setFixedLengthStreamingMode(I)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setFixedLengthStreamingMode(J)V
.registers 4
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setIfModifiedSince(J)V
.registers 4
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setInstanceFollowRedirects(Z)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setReadTimeout(I)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setRequestMethod(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final setUseCaches(Z)V
.registers 3
invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;
move-result-object v0
throw v0
.end method
.method public final usingProxy()Z
.registers 2
const/4 v0, 0x0
return v0
.end method