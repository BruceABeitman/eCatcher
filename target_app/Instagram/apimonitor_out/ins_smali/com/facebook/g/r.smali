.class final Lcom/facebook/g/r;
.super Landroid/content/BroadcastReceiver;
.source "SessionTracker.java"
.field final synthetic a:Lcom/facebook/g/q;
.method private constructor <init>(Lcom/facebook/g/q;)V
.registers 2
iput-object p1, p0, Lcom/facebook/g/r;->a:Lcom/facebook/g/q;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/g/q;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/g/r;-><init>(Lcom/facebook/g/q;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v1, p0, Lcom/facebook/g/r;->a:Lcom/facebook/g/q;
invoke-static {v1}, Lcom/facebook/g/q;->a(Lcom/facebook/g/q;)Lcom/facebook/cc;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V
:cond_1b
return-void
.end method