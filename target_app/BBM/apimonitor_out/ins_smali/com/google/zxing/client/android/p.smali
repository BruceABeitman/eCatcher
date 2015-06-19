.class final Lcom/google/zxing/client/android/p;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"
.field final synthetic a:Lcom/google/zxing/client/android/n;
.method private constructor <init>(Lcom/google/zxing/client/android/n;)V
.registers 2
iput-object p1, p0, Lcom/google/zxing/client/android/p;->a:Lcom/google/zxing/client/android/n;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/zxing/client/android/n;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/zxing/client/android/p;-><init>(Lcom/google/zxing/client/android/n;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "android.intent.action.BATTERY_CHANGED"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
const-string v0, "plugged"
const/4 v1, -0x1
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-gtz v0, :cond_1e
const/4 v0, 0x1
:goto_16
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/zxing/client/android/p;->a:Lcom/google/zxing/client/android/n;
invoke-virtual {v0}, Lcom/google/zxing/client/android/n;->a()V
:goto_1d
:cond_1d
return-void
:cond_1e
const/4 v0, 0x0
goto :goto_16
:cond_20
iget-object v0, p0, Lcom/google/zxing/client/android/p;->a:Lcom/google/zxing/client/android/n;
invoke-static {v0}, Lcom/google/zxing/client/android/n;->a(Lcom/google/zxing/client/android/n;)V
goto :goto_1d
.end method