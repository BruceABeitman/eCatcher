.class public Lcom/facebook/katana/UserTask;
.super Ljava/lang/Thread;
.source "UserTask.java"
.field private final mHandler:Landroid/os/Handler;
.method public constructor <init>(Landroid/os/Handler;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/UserTask;->mHandler:Landroid/os/Handler;
return-void
.end method
.method protected doInBackground()V
.registers 1
return-void
.end method
.method public execute()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/UserTask;->onPreExecute()V
invoke-virtual {p0}, Lcom/facebook/katana/UserTask;->start()V
return-void
.end method
.method protected onPostExecute()V
.registers 1
return-void
.end method
.method protected onPreExecute()V
.registers 1
return-void
.end method
.method public run()V
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/UserTask;->doInBackground()V
iget-object v0, p0, Lcom/facebook/katana/UserTask;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/facebook/katana/UserTask$1;
invoke-direct {v1, p0}, Lcom/facebook/katana/UserTask$1;-><init>(Lcom/facebook/katana/UserTask;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method