.class public final Lcom/igexin/a/a/b/a/a/g;
.super Lcom/igexin/a/a/b/f;
.field  e:Lcom/igexin/a/a/b/a/a/e;
.field  f:Ljava/nio/ByteBuffer;
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/igexin/a/a/b/f;-><init>(Ljava/lang/String;Lcom/igexin/a/a/b/c;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/a/a/b/a/a/g;->D:Z
return-void
.end method
.method public final a_()I
.registers 2
const/16 v0, -0x7fe
return v0
.end method
.method public b()V
.registers 4
invoke-super {p0}, Lcom/igexin/a/a/b/f;->b()V
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
iget-object v0, v0, Lcom/igexin/a/a/b/a/a/e;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/e;->s()Z
move-result v0
if-nez v0, :cond_28
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;Z)Z
move-result v0
if-nez v0, :cond_28
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "NioSocketTask is invalid"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
iget-boolean v0, v0, Lcom/igexin/a/a/b/a/a/e;->i:Z
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
invoke-virtual {v0}, Lcom/igexin/a/a/b/a/a/e;->i()V
:cond_33
return-void
.end method
.method public final d()V
.registers 3
invoke-super {p0}, Lcom/igexin/a/a/b/f;->d()V
iget-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/igexin/a/a/b/a/a/g;->b:Lcom/igexin/a/a/b/c;
invoke-static {v0, v1}, Lcom/igexin/a/a/b/a/a/e;->a(Ljava/lang/String;Lcom/igexin/a/a/b/c;)Lcom/igexin/a/a/b/a/a/e;
move-result-object v0
iput-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
return-void
.end method
.method protected e()V
.registers 1
return-void
.end method
.method public f()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/igexin/a/a/b/a/a/g;->e:Lcom/igexin/a/a/b/a/a/e;
invoke-super {p0}, Lcom/igexin/a/a/b/f;->f()V
return-void
.end method