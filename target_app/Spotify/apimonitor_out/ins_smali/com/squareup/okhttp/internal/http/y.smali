.class public final Lcom/squareup/okhttp/internal/http/y;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(I)Ljava/lang/String;
.registers 2
const/4 v0, 0x1
if-ne p0, v0, :cond_6
const-string v0, "HTTP/1.1"
:goto_5
return-object v0
:cond_6
const-string v0, "HTTP/1.0"
goto :goto_5
.end method
.method public static a(Ljava/net/URL;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_9
const-string v0, "/"
:goto_8
:cond_8
return-object v0
:cond_9
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_8
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8
.end method