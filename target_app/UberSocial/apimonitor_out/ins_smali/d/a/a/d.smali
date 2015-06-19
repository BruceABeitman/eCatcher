.class public Ld/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/d/c;
.field private a:Ljava/net/HttpURLConnection;
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
return-void
.end method
.method public a()Ljava/io/InputStream;
.registers 2
:try_start_0
iget-object v0, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
iget-object v0, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
goto :goto_6
.end method
.method public b()I
.registers 2
iget-object v0, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v0
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Ld/a/a/d;->a:Ljava/net/HttpURLConnection;
return-object v0
.end method