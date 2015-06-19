.class final Lcom/google/android/gms/internal/ep$a;
.super Landroid/content/BroadcastReceiver;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ep$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/ep$a;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const-string v0, "android.intent.action.USER_PRESENT"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->p(Z)Z
:goto_10
:cond_10
return-void
:cond_11
const-string v0, "android.intent.action.SCREEN_OFF"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->p(Z)Z
goto :goto_10
.end method