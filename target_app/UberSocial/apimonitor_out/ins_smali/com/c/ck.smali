.class  Lcom/c/ck;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final a:Z
.field final b:Lcom/c/cg;
.method constructor <init>(Lcom/c/cg;Z)V
.registers 3
iput-object p1, p0, Lcom/c/ck;->b:Lcom/c/cg;
iput-boolean p2, p0, Lcom/c/ck;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/c/ck;->b:Lcom/c/cg;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/c/ck;->b:Lcom/c/cg;
invoke-static {v0}, Lcom/c/cg;->a(Lcom/c/cg;)I
iget-object v0, p0, Lcom/c/ck;->b:Lcom/c/cg;
iget-boolean v2, p0, Lcom/c/ck;->a:Z
invoke-static {v0, v2}, Lcom/c/cg;->a(Lcom/c/cg;Z)V
monitor-exit v1
return-void
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_3 .. :try_end_13} :catchall_11
throw v0
.end method