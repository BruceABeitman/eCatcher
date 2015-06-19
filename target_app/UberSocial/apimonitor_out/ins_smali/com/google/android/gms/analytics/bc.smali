.class  Lcom/google/android/gms/analytics/bc;
.super Landroid/content/BroadcastReceiver;
.field static final a:Ljava/lang/String;
.field private final b:Lcom/google/android/gms/analytics/ac;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/android/gms/analytics/bc;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/google/android/gms/analytics/bc;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Lcom/google/android/gms/analytics/ac;)V
.registers 2
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/analytics/bc;->b:Lcom/google/android/gms/analytics/ac;
return-void
.end method
.method public static b(Landroid/content/Context;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "com.google.analytics.RADIO_POWERED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
sget-object v1, Lcom/google/android/gms/analytics/bc;->a:Ljava/lang/String;
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public a(Landroid/content/Context;)V
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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v0, 0x0
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
const-string v1, "noConnectivity"
invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iget-object v2, p0, Lcom/google/android/gms/analytics/bc;->b:Lcom/google/android/gms/analytics/ac;
if-nez v1, :cond_18
const/4 v0, 0x1
:cond_18
invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/ac;->a(Z)V
:cond_1b
:goto_1b
return-void
:cond_1c
const-string v0, "com.google.analytics.RADIO_POWERED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
sget-object v0, Lcom/google/android/gms/analytics/bc;->a:Ljava/lang/String;
invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/analytics/bc;->b:Lcom/google/android/gms/analytics/ac;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/ac;->b()V
goto :goto_1b
.end method