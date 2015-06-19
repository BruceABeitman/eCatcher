.class final Lcom/instagram/api/g/l;
.super Ljava/io/FilterInputStream;
.source "NetworkTraceCollector.java"
.field final synthetic a:Lcom/instagram/api/g/k;
.method constructor <init>(Lcom/instagram/api/g/k;Ljava/io/InputStream;)V
.registers 3
iput-object p1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;
invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V
return-void
.end method
.method public final close()V
.registers 4
invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
iget-object v0, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;
invoke-static {v0}, Lcom/instagram/api/g/k;->a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;
move-result-object v0
iget-object v1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;
iget-object v1, v1, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;
invoke-static {v1}, Lcom/instagram/api/g/j;->a(Lcom/instagram/api/g/j;)Lcom/instagram/common/u/b/a;
invoke-static {}, Lcom/instagram/common/u/b/a;->c()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/api/g/i;->e(J)V
iget-object v0, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;
iget-object v0, v0, Lcom/instagram/api/g/k;->a:Lcom/instagram/api/g/j;
invoke-static {v0}, Lcom/instagram/api/g/j;->b(Lcom/instagram/api/g/j;)Lcom/instagram/api/g/n;
move-result-object v0
iget-object v1, p0, Lcom/instagram/api/g/l;->a:Lcom/instagram/api/g/k;
invoke-static {v1}, Lcom/instagram/api/g/k;->a(Lcom/instagram/api/g/k;)Lcom/instagram/api/g/i;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/api/g/n;->a(Lcom/instagram/api/g/i;)V
return-void
.end method