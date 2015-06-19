.class  Lcom/facebook/Session$3;
.super Ljava/lang/Object;
.source "Session.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/facebook/Session;
.field final synthetic val$exception:Ljava/lang/Exception;
.field final synthetic val$newState:Lcom/facebook/SessionState;
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 4
iput-object p1, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;
iput-object p2, p0, Lcom/facebook/Session$3;->val$newState:Lcom/facebook/SessionState;
iput-object p3, p0, Lcom/facebook/Session$3;->val$exception:Ljava/lang/Exception;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v3, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;
#getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
invoke-static {v3}, Lcom/facebook/Session;->access$300(Lcom/facebook/Session;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/Session$StatusCallback;
new-instance v1, Lcom/facebook/Session$3$1;
invoke-direct {v1, p0, v0}, Lcom/facebook/Session$3$1;-><init>(Lcom/facebook/Session$3;Lcom/facebook/Session$StatusCallback;)V
iget-object v3, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;
#getter for: Lcom/facebook/Session;->handler:Landroid/os/Handler;
invoke-static {v3}, Lcom/facebook/Session;->access$400(Lcom/facebook/Session;)Landroid/os/Handler;
move-result-object v3
#calls: Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
invoke-static {v3, v1}, Lcom/facebook/Session;->access$500(Landroid/os/Handler;Ljava/lang/Runnable;)V
goto :goto_a
:cond_25
return-void
.end method