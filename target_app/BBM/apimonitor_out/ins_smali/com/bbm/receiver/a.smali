.class public final Lcom/bbm/receiver/a;
.super Ljava/lang/Object;
.source "AppKillingBroadcastReceiver.java"
.method public static a(Landroid/content/Context;)V
.registers 10
const/4 v8, 0x2
const/4 v7, 0x1
new-instance v0, Landroid/content/ComponentName;
const-class v1, Lcom/bbm/receiver/LocationTimeZoneChangedReceiver;
invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v1, Landroid/content/ComponentName;
const-class v2, Lcom/bbm/receiver/NetworkChangeMonitor;
invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v2, Landroid/content/ComponentName;
const-class v3, Lcom/bbm/receiver/ConnectivityChangeReceiver;
invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
new-instance v3, Landroid/content/ComponentName;
const-class v4, Lcom/bbm/receiver/BootCompletedReceiver;
invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v4
const-string v5, "AppKillingBroadcastReceiver disabling broadcast receivers"
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Object;
invoke-static {v5, v6}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v4, v0, v8, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
invoke-virtual {v4, v1, v8, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
invoke-virtual {v4, v2, v8, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
invoke-virtual {v4, v3, v8, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
return-void
.end method