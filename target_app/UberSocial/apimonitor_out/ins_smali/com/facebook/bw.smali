.class public Lcom/facebook/bw;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "activity cannot be null"
.field private final b:Landroid/app/Activity;
.field private final c:Lcom/facebook/bf;
.field private final d:Landroid/content/BroadcastReceiver;
.field private final e:Landroid/support/v4/content/LocalBroadcastManager;
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/bf;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "activity cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/facebook/bw;->b:Landroid/app/Activity;
iput-object p2, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
new-instance v0, Lcom/facebook/bx;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/bx;-><init>(Lcom/facebook/bw;Lcom/facebook/bw$1;)V
iput-object v0, p0, Lcom/facebook/bw;->d:Landroid/content/BroadcastReceiver;
invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iput-object v0, p0, Lcom/facebook/bw;->e:Landroid/support/v4/content/LocalBroadcastManager;
return-void
.end method
.method static synthetic a(Lcom/facebook/bw;)Lcom/facebook/bf;
.registers 2
iget-object v0, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
return-object v0
.end method
.method public a()V
.registers 4
invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v1, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bf;)V
:cond_f
sget-object v1, Lcom/facebook/bk;->b:Lcom/facebook/bk;
invoke-virtual {v0}, Lcom/facebook/aw;->d()Lcom/facebook/bk;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/facebook/bk;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/aw;->a(Lcom/facebook/bc;)V
:cond_1f
return-void
.end method
.method public a(IILandroid/content/Intent;)V
.registers 6
invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/facebook/bw;->b:Landroid/app/Activity;
invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/aw;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z
:cond_b
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 5
invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;
move-result-object v0
if-nez v0, :cond_1d
if-eqz p1, :cond_11
iget-object v0, p0, Lcom/facebook/bw;->b:Landroid/app/Activity;
const/4 v1, 0x0
iget-object v2, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
invoke-static {v0, v1, v2, p1}, Lcom/facebook/aw;->a(Landroid/content/Context;Lcom/facebook/bv;Lcom/facebook/bf;Landroid/os/Bundle;)Lcom/facebook/aw;
move-result-object v0
:cond_11
if-nez v0, :cond_1a
new-instance v0, Lcom/facebook/aw;
iget-object v1, p0, Lcom/facebook/bw;->b:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/facebook/aw;-><init>(Landroid/content/Context;)V
:cond_1a
invoke-static {v0}, Lcom/facebook/aw;->a(Lcom/facebook/aw;)V
:cond_1d
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/bw;->e:Landroid/support/v4/content/LocalBroadcastManager;
iget-object v2, p0, Lcom/facebook/bw;->d:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
if-eqz v0, :cond_f
invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;
move-result-object v0
if-eqz v0, :cond_f
iget-object v1, p0, Lcom/facebook/bw;->c:Lcom/facebook/bf;
invoke-virtual {v0, v1}, Lcom/facebook/aw;->b(Lcom/facebook/bf;)V
:cond_f
return-void
.end method
.method public b(Landroid/os/Bundle;)V
.registers 3
invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;
move-result-object v0
invoke-static {v0, p1}, Lcom/facebook/aw;->a(Lcom/facebook/aw;Landroid/os/Bundle;)V
return-void
.end method
.method public c()V
.registers 3
iget-object v0, p0, Lcom/facebook/bw;->e:Landroid/support/v4/content/LocalBroadcastManager;
iget-object v1, p0, Lcom/facebook/bw;->d:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method