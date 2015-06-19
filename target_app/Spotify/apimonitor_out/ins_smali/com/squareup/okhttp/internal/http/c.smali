.class abstract Lcom/squareup/okhttp/internal/http/c;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"
.field private final a:Ljava/net/HttpURLConnection;
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
.registers 3
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v0
invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V
iput-object p1, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
return-void
.end method
.method protected abstract a()Lcom/squareup/okhttp/i;
.end method
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public connect()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/c;->connected:Z
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-void
.end method
.method public getAllowUserInteraction()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z
move-result v0
return v0
.end method
.method public getCipherSuite()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/i;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/squareup/okhttp/i;->a()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getConnectTimeout()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I
move-result v0
return v0
.end method
.method public getContent()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContentEncoding()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getContentLength()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
move-result v0
return v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getDate()J
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J
move-result-wide v0
return-wide v0
.end method
.method public getDefaultUseCaches()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z
move-result v0
return v0
.end method
.method public getDoInput()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z
move-result v0
return v0
.end method
.method public getDoOutput()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z
move-result v0
return v0
.end method
.method public getErrorStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getExpiration()J
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J
move-result-wide v0
return-wide v0
.end method
.method public getHeaderField(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeaderFieldDate(Ljava/lang/String;J)J
.registers 6
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getHeaderFieldInt(Ljava/lang/String;I)I
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public getHeaderFieldKey(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getHeaderFields()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public getIfModifiedSince()J
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J
move-result-wide v0
return-wide v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getInstanceFollowRedirects()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z
move-result v0
return v0
.end method
.method public getLastModified()J
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J
move-result-wide v0
return-wide v0
.end method
.method public getLocalCertificates()[Ljava/security/cert/Certificate;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/i;
move-result-object v1
if-nez v1, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
invoke-virtual {v1}, Lcom/squareup/okhttp/i;->d()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_7
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/security/cert/Certificate;
invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/security/cert/Certificate;
goto :goto_7
.end method
.method public getLocalPrincipal()Ljava/security/Principal;
.registers 2
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/i;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/squareup/okhttp/i;->e()Ljava/security/Principal;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getOutputStream()Ljava/io/OutputStream;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v0
return-object v0
.end method
.method public getPeerPrincipal()Ljava/security/Principal;
.registers 2
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/i;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/squareup/okhttp/i;->c()Ljava/security/Principal;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getPermission()Ljava/security/Permission;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;
move-result-object v0
return-object v0
.end method
.method public getReadTimeout()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I
move-result v0
return v0
.end method
.method public getRequestMethod()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getRequestProperties()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getResponseCode()I
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
return v0
.end method
.method public getResponseMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getServerCertificates()[Ljava/security/cert/Certificate;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/c;->a()Lcom/squareup/okhttp/i;
move-result-object v1
if-nez v1, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
invoke-virtual {v1}, Lcom/squareup/okhttp/i;->b()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_7
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/security/cert/Certificate;
invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/security/cert/Certificate;
goto :goto_7
.end method
.method public getURL()Ljava/net/URL;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v0
return-object v0
.end method
.method public getUseCaches()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z
move-result v0
return v0
.end method
.method public setAllowUserInteraction(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V
return-void
.end method
.method public setChunkedStreamingMode(I)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
return-void
.end method
.method public setConnectTimeout(I)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
return-void
.end method
.method public setDefaultUseCaches(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V
return-void
.end method
.method public setDoInput(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
return-void
.end method
.method public setDoOutput(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
return-void
.end method
.method public setFixedLengthStreamingMode(I)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
return-void
.end method
.method public setIfModifiedSince(J)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V
return-void
.end method
.method public setInstanceFollowRedirects(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
return-void
.end method
.method public setReadTimeout(I)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
return-void
.end method
.method public setRequestMethod(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
return-void
.end method
.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setUseCaches(Z)V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public usingProxy()Z
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z
move-result v0
return v0
.end method