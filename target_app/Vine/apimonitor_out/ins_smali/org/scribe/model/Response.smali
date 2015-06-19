.class public Lorg/scribe/model/Response;
.super Ljava/lang/Object;
.source "Response.java"
.field private static final EMPTY:Ljava/lang/String; = ""
.field private body:Ljava/lang/String;
.field private code:I
.field private headers:Ljava/util/Map;
.field private message:Ljava/lang/String;
.field private stream:Ljava/io/InputStream;
.method constructor <init>(Ljava/net/HttpURLConnection;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
invoke-static {p1}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v1
iput v1, p0, Lorg/scribe/model/Response;->code:I
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lorg/scribe/model/Response;->message:Ljava/lang/String;
invoke-direct {p0, p1}, Lorg/scribe/model/Response;->parseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;
move-result-object v1
iput-object v1, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;
invoke-virtual {p0}, Lorg/scribe/model/Response;->isSuccessful()Z
move-result v1
if-eqz v1, :cond_25
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
:goto_22
iput-object v1, p0, Lorg/scribe/model/Response;->stream:Ljava/io/InputStream;
return-void
:cond_25
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
:try_end_28
.catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_28} :catch_2a
move-result-object v1
goto :goto_22
:catch_2a
move-exception v0
new-instance v1, Lorg/scribe/exceptions/OAuthException;
const-string v2, "The IP address of a host could not be determined."
invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method private parseBodyContents()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lorg/scribe/model/Response;->getStream()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lorg/scribe/utils/StreamUtils;->getStreamContents(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;
iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;
return-object v0
.end method
.method private parseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;
.registers 7
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v3
invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_11
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
move-result-object v3
invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
:cond_30
return-object v0
.end method
.method public getBody()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lorg/scribe/model/Response;->body:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
invoke-direct {p0}, Lorg/scribe/model/Response;->parseBodyContents()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public getCode()I
.registers 2
iget v0, p0, Lorg/scribe/model/Response;->code:I
return v0
.end method
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getHeaders()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lorg/scribe/model/Response;->headers:Ljava/util/Map;
return-object v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/Response;->message:Ljava/lang/String;
return-object v0
.end method
.method public getStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lorg/scribe/model/Response;->stream:Ljava/io/InputStream;
return-object v0
.end method
.method public isSuccessful()Z
.registers 3
invoke-virtual {p0}, Lorg/scribe/model/Response;->getCode()I
move-result v0
const/16 v1, 0xc8
if-lt v0, v1, :cond_12
invoke-virtual {p0}, Lorg/scribe/model/Response;->getCode()I
move-result v0
const/16 v1, 0x190
if-ge v0, v1, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method