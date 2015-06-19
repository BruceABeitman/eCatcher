.class final Lcom/squareup/okhttp/m$1;
.super Ljava/net/URLStreamHandler;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/squareup/okhttp/m;
.method constructor <init>(Lcom/squareup/okhttp/m;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/squareup/okhttp/m$1;->b:Lcom/squareup/okhttp/m;
iput-object p2, p0, Lcom/squareup/okhttp/m$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V
return-void
.end method
.method protected final getDefaultPort()I
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/m$1;->a:Ljava/lang/String;
const-string v1, "http"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
const/16 v0, 0x50
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/squareup/okhttp/m$1;->a:Ljava/lang/String;
const-string v1, "https"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
const/16 v0, 0x1bb
goto :goto_c
:cond_1a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
.end method
.method protected final openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/m$1;->b:Lcom/squareup/okhttp/m;
invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method protected final openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/m$1;->b:Lcom/squareup/okhttp/m;
invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/m;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method