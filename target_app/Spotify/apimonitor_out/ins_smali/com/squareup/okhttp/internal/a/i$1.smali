.class final Lcom/squareup/okhttp/internal/a/i$1;
.super Ljava/io/OutputStream;
.source "SourceFile"
.field final synthetic a:Lcom/squareup/okhttp/internal/a/i;
.method constructor <init>(Lcom/squareup/okhttp/internal/a/i;)V
.registers 2
iput-object p1, p0, Lcom/squareup/okhttp/internal/a/i$1;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
return-void
.end method
.method public final close()V
.registers 1
return-void
.end method
.method public final flush()V
.registers 1
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".outputStream()"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final write(I)V
.registers 4
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i$1;->a:Lcom/squareup/okhttp/internal/a/i;
int-to-byte v1, p1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/a/i;->b(I)Lcom/squareup/okhttp/internal/a/i;
return-void
.end method
.method public final write([BII)V
.registers 5
iget-object v0, p0, Lcom/squareup/okhttp/internal/a/i$1;->a:Lcom/squareup/okhttp/internal/a/i;
invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/i;->c([BII)Lcom/squareup/okhttp/internal/a/i;
return-void
.end method