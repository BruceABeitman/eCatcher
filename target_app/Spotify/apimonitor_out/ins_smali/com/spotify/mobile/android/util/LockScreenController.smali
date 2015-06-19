.class public Lcom/spotify/mobile/android/util/LockScreenController;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.field private a:Lcom/spotify/mobile/android/util/LockScreenController$State;
.field private b:Landroid/app/Activity;
.field private c:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/util/LockScreenController$State;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "com.spotify.mobile.android.REQUIRE_LOCK_SCREEN"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method private a(I)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
const-class v3, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "layout_id"
invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:cond_17
return-void
.end method
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onActivityDestroyed(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivityPaused(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivityResumed(Landroid/app/Activity;)V
.registers 4
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iput-object p1, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
sget-object v1, Lcom/spotify/mobile/android/util/LockScreenController$State;->b:Lcom/spotify/mobile/android/util/LockScreenController$State;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/LockScreenController$State;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;
if-nez v0, :cond_2
iget v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->c:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/LockScreenController;->a(I)V
goto :goto_2
:cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;
if-eqz v0, :cond_2
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
goto :goto_2
.end method
.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onActivityStarted(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onActivityStopped(Landroid/app/Activity;)V
.registers 2
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
const-string v0, "value"
invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
const-string v1, "sender_id"
invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v0, :cond_2e
const-string v0, "Lock screen required by %s"
new-array v2, v2, [Ljava/lang/Object;
aput-object v1, v2, v3
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/mobile/android/util/LockScreenController$State;->b:Lcom/spotify/mobile/android/util/LockScreenController$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
const-string v0, "layout_id"
const v1, 0x7f03001b
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->c:I
iget v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->c:I
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/LockScreenController;->a(I)V
:goto_2d
:cond_2d
return-void
:cond_2e
const-string v0, "Lock screen removed by %s"
new-array v2, v2, [Ljava/lang/Object;
aput-object v1, v2, v3
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/mobile/android/util/LockScreenController$State;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->a:Lcom/spotify/mobile/android/util/LockScreenController$State;
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/activity/LockScreenActivity;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/util/LockScreenController;->b:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
goto :goto_2d
.end method