.class  Lcom/google/android/gms/tagmanager/bn;
.super Landroid/content/BroadcastReceiver;
.field static final tO:Ljava/lang/String;
.field private final agj:Lcom/google/android/gms/tagmanager/cw;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/android/gms/tagmanager/bn;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/tagmanager/bn;->tO:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/tagmanager/cw;)V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/tagmanager/bn;->agj:Lcom/google/android/gms/tagmanager/cw;
return-void
.end method
.method public static t(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "com.google.analytics.RADIO_POWERED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/google/android/gms/tagmanager/bn;->tO:Ljava/lang/String;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_31
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
if-eqz v1, :cond_22
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "noConnectivity"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:cond_22
iget-object v1, p0, Lcom/google/android/gms/tagmanager/bn;->agj:Lcom/google/android/gms/tagmanager/cw;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_2f
const/4 v0, 0x1
:goto_2b
invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/cw;->t(Z)V
:goto_2e
:cond_2e
return-void
:cond_2f
const/4 v0, 0x0
goto :goto_2b
:cond_31
const-string v1, "com.google.analytics.RADIO_POWERED"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
sget-object v0, Lcom/google/android/gms/tagmanager/bn;->tO:Ljava/lang/String;
invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2e
iget-object v0, p0, Lcom/google/android/gms/tagmanager/bn;->agj:Lcom/google/android/gms/tagmanager/cw;
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cw;->cD()V
goto :goto_2e
.end method
.method public s(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "com.google.analytics.RADIO_POWERED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method