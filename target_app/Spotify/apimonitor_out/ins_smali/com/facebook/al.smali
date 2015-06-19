.class final Lcom/facebook/al;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/ak;
.method private constructor <init>(Lcom/facebook/ak;)V
.registers 2
iput-object p1, p0, Lcom/facebook/al;->a:Lcom/facebook/ak;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/ak;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/al;-><init>(Lcom/facebook/ak;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/facebook/al;->a:Lcom/facebook/ak;
invoke-static {v1}, Lcom/facebook/ak;->a(Lcom/facebook/ak;)Lcom/facebook/ae;
move-result-object v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/facebook/al;->a:Lcom/facebook/ak;
invoke-static {v1}, Lcom/facebook/ak;->a(Lcom/facebook/ak;)Lcom/facebook/ae;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_23
:goto_23
return-void
:cond_24
const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_23
iget-object v1, p0, Lcom/facebook/al;->a:Lcom/facebook/ak;
invoke-static {v1}, Lcom/facebook/ak;->a(Lcom/facebook/ak;)Lcom/facebook/ae;
move-result-object v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/facebook/al;->a:Lcom/facebook/ak;
invoke-static {v1}, Lcom/facebook/ak;->a(Lcom/facebook/ak;)Lcom/facebook/ae;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/facebook/Session;->b(Lcom/facebook/ae;)V
goto :goto_23
.end method