.class  Lcom/facebook/katana/UserTask$1;
.super Ljava/lang/Object;
.source "UserTask.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/katana/UserTask;
.method constructor <init>(Lcom/facebook/katana/UserTask;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UserTask$1;->this$0:Lcom/facebook/katana/UserTask;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/UserTask$1;->this$0:Lcom/facebook/katana/UserTask;
invoke-virtual {v0}, Lcom/facebook/katana/UserTask;->onPostExecute()V
return-void
.end method