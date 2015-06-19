.class final Lcom/facebook/internal/e;
.super Ljava/io/OutputStream;
.source "SourceFile"
.field final a:Ljava/io/OutputStream;
.field final b:Lcom/facebook/internal/i;
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/i;)V
.registers 3
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
iput-object p1, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
iput-object p2, p0, Lcom/facebook/internal/e;->b:Lcom/facebook/internal/i;
return-void
.end method
.method public final close()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
:try_end_5
.catchall {:try_start_0 .. :try_end_5} :catchall_b
iget-object v0, p0, Lcom/facebook/internal/e;->b:Lcom/facebook/internal/i;
invoke-interface {v0}, Lcom/facebook/internal/i;->a()V
return-void
:catchall_b
move-exception v0
iget-object v1, p0, Lcom/facebook/internal/e;->b:Lcom/facebook/internal/i;
invoke-interface {v1}, Lcom/facebook/internal/i;->a()V
throw v0
.end method
.method public final flush()V
.registers 2
iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
return-void
.end method
.method public final write(I)V
.registers 3
iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
return-void
.end method
.method public final write([B)V
.registers 3
iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
return-void
.end method
.method public final write([BII)V
.registers 5
iget-object v0, p0, Lcom/facebook/internal/e;->a:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
return-void
.end method