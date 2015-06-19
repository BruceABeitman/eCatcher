.class  Lcom/lenovo/anyshare/sdk/internal/cr$1;
.super Ljava/lang/Object;
.source "TaskScheduler.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/cq;
.field final synthetic b:Lcom/lenovo/anyshare/sdk/internal/cr;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/cr;Lcom/lenovo/anyshare/sdk/internal/cq;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/cr;->d(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
:try_end_8
.catchall {:try_start_1 .. :try_end_8} :catchall_29
move-result v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iget-object v1, v1, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-interface {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/co;->c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
iget v2, v1, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/cr;->b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
:cond_23
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cr;->d()V
return-void
:catchall_29
move-exception v1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iget-object v2, v2, Lcom/lenovo/anyshare/sdk/internal/cr;->b:Lcom/lenovo/anyshare/sdk/internal/co;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-interface {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/co;->c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
if-eqz v0, :cond_44
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
iget v3, v2, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
add-int/lit8 v3, v3, 0x1
iput v3, v2, Lcom/lenovo/anyshare/sdk/internal/cq;->h:I
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->a:Lcom/lenovo/anyshare/sdk/internal/cq;
invoke-virtual {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cr;->b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
:cond_44
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cr$1;->b:Lcom/lenovo/anyshare/sdk/internal/cr;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/cr;->d()V
throw v1
.end method