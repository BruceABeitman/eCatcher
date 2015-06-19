.class final Lcom/facebook/internal/af;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/internal/ae;
.method private constructor <init>(Lcom/facebook/internal/ae;)V
.registers 2
iput-object p1, p0, Lcom/facebook/internal/af;->a:Lcom/facebook/internal/ae;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/internal/ae;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/internal/af;-><init>(Lcom/facebook/internal/ae;)V
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
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v1, p0, Lcom/facebook/internal/af;->a:Lcom/facebook/internal/ae;
invoke-static {v1}, Lcom/facebook/internal/ae;->a(Lcom/facebook/internal/ae;)Lcom/facebook/ae;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_1b
return-void
.end method