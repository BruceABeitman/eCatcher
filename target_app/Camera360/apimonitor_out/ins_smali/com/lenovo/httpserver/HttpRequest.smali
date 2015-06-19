.class public Lcom/lenovo/httpserver/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"
.field  a:[C
.field  b:I
.field  c:Ljava/lang/StringBuilder;
.field private final d:Ljava/io/InputStream;
.field private e:Ljava/lang/String;
.field public headers:Ljava/util/Map;
.field public host:Ljava/lang/String;
.field public method:Ljava/lang/String;
.field public protocol:Ljava/lang/String;
.field public remoteIp:Ljava/lang/String;
.field public remotePort:I
.field public startLine:Ljava/lang/String;
.field public version:Ljava/lang/String;
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x800
new-array v0, v0, [C
iput-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->a:[C
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;
iput-object p1, p0, Lcom/lenovo/httpserver/HttpRequest;->d:Ljava/io/InputStream;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->host:Ljava/lang/String;
iput-object p2, p0, Lcom/lenovo/httpserver/HttpRequest;->remoteIp:Ljava/lang/String;
iput p3, p0, Lcom/lenovo/httpserver/HttpRequest;->remotePort:I
return-void
.end method
.method private a(I)V
.registers 5
iget v0, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
const/16 v1, 0x800
if-ne v0, v1, :cond_10
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->c:Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/lenovo/httpserver/HttpRequest;->a:[C
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
iput v0, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
:cond_10
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->a:[C
iget v1, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
int-to-char v2, p1
aput-char v2, v0, v1
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
const/4 v4, 0x2
const-string/jumbo v2, " "
invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v2, v0
const/4 v3, 0x3
if-eq v2, v3, :cond_13
new-instance v2, Ljava/net/ProtocolException;
invoke-direct {v2}, Ljava/net/ProtocolException;-><init>()V
throw v2
:cond_13
aget-object v2, v0, v5
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->method:Ljava/lang/String;
const/4 v2, 0x1
aget-object v2, v0, v2
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
if-nez v2, :cond_75
const-string/jumbo v2, "/"
:goto_23
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
aget-object v2, v0, v4
const/16 v3, 0x2f
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gez v1, :cond_7f
aget-object v2, v0, v4
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
const-string/jumbo v2, "1.0"
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
:goto_38
const-string/jumbo v2, "HttpRequest"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->method:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_75
iget-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
const-string/jumbo v3, "UTF-8"
invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto :goto_23
:cond_7f
aget-object v2, v0, v4
invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
aget-object v2, v0, v4
add-int/lit8 v3, v1, 0x1
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
goto :goto_38
.end method
.method protected a()Z
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
:goto_4
:cond_4
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->b()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_34
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string/jumbo v7, "HttpRequest"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, ">  header: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v7
if-nez v7, :cond_41
:cond_34
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
if-eqz v7, :cond_8d
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
if-eqz v7, :cond_8d
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->method:Ljava/lang/String;
if-eqz v7, :cond_8d
:goto_40
return v5
:cond_41
if-ne v2, v5, :cond_47
invoke-virtual {p0, v1}, Lcom/lenovo/httpserver/HttpRequest;->a(Ljava/lang/String;)V
goto :goto_4
:cond_47
const/16 v7, 0x3a
invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_6d
if-eqz v3, :cond_4
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;
invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;
const-string/jumbo v8, "%s\n%s"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Object;
aput-object v4, v9, v6
aput-object v1, v9, v5
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4
:cond_6d
invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
add-int/lit8 v7, v0, 0x1
invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
iget-object v7, p0, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;
invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "Host"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4
iput-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->host:Ljava/lang/String;
goto/16 :goto_4
:cond_8d
move v5, v6
goto :goto_40
.end method
.method protected b()Ljava/lang/String;
.registers 8
const/16 v4, 0xd
const/4 v6, 0x0
const/4 v1, 0x0
const/4 v2, 0x0
iput v6, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iput-object v3, p0, Lcom/lenovo/httpserver/HttpRequest;->c:Ljava/lang/StringBuilder;
:goto_e
if-nez v2, :cond_33
iget-object v3, p0, Lcom/lenovo/httpserver/HttpRequest;->d:Ljava/io/InputStream;
invoke-virtual {v3}, Ljava/io/InputStream;->read()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_1b
const/4 v3, 0x0
:goto_1a
return-object v3
:cond_1b
if-eqz v1, :cond_2b
const/16 v3, 0xa
if-ne v0, v3, :cond_23
const/4 v2, 0x1
goto :goto_e
:cond_23
const/4 v1, 0x0
invoke-direct {p0, v4}, Lcom/lenovo/httpserver/HttpRequest;->a(I)V
invoke-direct {p0, v0}, Lcom/lenovo/httpserver/HttpRequest;->a(I)V
goto :goto_e
:cond_2b
if-ne v0, v4, :cond_2f
const/4 v1, 0x1
goto :goto_e
:cond_2f
invoke-direct {p0, v0}, Lcom/lenovo/httpserver/HttpRequest;->a(I)V
goto :goto_e
:cond_33
iget-object v3, p0, Lcom/lenovo/httpserver/HttpRequest;->c:Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->a:[C
iget v5, p0, Lcom/lenovo/httpserver/HttpRequest;->b:I
invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
new-instance v3, Ljava/lang/String;
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->c:Ljava/lang/StringBuilder;
invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V
goto :goto_1a
.end method
.method public close()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->d:Ljava/io/InputStream;
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public getContentString()Ljava/lang/String;
.registers 8
new-instance v3, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
iget-object v5, p0, Lcom/lenovo/httpserver/HttpRequest;->d:Ljava/io/InputStream;
const-string/jumbo v6, "UTF-8"
invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
const/16 v4, 0x400
new-array v0, v4, [C
const/4 v2, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:goto_19
invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I
move-result v2
const/4 v4, -0x1
if-eq v2, v4, :cond_25
const/4 v4, 0x0
invoke-virtual {v1, v0, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
goto :goto_19
:cond_25
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->headers:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public getInputStream()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->d:Ljava/io/InputStream;
return-object v0
.end method
.method public getOnlyPath()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x3f
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_11
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v1
:goto_10
return-object v1
:cond_11
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
goto :goto_10
.end method
.method public getParams()Ljava/util/Map;
.registers 12
const/4 v10, 0x0
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getQueryString()Ljava/lang/String;
move-result-object v5
if-nez v5, :cond_9
:cond_8
return-object v2
:cond_9
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v8
if-eqz v8, :cond_8
const-string/jumbo v8, "&"
invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
array-length v8, v4
if-eqz v8, :cond_8
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const/4 v1, 0x0
const/4 v0, 0x0
:goto_20
array-length v8, v4
if-ge v0, v8, :cond_8
aget-object v3, v4, v0
const-string/jumbo v8, "="
invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
array-length v8, v7
const/4 v9, 0x2
if-eq v8, v9, :cond_56
if-eqz v1, :cond_53
invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const-string/jumbo v9, "&"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_53
:cond_53
add-int/lit8 v0, v0, 0x1
goto :goto_20
:cond_56
aget-object v8, v7, v10
const/4 v9, 0x1
aget-object v9, v7, v9
invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
aget-object v1, v7, v10
goto :goto_53
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
if-nez v0, :cond_9
const-string/jumbo v0, "/"
iput-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
:cond_9
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
return-object v0
.end method
.method public getProtocol()Ljava/lang/String;
.registers 3
const-string/jumbo v0, "1.1"
iget-object v1, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/httpserver/HttpRequest;->version:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_27
return-object v0
:cond_28
iget-object v0, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
goto :goto_27
.end method
.method public getQueryString()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x3f
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_17
invoke-virtual {p0}, Lcom/lenovo/httpserver/HttpRequest;->getPath()Ljava/lang/String;
move-result-object v1
add-int/lit8 v2, v0, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
:goto_16
return-object v1
:cond_17
const/4 v1, 0x0
goto :goto_16
.end method
.method public getUrl()Ljava/net/URL;
.registers 7
const/4 v1, 0x0
:try_start_1
const-string/jumbo v3, "HttpRequest"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "protocol="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "; host="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/lenovo/httpserver/HttpRequest;->host:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "; path="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/net/URL;
iget-object v3, p0, Lcom/lenovo/httpserver/HttpRequest;->protocol:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/lenovo/httpserver/HttpRequest;->host:Ljava/lang/String;
iget-object v5, p0, Lcom/lenovo/httpserver/HttpRequest;->e:Ljava/lang/String;
invoke-direct {v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_46
.catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_46} :catch_48
move-object v1, v2
:goto_47
return-object v1
:catch_48
move-exception v0
const-string/jumbo v3, "HttpRequest"
invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_47
.end method