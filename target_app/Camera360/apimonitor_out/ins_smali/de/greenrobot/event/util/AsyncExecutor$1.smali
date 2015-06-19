.class  Lde/greenrobot/event/util/AsyncExecutor$1;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lde/greenrobot/event/util/AsyncExecutor;
.field private final synthetic val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;
.method constructor <init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
.registers 3
iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;
iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
:try_start_0
iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;
invoke-interface {v3}, Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;->run()V
:goto_5
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
:try_start_7
iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;
#getter for: Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$1(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
move-result-object v3
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v0, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_16
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_30
move-result-object v2
instance-of v3, v0, Lde/greenrobot/event/util/HasExecutionScope;
if-eqz v3, :cond_26
check-cast v0, Lde/greenrobot/event/util/HasExecutionScope;
iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;
#getter for: Lde/greenrobot/event/util/AsyncExecutor;->scope:Ljava/lang/Object;
invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$2(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v3}, Lde/greenrobot/event/util/HasExecutionScope;->setExecutionScope(Ljava/lang/Object;)V
:cond_26
iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;
#getter for: Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;
invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$3(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;
move-result-object v3
invoke-virtual {v3, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
goto :goto_5
:catch_30
move-exception v1
sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Original exception:"
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v3, Ljava/lang/RuntimeException;
const-string/jumbo v4, "Could not create failure event"
invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
.end method