.class public final Lcom/lenovo/lps/reaper/sdk/b/p;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.field private static c:Ljava/lang/String;
.field private static d:Landroid/content/Context;
.field private static e:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "000000000000"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
const-string/jumbo v0, "mac"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->b:Ljava/lang/String;
const-string/jumbo v0, "000000000000"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x1
sput-object p0, Lcom/lenovo/lps/reaper/sdk/b/p;->d:Landroid/content/Context;
invoke-static {p0, v1}, Lcom/lenovo/lps/reaper/sdk/b/d;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->c:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/lenovo/lps/reaper/sdk/b/d;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2a
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_2a
const-string/jumbo v3, "00000000"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2a
invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "imei"
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_29
:goto_29
return-void
:cond_2a
sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_6b
const-string/jumbo v3, "lenovo"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_6b
:goto_3b
:cond_3b
if-eqz v0, :cond_80
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_7e
sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
:goto_45
const-string/jumbo v1, "SN: "
invoke-static {v1, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_80
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_80
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "unknown"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_80
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "sn"
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_29
:cond_6b
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_7c
const-string/jumbo v3, "lenovo"
invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_3b
:cond_7c
move v0, v1
goto :goto_3b
:cond_7e
const/4 v0, 0x0
goto :goto_45
:cond_80
new-instance v0, Landroid/content/IntentFilter;
const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/p;->e()Z
move-result v1
if-nez v1, :cond_29
sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/p;->e:Landroid/content/BroadcastReceiver;
if-nez v1, :cond_29
new-instance v1, Lcom/lenovo/lps/reaper/sdk/b/j;
invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/b/j;-><init>()V
sput-object v1, Lcom/lenovo/lps/reaper/sdk/b/p;->e:Landroid/content/BroadcastReceiver;
sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/p;->d:Landroid/content/Context;
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->e:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
goto :goto_29
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
sput-object p0, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
sput-object p1, Lcom/lenovo/lps/reaper/sdk/b/p;->b:Ljava/lang/String;
const-string/jumbo v0, "PlusUtil"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "DeviceType&Id is Set to: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->b:Ljava/lang/String;
return-object v0
.end method
.method public static c()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d()Z
.registers 1
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/p;->e()Z
move-result v0
return v0
.end method
.method private static e()Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->d:Landroid/content/Context;
const-string/jumbo v3, "PlusUtil"
invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v3
const-string/jumbo v0, "mac"
invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
const-string/jumbo v0, "mac"
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "mac"
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
:goto_24
return v0
:cond_25
sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/p;->d:Landroid/content/Context;
const-string/jumbo v4, "wifi"
invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6d
const-string/jumbo v2, "MAC: "
invoke-static {v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string/jumbo v4, "mac"
const-string/jumbo v5, ":"
const-string/jumbo v6, ""
invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string/jumbo v0, "mac"
sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/p;->a:Ljava/lang/String;
invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "mac"
invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_24
:cond_6d
move v0, v2
goto :goto_24
.end method