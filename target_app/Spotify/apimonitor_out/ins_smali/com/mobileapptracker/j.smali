.class final Lcom/mobileapptracker/j;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:I
.field final synthetic c:Lcom/mobileapptracker/g;
.method constructor <init>(Lcom/mobileapptracker/g;Ljava/lang/String;I)V
.registers 4
iput-object p1, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iput-object p2, p0, Lcom/mobileapptracker/j;->a:Ljava/lang/String;
iput p3, p0, Lcom/mobileapptracker/j;->b:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
iget-object v1, p0, Lcom/mobileapptracker/j;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->f(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
iget v1, p0, Lcom/mobileapptracker/j;->b:I
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->g(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iput-boolean v2, v0, Lcom/mobileapptracker/g;->e:Z
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-boolean v0, v0, Lcom/mobileapptracker/g;->f:Z
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-boolean v0, v0, Lcom/mobileapptracker/g;->h:Z
if-nez v0, :cond_39
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-object v1, v0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
monitor-enter v1
:try_start_2c
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
iget-object v0, v0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
iget-object v0, p0, Lcom/mobileapptracker/j;->c:Lcom/mobileapptracker/g;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/mobileapptracker/g;->h:Z
monitor-exit v1
:try_end_39
.catchall {:try_start_2c .. :try_end_39} :catchall_3a
:cond_39
return-void
:catchall_3a
move-exception v0
monitor-exit v1
throw v0
.end method