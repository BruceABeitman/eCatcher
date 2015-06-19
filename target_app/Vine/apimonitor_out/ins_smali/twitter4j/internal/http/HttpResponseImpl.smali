.class public Ltwitter4j/internal/http/HttpResponseImpl;
.super Ltwitter4j/internal/http/HttpResponse;
.source "HttpResponseImpl.java"
.field private con:Ljava/net/HttpURLConnection;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ltwitter4j/internal/http/HttpResponse;-><init>()V
iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->responseAsString:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Ljava/net/HttpURLConnection;Ltwitter4j/internal/http/HttpClientConfiguration;)V
.registers 5
invoke-direct {p0, p2}, Ltwitter4j/internal/http/HttpResponse;-><init>(Ltwitter4j/internal/http/HttpClientConfiguration;)V
iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
iput v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->statusCode:I
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;
if-nez v0, :cond_19
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;
:cond_19
iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;
if-eqz v0, :cond_32
const-string v0, "gzip"
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
new-instance v0, Ltwitter4j/internal/http/StreamingGZIPInputStream;
iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;
invoke-direct {v0, v1}, Ltwitter4j/internal/http/StreamingGZIPInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->is:Ljava/io/InputStream;
:cond_32
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
return-void
.end method
.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;
invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getResponseHeaderFields()Ljava/util/Map;
.registers 2
iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseImpl;->con:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v0
return-object v0
.end method