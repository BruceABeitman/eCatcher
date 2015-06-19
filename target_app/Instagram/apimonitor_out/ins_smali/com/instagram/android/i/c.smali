.class final Lcom/instagram/android/i/c;
.super Ljava/lang/Object;
.source "RealtimeConnectionDebugNotification.java"
.implements Lcom/instagram/common/c/a;
.field final synthetic a:Lcom/instagram/android/i/a;
.method private constructor <init>(Lcom/instagram/android/i/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/i/c;->a:Lcom/instagram/android/i/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/i/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/i/c;-><init>(Lcom/instagram/android/i/a;)V
return-void
.end method
.method public final a(Landroid/content/Intent;)V
.registers 5
const-string v0, "PreferenceChangeBroadcasts.REALTIME_CONNECTION_NOTIFICATION_PREF_VALUE"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/android/i/c;->a:Lcom/instagram/android/i/a;
invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/i/f;->e()Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/i/a;->a(Lcom/instagram/android/i/a;Lcom/instagram/realtimeclient/RealtimeEventHandler$Status;)V
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/instagram/android/i/c;->a:Lcom/instagram/android/i/a;
invoke-static {v0}, Lcom/instagram/android/i/a;->a(Lcom/instagram/android/i/a;)Landroid/support/v4/app/bx;
move-result-object v0
invoke-static {}, Lcom/instagram/android/i/a;->a()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x2a
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V
goto :goto_16
.end method