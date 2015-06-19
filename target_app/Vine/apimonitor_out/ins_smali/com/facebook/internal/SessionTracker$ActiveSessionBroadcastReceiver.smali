.class  Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SessionTracker.java"
.field final synthetic this$0:Lcom/facebook/internal/SessionTracker;
.method private constructor <init>(Lcom/facebook/internal/SessionTracker;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/internal/SessionTracker;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/internal/SessionTracker;Lcom/facebook/internal/SessionTracker$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/internal/SessionTracker;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v1, p0, Lcom/facebook/internal/SessionTracker$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/internal/SessionTracker;
#getter for: Lcom/facebook/internal/SessionTracker;->callback:Lcom/facebook/Session$StatusCallback;
invoke-static {v1}, Lcom/facebook/internal/SessionTracker;->access$100(Lcom/facebook/internal/SessionTracker;)Lcom/facebook/Session$StatusCallback;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V
:cond_1b
return-void
.end method