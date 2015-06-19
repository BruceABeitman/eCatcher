.class public final Lcom/facebook/ak;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/app/Activity;
.field private final b:Lcom/facebook/ae;
.field private final c:Landroid/content/BroadcastReceiver;
.field private final d:Landroid/support/v4/content/n;
.field private e:Lcom/facebook/widget/FacebookDialog$PendingCall;
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/ae;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "activity cannot be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lcom/facebook/ak;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
new-instance v0, Lcom/facebook/al;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/facebook/al;-><init>(Lcom/facebook/ak;B)V
iput-object v0, p0, Lcom/facebook/ak;->c:Landroid/content/BroadcastReceiver;
invoke-static {p1}, Landroid/support/v4/content/n;->a(Landroid/content/Context;)Landroid/support/v4/content/n;
move-result-object v0
iput-object v0, p0, Lcom/facebook/ak;->d:Landroid/support/v4/content/n;
invoke-static {p1}, Lcom/facebook/ah;->c(Landroid/content/Context;)V
return-void
.end method
.method static synthetic a(Lcom/facebook/ak;)Lcom/facebook/ae;
.registers 2
iget-object v0, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
return-object v0
.end method
.method private a(ILandroid/content/Intent;)Z
.registers 7
const/4 v0, 0x1
const/4 v2, 0x0
iget-object v1, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
if-eqz v1, :cond_e
iget-object v1, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()I
move-result v1
if-eq v1, p1, :cond_10
:cond_e
const/4 v0, 0x0
:goto_f
return v0
:cond_10
if-nez p2, :cond_15
iput-object v2, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
goto :goto_f
:cond_15
const-string v1, "com.facebook.platform.protocol.CALL_ID"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3a
:try_start_1d
invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
:try_end_20
.catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_20} :catch_39
move-result-object v1
:goto_21
if-eqz v1, :cond_3c
iget-object v3, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a()Ljava/util/UUID;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/facebook/ak;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
invoke-static {v1, p1}, Lcom/facebook/widget/FacebookDialog;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;I)Z
:goto_36
iput-object v2, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
goto :goto_f
:catch_39
move-exception v1
:cond_3a
move-object v1, v2
goto :goto_21
:cond_3c
iput-object v2, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
goto :goto_36
.end method
.method public final a()V
.registers 4
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v1, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/ae;)V
:cond_f
sget-object v1, Lcom/facebook/SessionState;->b:Lcom/facebook/SessionState;
invoke-virtual {v0}, Lcom/facebook/Session;->c()Lcom/facebook/SessionState;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Lcom/facebook/Session$OpenRequest;)V
:cond_1f
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/ak;->d:Landroid/support/v4/content/n;
iget-object v2, p0, Lcom/facebook/ak;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_b
iget-object v1, p0, Lcom/facebook/ak;->a:Landroid/app/Activity;
invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z
:cond_b
invoke-direct {p0, p1, p3}, Lcom/facebook/ak;->a(ILandroid/content/Intent;)Z
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-nez v0, :cond_1c
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/facebook/ak;->a:Landroid/app/Activity;
iget-object v1, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
invoke-static {v0, v1, p1}, Lcom/facebook/Session;->a(Landroid/content/Context;Lcom/facebook/ae;Landroid/os/Bundle;)Lcom/facebook/Session;
move-result-object v0
:cond_10
if-nez v0, :cond_19
new-instance v0, Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/ak;->a:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V
:cond_19
invoke-static {v0}, Lcom/facebook/Session;->a(Lcom/facebook/Session;)V
:cond_1c
if-eqz p1, :cond_28
const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/facebook/widget/FacebookDialog$PendingCall;
iput-object v0, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
:cond_28
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/facebook/ak;->d:Landroid/support/v4/content/n;
iget-object v1, p0, Lcom/facebook/ak;->c:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/n;->a(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
if-eqz v0, :cond_16
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
if-eqz v0, :cond_16
iget-object v1, p0, Lcom/facebook/ak;->b:Lcom/facebook/ae;
invoke-virtual {v0, v1}, Lcom/facebook/Session;->b(Lcom/facebook/ae;)V
:cond_16
return-void
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 4
invoke-static {}, Lcom/facebook/Session;->h()Lcom/facebook/Session;
move-result-object v0
invoke-static {v0, p1}, Lcom/facebook/Session;->a(Lcom/facebook/Session;Landroid/os/Bundle;)V
const-string v0, "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey"
iget-object v1, p0, Lcom/facebook/ak;->e:Lcom/facebook/widget/FacebookDialog$PendingCall;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method