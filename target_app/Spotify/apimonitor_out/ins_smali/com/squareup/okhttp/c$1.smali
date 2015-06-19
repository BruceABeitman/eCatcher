.class final Lcom/squareup/okhttp/c$1;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field final synthetic a:Lcom/squareup/okhttp/b;
.field final synthetic b:Lcom/squareup/okhttp/internal/e;
.field final synthetic c:Lcom/squareup/okhttp/c;
.method constructor <init>(Lcom/squareup/okhttp/c;Ljava/io/OutputStream;Lcom/squareup/okhttp/b;Lcom/squareup/okhttp/internal/e;)V
.registers 5
iput-object p1, p0, Lcom/squareup/okhttp/c$1;->c:Lcom/squareup/okhttp/c;
iput-object p3, p0, Lcom/squareup/okhttp/c$1;->a:Lcom/squareup/okhttp/b;
iput-object p4, p0, Lcom/squareup/okhttp/c$1;->b:Lcom/squareup/okhttp/internal/e;
invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
return-void
.end method
.method public final close()V
.registers 3
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->c:Lcom/squareup/okhttp/c;
iget-object v1, v0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/b;
monitor-enter v1
:try_start_5
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->c:Lcom/squareup/okhttp/c;
invoke-static {v0}, Lcom/squareup/okhttp/c;->a(Lcom/squareup/okhttp/c;)Z
move-result v0
if-eqz v0, :cond_f
monitor-exit v1
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->c:Lcom/squareup/okhttp/c;
invoke-static {v0}, Lcom/squareup/okhttp/c;->b(Lcom/squareup/okhttp/c;)Z
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->c:Lcom/squareup/okhttp/c;
iget-object v0, v0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/b;
invoke-static {v0}, Lcom/squareup/okhttp/b;->a(Lcom/squareup/okhttp/b;)I
monitor-exit v1
:try_end_1c
.catchall {:try_start_5 .. :try_end_1c} :catchall_25
invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->b:Lcom/squareup/okhttp/internal/e;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/e;->a()V
goto :goto_e
:catchall_25
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final write([BII)V
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/c$1;->out:Ljava/io/OutputStream;
invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
return-void
.end method