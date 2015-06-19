.class public final Lcom/lenovo/anyshare/sdk/internal/al;
.super Ljava/lang/Object;
.source "Connectivity.java"
.field private static a:Landroid/content/Context;
.field private static b:Z
.field private static c:Ljava/util/List;
.field private static d:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/al;->c:Ljava/util/List;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/al$1;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/al$1;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/al;->d:Landroid/content/BroadcastReceiver;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/al;->b(Landroid/content/Context;)V
return-void
.end method
.method private static a(Z)V
.registers 4
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->a()Z
move-result v0
const-class v2, Lcom/lenovo/anyshare/sdk/internal/al;
monitor-enter v2
:try_start_7
sput-boolean p0, Lcom/lenovo/anyshare/sdk/internal/al;->b:Z
monitor-exit v2
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_12
xor-int v1, v0, p0
if-eqz v1, :cond_11
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/al;->b(Z)V
:cond_11
return-void
:catchall_12
move-exception v1
:try_start_13
monitor-exit v2
:try_end_14
.catchall {:try_start_13 .. :try_end_14} :catchall_12
throw v1
.end method
.method public static declared-synchronized a()Z
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/al;
monitor-enter v0
:try_start_3
sget-boolean v1, Lcom/lenovo/anyshare/sdk/internal/al;->b:Z
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static b()Ljava/lang/String;
.registers 10
const/4 v4, 0x0
:try_start_1
invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
move-result-object v3
:cond_5
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v7
if-eqz v7, :cond_42
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/net/NetworkInterface;
invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
move-result-object v1
:cond_19
:goto_19
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v7
if-eqz v7, :cond_5
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/InetAddress;
invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z
move-result v7
if-nez v7, :cond_19
invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
move-result v7
if-nez v7, :cond_19
invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "wlan"
invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_43
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v4
:goto_42
:cond_42
return-object v4
:cond_43
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
:try_end_46
.catch Ljava/net/SocketException; {:try_start_1 .. :try_end_46} :catch_48
move-result-object v4
goto :goto_19
:catch_48
move-exception v2
const-string/jumbo v7, "Connectivity"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v9, "get local ip failed: "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_42
.end method
.method private static declared-synchronized b(Landroid/content/Context;)V
.registers 3
const-class v0, Lcom/lenovo/anyshare/sdk/internal/al;
monitor-enter v0
:try_start_3
sput-object p0, Lcom/lenovo/anyshare/sdk/internal/al;->a:Landroid/content/Context;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-void
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method private static b(Z)V
.registers 4
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/al;->c:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/al$a;
invoke-interface {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/al$a;->a(Z)V
goto :goto_6
:cond_16
return-void
.end method
.method public static c()Z
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/al;->a:Landroid/content/Context;
if-nez v3, :cond_10
const-string/jumbo v1, "Connectivity"
const-string/jumbo v3, "context is NULL!"
invoke-static {v1, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
return v2
:cond_10
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/al;->a:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
const-string/jumbo v4, "airplane_mode_on"
invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v0
if-ne v1, v0, :cond_21
:goto_1f
move v2, v1
goto :goto_f
:cond_21
move v1, v2
goto :goto_1f
.end method
.method static synthetic d()V
.registers 0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->f()V
return-void
.end method
.method static synthetic e()Z
.registers 1
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/al;->b:Z
return v0
.end method
.method private static f()V
.registers 9
const/4 v6, 0x1
const/4 v7, 0x0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/al;->g()Landroid/content/Context;
move-result-object v2
if-nez v2, :cond_9
:goto_8
return-void
:cond_9
const-string/jumbo v8, "connectivity"
invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v4
if-eqz v4, :cond_41
invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v8
if-eqz v8, :cond_41
move v0, v6
:goto_1f
if-nez v0, :cond_2e
invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v5
if-eqz v5, :cond_43
invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v8
if-eqz v8, :cond_43
move v0, v6
:goto_2e
:cond_2e
if-nez v0, :cond_3d
invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v3
if-eqz v3, :cond_45
invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v8
if-eqz v8, :cond_45
move v0, v6
:goto_3d
:cond_3d
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/al;->a(Z)V
goto :goto_8
:cond_41
move v0, v7
goto :goto_1f
:cond_43
move v0, v7
goto :goto_2e
:cond_45
move v0, v7
goto :goto_3d
.end method
.method private static declared-synchronized g()Landroid/content/Context;
.registers 2
const-class v0, Lcom/lenovo/anyshare/sdk/internal/al;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/al;->a:Landroid/content/Context;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method