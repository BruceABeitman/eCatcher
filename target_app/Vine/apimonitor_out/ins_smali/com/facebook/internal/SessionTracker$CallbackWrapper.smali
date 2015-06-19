.class  Lcom/facebook/internal/SessionTracker$CallbackWrapper;
.super Ljava/lang/Object;
.source "SessionTracker.java"
.implements Lcom/facebook/Session$StatusCallback;
.field final synthetic this$0:Lcom/facebook/internal/SessionTracker;
.field private final wrapped:Lcom/facebook/Session$StatusCallback;
.method public constructor <init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/Session$StatusCallback;)V
.registers 3
iput-object p1, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;
return-void
.end method
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.registers 6
iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;
invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->isTracking()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->wrapped:Lcom/facebook/Session$StatusCallback;
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
:cond_11
iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;
#getter for: Lcom/facebook/internal/SessionTracker;->session:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/internal/SessionTracker;->access$200(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session;
move-result-object v0
if-ne p1, v0, :cond_25
invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/facebook/internal/SessionTracker$CallbackWrapper;->this$0:Lcom/facebook/internal/SessionTracker;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V
:cond_25
return-void
.end method