.class public Lcom/flurry/sdk/ev;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/flurry/sdk/eu;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/flurry/sdk/ev;->b(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ev;->a(Ljava/io/OutputStream;Ljava/lang/String;)V
return-void
.end method
.method public a(Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 6
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const-string v0, "utf-8"
invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
const/4 v1, 0x0
array-length v2, v0
invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
goto :goto_4
.end method
.method public b(Ljava/io/InputStream;)Ljava/lang/String;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
invoke-static {p1, v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method