.class public final Lcom/tencent/map/b/f;
.super Ljava/lang/Object;
.field private a:Landroid/content/Context;
.field private b:Landroid/net/wifi/WifiManager;
.field private c:Lcom/tencent/map/b/f$c;
.field private d:Landroid/os/Handler;
.field private e:Ljava/lang/Runnable;
.field private f:I
.field private g:Lcom/tencent/map/b/f$a;
.field private h:Lcom/tencent/map/b/f$b;
.field private i:Z
.field private j:[B
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
iput-object v1, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
iput-object v1, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
iput-object v1, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
new-instance v0, Lcom/tencent/map/b/g;
invoke-direct {v0, p0}, Lcom/tencent/map/b/g;-><init>(Lcom/tencent/map/b/f;)V
iput-object v0, p0, Lcom/tencent/map/b/f;->e:Ljava/lang/Runnable;
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/map/b/f;->f:I
iput-object v1, p0, Lcom/tencent/map/b/f;->g:Lcom/tencent/map/b/f$a;
iput-object v1, p0, Lcom/tencent/map/b/f;->h:Lcom/tencent/map/b/f$b;
iput-boolean v2, p0, Lcom/tencent/map/b/f;->i:Z
new-array v0, v2, [B
iput-object v0, p0, Lcom/tencent/map/b/f;->j:[B
return-void
.end method
.method static synthetic a(Lcom/tencent/map/b/f;Lcom/tencent/map/b/f$b;)Lcom/tencent/map/b/f$b;
.registers 2
iput-object p1, p0, Lcom/tencent/map/b/f;->h:Lcom/tencent/map/b/f$b;
return-object p1
.end method
.method static synthetic a(Lcom/tencent/map/b/f;)V
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
:cond_11
return-void
.end method
.method static synthetic b(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$a;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f;->g:Lcom/tencent/map/b/f$a;
return-object v0
.end method
.method static synthetic c(Lcom/tencent/map/b/f;)Landroid/net/wifi/WifiManager;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
return-object v0
.end method
.method static synthetic d(Lcom/tencent/map/b/f;)Lcom/tencent/map/b/f$b;
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f;->h:Lcom/tencent/map/b/f$b;
return-object v0
.end method
.method static synthetic e(Lcom/tencent/map/b/f;)I
.registers 2
iget v0, p0, Lcom/tencent/map/b/f;->f:I
return v0
.end method
.method public final a()V
.registers 4
iget-object v1, p0, Lcom/tencent/map/b/f;->j:[B
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
if-nez v0, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
if-nez v0, :cond_16
:cond_11
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_13
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
throw v0
:cond_16
:try_start_16
iget-object v0, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_1d
:try_end_1d
.catchall {:try_start_16 .. :try_end_1d} :catchall_13
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_29
:try_start_1d
iget-object v0, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
iget-object v2, p0, Lcom/tencent/map/b/f;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
monitor-exit v1
:try_end_28
.catchall {:try_start_1d .. :try_end_28} :catchall_13
goto :goto_8
:catch_29
move-exception v0
goto :goto_1d
.end method
.method public final a(J)V
.registers 5
iget-object v0, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
if-eqz v0, :cond_16
iget-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/tencent/map/b/f;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
iget-object v1, p0, Lcom/tencent/map/b/f;->e:Ljava/lang/Runnable;
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_16
return-void
.end method
.method public final a(Landroid/content/Context;Lcom/tencent/map/b/f$a;I)Z
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/tencent/map/b/f;->j:[B
monitor-enter v2
:try_start_5
iget-boolean v3, p0, Lcom/tencent/map/b/f;->i:Z
if-eqz v3, :cond_b
monitor-exit v2
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_6b
:goto_a
return v0
:cond_b
if-eqz p1, :cond_f
if-nez p2, :cond_12
:cond_f
monitor-exit v2
move v0, v1
goto :goto_a
:cond_12
:try_start_12
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/tencent/map/b/f;->d:Landroid/os/Handler;
iput-object p1, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/tencent/map/b/f;->g:Lcom/tencent/map/b/f$a;
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/map/b/f;->f:I
:try_end_24
.catchall {:try_start_12 .. :try_end_24} :catchall_6b
:try_start_24
iget-object v0, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
const-string/jumbo v3, "wifi"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
iput-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
new-instance v3, Lcom/tencent/map/b/f$c;
invoke-direct {v3, p0}, Lcom/tencent/map/b/f$c;-><init>(Lcom/tencent/map/b/f;)V
iput-object v3, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
iget-object v3, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
if-eqz v3, :cond_45
iget-object v3, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
:try_end_43
.catchall {:try_start_24 .. :try_end_43} :catchall_6b
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_43} :catch_67
if-nez v3, :cond_48
:try_start_45
:cond_45
monitor-exit v2
:try_end_46
.catchall {:try_start_45 .. :try_end_46} :catchall_6b
move v0, v1
goto :goto_a
:cond_48
:try_start_48
const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v3, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/tencent/map/b/f;->c:Lcom/tencent/map/b/f$c;
invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:try_end_5b
.catchall {:try_start_48 .. :try_end_5b} :catchall_6b
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5b} :catch_67
const-wide/16 v0, 0x0
:try_start_5d
invoke-virtual {p0, v0, v1}, Lcom/tencent/map/b/f;->a(J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
monitor-exit v2
:try_end_64
.catchall {:try_start_5d .. :try_end_64} :catchall_6b
iget-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
goto :goto_a
:catch_67
move-exception v0
:try_start_68
monitor-exit v2
:try_end_69
.catchall {:try_start_68 .. :try_end_69} :catchall_6b
move v0, v1
goto :goto_a
:catchall_6b
move-exception v0
monitor-exit v2
throw v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/tencent/map/b/f;->i:Z
return v0
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/tencent/map/b/f;->a:Landroid/content/Context;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return v0
:cond_a
iget-object v0, p0, Lcom/tencent/map/b/f;->b:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v0
goto :goto_9
.end method