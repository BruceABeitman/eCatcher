.class  Lcom/baidu/location/e;
.super Ljava/lang/Object;
.field private static final byte:I = 0xf
.field private static try:Ljava/lang/String;
.field private final a:J
.field private b:J
.field private c:Lcom/baidu/location/e$a;
.field private case:Lcom/baidu/location/e$c;
.field private char:Lcom/baidu/location/e$b;
.field private d:Z
.field private do:Z
.field private e:Ljava/lang/reflect/Method;
.field private else:Z
.field private final f:J
.field private for:Z
.field private g:Ljava/lang/Object;
.field private goto:Landroid/content/Context;
.field private if:Landroid/os/Handler;
.field private int:Z
.field private long:J
.field private final new:J
.field private void:Landroid/net/wifi/WifiManager;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "baidu_location_service"
sput-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
.registers 9
const-wide/16 v0, 0xbb8
const-wide/16 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/baidu/location/e;->f:J
iput-wide v0, p0, Lcom/baidu/location/e;->new:J
const-wide/16 v0, 0x1388
iput-wide v0, p0, Lcom/baidu/location/e;->a:J
iput-object v2, p0, Lcom/baidu/location/e;->if:Landroid/os/Handler;
iput-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
iput-object v2, p0, Lcom/baidu/location/e;->char:Lcom/baidu/location/e$b;
iput-object v2, p0, Lcom/baidu/location/e;->c:Lcom/baidu/location/e$a;
iput-object v2, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
iput-wide v4, p0, Lcom/baidu/location/e;->b:J
iput-wide v4, p0, Lcom/baidu/location/e;->long:J
iput-boolean v3, p0, Lcom/baidu/location/e;->int:Z
iput-object v2, p0, Lcom/baidu/location/e;->g:Ljava/lang/Object;
iput-object v2, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/baidu/location/e;->for:Z
iput-boolean v3, p0, Lcom/baidu/location/e;->d:Z
iput-boolean v3, p0, Lcom/baidu/location/e;->else:Z
iput-boolean v3, p0, Lcom/baidu/location/e;->do:Z
iput-object p1, p0, Lcom/baidu/location/e;->goto:Landroid/content/Context;
iput-object p2, p0, Lcom/baidu/location/e;->if:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/baidu/location/e;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/e;->goto()V
return-void
.end method
.method static synthetic a(Lcom/baidu/location/e;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/baidu/location/e;->do:Z
return p1
.end method
.method static synthetic do()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
return-object v0
.end method
.method static synthetic do(Lcom/baidu/location/e;)Z
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/e;->d:Z
return v0
.end method
.method static synthetic for(Lcom/baidu/location/e;)V
.registers 1
invoke-direct {p0}, Lcom/baidu/location/e;->if()V
return-void
.end method
.method private goto()V
.registers 6
const/4 v4, 0x1
sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;
:try_start_3
iget-object v0, p0, Lcom/baidu/location/e;->goto:Landroid/content/Context;
const-string/jumbo v2, "connectivity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
:try_end_16
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_20
move-result-object v0
:goto_17
sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
if-ne v1, v0, :cond_36
iget-boolean v0, p0, Lcom/baidu/location/e;->d:Z
if-eqz v0, :cond_23
:goto_1f
return-void
:catch_20
move-exception v0
move-object v0, v1
goto :goto_17
:cond_23
iput-boolean v4, p0, Lcom/baidu/location/e;->d:Z
iget-object v0, p0, Lcom/baidu/location/e;->if:Landroid/os/Handler;
new-instance v1, Lcom/baidu/location/e$d;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/baidu/location/e$d;-><init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
sget v2, Lcom/baidu/location/j;->S:I
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iput-boolean v4, p0, Lcom/baidu/location/e;->do:Z
goto :goto_1f
:cond_36
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/e;->d:Z
goto :goto_1f
.end method
.method static synthetic if(Lcom/baidu/location/e;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/baidu/location/e;->if:Landroid/os/Handler;
return-object v0
.end method
.method private if()V
.registers 5
iget-object v0, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:try_start_5
:cond_5
iget-object v0, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_25
move-result-object v0
new-instance v1, Lcom/baidu/location/e$c;
iget-wide v2, p0, Lcom/baidu/location/e;->b:J
invoke-direct {v1, p0, v0, v2, v3}, Lcom/baidu/location/e$c;-><init>(Lcom/baidu/location/e;Ljava/util/List;J)V
const-wide/16 v2, 0x0
iput-wide v2, p0, Lcom/baidu/location/e;->b:J
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
invoke-virtual {v1, v0}, Lcom/baidu/location/e$c;->if(Lcom/baidu/location/e$c;)Z
move-result v0
if-nez v0, :cond_4
:cond_22
iput-object v1, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
goto :goto_4
:catch_25
move-exception v0
goto :goto_4
.end method
.method public a()Z
.registers 7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/baidu/location/e;->long:J
sub-long v2, v0, v2
const-wide/16 v4, 0x2710
cmp-long v2, v2, v4
if-gtz v2, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
iput-wide v0, p0, Lcom/baidu/location/e;->long:J
invoke-virtual {p0}, Lcom/baidu/location/e;->new()Z
move-result v0
goto :goto_f
.end method
.method public byte()Lcom/baidu/location/e$c;
.registers 7
const-wide/16 v4, 0x0
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
invoke-virtual {v0}, Lcom/baidu/location/e$c;->new()Z
move-result v0
if-nez v0, :cond_28
:cond_e
iget-object v0, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
if-eqz v0, :cond_28
:try_start_12
new-instance v0, Lcom/baidu/location/e$c;
iget-object v1, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v1
const-wide/16 v2, 0x0
invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/e$c;-><init>(Lcom/baidu/location/e;Ljava/util/List;J)V
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20
:goto_1f
return-object v0
:catch_20
move-exception v0
new-instance v0, Lcom/baidu/location/e$c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/e$c;-><init>(Lcom/baidu/location/e;Ljava/util/List;J)V
goto :goto_1f
:cond_28
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
goto :goto_1f
.end method
.method public case()V
.registers 3
iget-object v0, p0, Lcom/baidu/location/e;->c:Lcom/baidu/location/e$a;
if-nez v0, :cond_c
new-instance v0, Lcom/baidu/location/e$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/baidu/location/e$a;-><init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
iput-object v0, p0, Lcom/baidu/location/e;->c:Lcom/baidu/location/e$a;
:cond_c
return-void
.end method
.method public char()Ljava/lang/String;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
if-nez v1, :cond_a
:goto_9
:cond_9
return-object v0
:cond_a
:try_start_a
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_9
const-string/jumbo v2, ":"
const-string/jumbo v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1b
move-result-object v0
goto :goto_9
:catch_1b
move-exception v1
goto :goto_9
.end method
.method public else()V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/baidu/location/e;->int:Z
if-nez v0, :cond_6
:goto_5
return-void
:try_start_6
:cond_6
iget-object v0, p0, Lcom/baidu/location/e;->goto:Landroid/content/Context;
iget-object v1, p0, Lcom/baidu/location/e;->char:Lcom/baidu/location/e$b;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_d
:try_end_d
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_1f
iput-object v2, p0, Lcom/baidu/location/e;->char:Lcom/baidu/location/e$b;
iput-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
iput-object v2, p0, Lcom/baidu/location/e;->c:Lcom/baidu/location/e$a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/baidu/location/e;->int:Z
sget-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
const-string/jumbo v1, "wifimanager stop ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5
:catch_1f
move-exception v0
goto :goto_d
.end method
.method public for()V
.registers 2
iget-boolean v0, p0, Lcom/baidu/location/e;->do:Z
if-eqz v0, :cond_4
:cond_4
return-void
.end method
.method public int()Lcom/baidu/location/e$c;
.registers 7
const-wide/16 v4, 0x0
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
invoke-virtual {v0}, Lcom/baidu/location/e$c;->for()Z
move-result v0
if-nez v0, :cond_28
:cond_e
iget-object v0, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
if-eqz v0, :cond_28
:try_start_12
new-instance v0, Lcom/baidu/location/e$c;
iget-object v1, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v1
const-wide/16 v2, 0x0
invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/location/e$c;-><init>(Lcom/baidu/location/e;Ljava/util/List;J)V
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_20
:goto_1f
return-object v0
:catch_20
move-exception v0
new-instance v0, Lcom/baidu/location/e$c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, v4, v5}, Lcom/baidu/location/e$c;-><init>(Lcom/baidu/location/e;Ljava/util/List;J)V
goto :goto_1f
:cond_28
iget-object v0, p0, Lcom/baidu/location/e;->case:Lcom/baidu/location/e$c;
goto :goto_1f
.end method
.method public new()Z
.registers 10
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/baidu/location/e;->b:J
sub-long v5, v3, v5
const-wide/16 v7, 0xbb8
cmp-long v2, v5, v7
if-lez v2, :cond_6
:try_start_15
iget-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v2
if-eqz v2, :cond_56
iget-object v2, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
if-eqz v2, :cond_50
iget-object v2, p0, Lcom/baidu/location/e;->g:Ljava/lang/Object;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_4e
if-eqz v2, :cond_50
:try_start_25
iget-object v2, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
iget-object v5, p0, Lcom/baidu/location/e;->g:Ljava/lang/Object;
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget-boolean v8, p0, Lcom/baidu/location/e;->for:Z
invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v8
aput-object v8, v6, v7
invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_38
:try_start_38
:try_end_38
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_44
iput-wide v3, p0, Lcom/baidu/location/e;->b:J
sget-object v2, Lcom/baidu/location/e;->try:Ljava/lang/String;
const-string/jumbo v3, "wifimanager start scan ..."
invoke-static {v2, v3}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_6
:catch_44
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
iget-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z
goto :goto_38
:catch_4e
move-exception v1
goto :goto_6
:cond_50
iget-object v2, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z
goto :goto_38
:cond_56
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/baidu/location/e;->b:J
:try_end_5a
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5a} :catch_4e
goto :goto_6
.end method
.method public try()V
.registers 6
const/4 v2, 0x0
const/4 v4, 0x1
iget-boolean v0, p0, Lcom/baidu/location/e;->int:Z
if-ne v0, v4, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/baidu/location/e;->goto:Landroid/content/Context;
const-string/jumbo v1, "wifi"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
iput-object v0, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
new-instance v0, Lcom/baidu/location/e$b;
invoke-direct {v0, p0, v2}, Lcom/baidu/location/e$b;-><init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
iput-object v0, p0, Lcom/baidu/location/e;->char:Lcom/baidu/location/e$b;
:try_start_1b
iget-object v0, p0, Lcom/baidu/location/e;->goto:Landroid/content/Context;
iget-object v1, p0, Lcom/baidu/location/e;->char:Lcom/baidu/location/e$b;
new-instance v2, Landroid/content/IntentFilter;
const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v0, Lcom/baidu/location/e$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/baidu/location/e$a;-><init>(Lcom/baidu/location/e;Lcom/baidu/location/e$1;)V
iput-object v0, p0, Lcom/baidu/location/e;->c:Lcom/baidu/location/e$a;
:goto_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_32} :catch_b0
iput-boolean v4, p0, Lcom/baidu/location/e;->int:Z
sget-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
const-string/jumbo v1, "wifimanager start ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_start_3c
const-string/jumbo v0, "android.net.wifi.WifiManager"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string/jumbo v1, "mService"
invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
if-nez v0, :cond_5a
sget-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
const-string/jumbo v1, "android.net.wifi.WifiManager.mService  NOT  found ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
:try_end_54
.catch Ljava/lang/Exception; {:try_start_3c .. :try_end_54} :catch_55
goto :goto_6
:catch_55
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6
:cond_5a
const/4 v1, 0x1
:try_start_5b
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
iget-object v1, p0, Lcom/baidu/location/e;->void:Landroid/net/wifi/WifiManager;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/e;->g:Ljava/lang/Object;
iget-object v0, p0, Lcom/baidu/location/e;->g:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
sget-object v1, Lcom/baidu/location/e;->try:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "mserviceClass : "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "startScan"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
iget-object v0, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
if-nez v0, :cond_a8
sget-object v0, Lcom/baidu/location/e;->try:Ljava/lang/String;
const-string/jumbo v1, "mService.startScan NOT  found ..."
invoke-static {v0, v1}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_6
:cond_a8
iget-object v0, p0, Lcom/baidu/location/e;->e:Ljava/lang/reflect/Method;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_end_ae
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ae} :catch_55
goto/16 :goto_6
:catch_b0
move-exception v0
goto :goto_32
.end method