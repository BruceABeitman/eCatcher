.class final Lcom/c/a/e;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"
.field final synthetic a:Lcom/c/a/d;
.method private constructor <init>(Lcom/c/a/d;Ljava/io/OutputStream;)V
.registers 3
iput-object p1, p0, Lcom/c/a/e;->a:Lcom/c/a/d;
invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/c/a/d;Ljava/io/OutputStream;B)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/c/a/e;-><init>(Lcom/c/a/d;Ljava/io/OutputStream;)V
return-void
.end method
.method public final close()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;
invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z
goto :goto_5
.end method
.method public final flush()V
.registers 2
:try_start_0
iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;
invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z
goto :goto_5
.end method
.method public final write(I)V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;
invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z
goto :goto_5
.end method
.method public final write([BII)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/c/a/e;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v0, p0, Lcom/c/a/e;->a:Lcom/c/a/d;
invoke-static {v0}, Lcom/c/a/d;->d(Lcom/c/a/d;)Z
goto :goto_5
.end method