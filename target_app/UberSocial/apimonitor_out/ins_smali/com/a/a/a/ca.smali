.class final Lcom/a/a/a/ca;
.super Lcom/a/a/a/ab;
.source "SourceFile"
.field private synthetic a:Ljava/io/InputStream;
.field private synthetic b:Ljava/io/OutputStream;
.field private synthetic c:Lcom/a/a/a/bz;
.method constructor <init>(Lcom/a/a/a/bz;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
.registers 6
iput-object p1, p0, Lcom/a/a/a/ca;->c:Lcom/a/a/a/bz;
iput-object p4, p0, Lcom/a/a/a/ca;->a:Ljava/io/InputStream;
iput-object p5, p0, Lcom/a/a/a/ca;->b:Ljava/io/OutputStream;
invoke-direct {p0, p2, p3}, Lcom/a/a/a/ab;-><init>(Ljava/io/Closeable;Z)V
return-void
.end method
.method public final synthetic b()Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/a/a/a/ca;->c:Lcom/a/a/a/bz;
invoke-static {v0}, Lcom/a/a/a/bz;->a(Lcom/a/a/a/bz;)I
move-result v0
new-array v0, v0, [B
:goto_8
iget-object v1, p0, Lcom/a/a/a/ca;->a:Ljava/io/InputStream;
invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_18
iget-object v2, p0, Lcom/a/a/a/ca;->b:Ljava/io/OutputStream;
const/4 v3, 0x0
invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
goto :goto_8
:cond_18
iget-object v0, p0, Lcom/a/a/a/ca;->c:Lcom/a/a/a/bz;
return-object v0
.end method