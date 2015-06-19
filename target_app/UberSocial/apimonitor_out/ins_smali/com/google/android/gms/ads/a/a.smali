.class public final Lcom/google/android/gms/ads/a/a;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
.registers 2
const-string v0, "Calling this from your main thread can lead to deadlock"
invoke-static {v0}, Lcom/google/android/gms/internal/hv;->c(Ljava/lang/String;)V
invoke-static {p0}, Lcom/google/android/gms/ads/a/a;->b(Landroid/content/Context;)Lcom/google/android/gms/common/l;
move-result-object v0
invoke-static {p0, v0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;Lcom/google/android/gms/common/l;)Lcom/google/android/gms/ads/a/b;
move-result-object v0
return-object v0
.end method
.method static a(Landroid/content/Context;Lcom/google/android/gms/common/l;)Lcom/google/android/gms/ads/a/b;
.registers 6
:try_start_0
invoke-virtual {p1}, Lcom/google/android/gms/common/l;->a()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ti;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/th;
move-result-object v0
new-instance v1, Lcom/google/android/gms/ads/a/b;
invoke-interface {v0}, Lcom/google/android/gms/internal/th;->a()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-interface {v0, v3}, Lcom/google/android/gms/internal/th;->a(Z)Z
move-result v0
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/a/b;-><init>(Ljava/lang/String;Z)V
:try_start_16
:try_end_16
.catchall {:try_start_0 .. :try_end_16} :catchall_33
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_23
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_38
invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_19
.catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a
:goto_19
return-object v1
:catch_1a
move-exception v0
const-string v2, "AdvertisingIdClient"
const-string v3, "getAdvertisingIdInfo unbindService failed."
invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_19
:catch_23
move-exception v0
:try_start_24
const-string v1, "AdvertisingIdClient"
const-string v2, "GMS remote exception "
invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v0, Ljava/io/IOException;
const-string v1, "Remote exception"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_33
.catchall {:try_start_24 .. :try_end_33} :catchall_33
:catchall_33
move-exception v0
:try_start_34
invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_37
.catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_37} :catch_41
:goto_37
throw v0
:catch_38
move-exception v0
:try_start_39
new-instance v0, Ljava/io/IOException;
const-string v1, "Interrupted exception"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_41
.catchall {:try_start_39 .. :try_end_41} :catchall_33
:catch_41
move-exception v1
const-string v2, "AdvertisingIdClient"
const-string v3, "getAdvertisingIdInfo unbindService failed."
invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_37
.end method
.method private static b(Landroid/content/Context;)Lcom/google/android/gms/common/l;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string v1, "com.android.vending"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_start_a
:try_end_a
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_26
invoke-static {p0}, Lcom/google/android/gms/common/i;->b(Landroid/content/Context;)V
:try_end_d
.catch Lcom/google/android/gms/common/g; {:try_start_a .. :try_end_d} :catch_2f
new-instance v0, Lcom/google/android/gms/common/l;
invoke-direct {v0}, Lcom/google/android/gms/common/l;-><init>()V
new-instance v1, Landroid/content/Intent;
const-string v2, "com.google.android.gms.ads.identifier.service.START"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "com.google.android.gms"
invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
const/4 v2, 0x1
invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v1
if-eqz v1, :cond_36
return-object v0
:catch_26
move-exception v0
new-instance v0, Lcom/google/android/gms/common/g;
const/16 v1, 0x9
invoke-direct {v0, v1}, Lcom/google/android/gms/common/g;-><init>(I)V
throw v0
:catch_2f
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_36
new-instance v0, Ljava/io/IOException;
const-string v1, "Connection failure"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method