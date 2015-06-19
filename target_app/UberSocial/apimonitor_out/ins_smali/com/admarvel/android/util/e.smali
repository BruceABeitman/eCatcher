.class public Lcom/admarvel/android/util/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static a:Lcom/admarvel/android/util/e;
.field private b:Ljava/lang/String;
.field private c:I
.field private final d:Ljava/lang/ref/WeakReference;
.method private constructor <init>(Landroid/content/Context;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v2, "VALUE_NOT_DEFINED"
iput-object v2, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v2, p0, Lcom/admarvel/android/util/e;->d:Ljava/lang/ref/WeakReference;
:try_start_10
const-string v2, "com.google.android.gms.ads.a.a"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_15
.catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_15} :catch_66
move v2, v0
:goto_16
if-eqz v2, :cond_84
new-instance v3, Lcom/admarvel/android/util/e$e;
invoke-direct {v3, p0, p1}, Lcom/admarvel/android/util/e$e;-><init>(Lcom/admarvel/android/util/e;Landroid/content/Context;)V
invoke-static {v3}, Lcom/admarvel/android/util/e$e;->a(Lcom/admarvel/android/util/e$e;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Lcom/admarvel/android/util/e$e;->a()Z
move-result v3
if-eqz v4, :cond_6b
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_6b
invoke-virtual {p0, v4}, Lcom/admarvel/android/util/e;->a(Ljava/lang/String;)V
if-ne v3, v0, :cond_69
:goto_32
invoke-virtual {p0, v0}, Lcom/admarvel/android/util/e;->a(I)V
iget-object v0, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
const-string v3, "VALUE_NOT_DEFINED"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_5b
if-nez v1, :cond_65
const-string v0, "Fetching from IAdvertisingIdService "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/admarvel/android/util/e;->b()V
:cond_65
return-void
:catch_66
move-exception v2
move v2, v1
goto :goto_16
:cond_69
move v0, v1
goto :goto_32
:cond_6b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_5b
:cond_84
move v1, v2
goto :goto_5b
.end method
.method static synthetic a(Lcom/admarvel/android/util/e;I)I
.registers 2
iput p1, p0, Lcom/admarvel/android/util/e;->c:I
return p1
.end method
.method public static a()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
return-void
.end method
.method public static c(Landroid/content/Context;)Lcom/admarvel/android/util/e;
.registers 3
sget-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
if-eqz v0, :cond_14
sget-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
if-eqz v0, :cond_1e
sget-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
iget-object v0, v0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
const-string v1, "VALUE_NOT_DEFINED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_14
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
new-instance v0, Lcom/admarvel/android/util/e;
invoke-direct {v0, p0}, Lcom/admarvel/android/util/e;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
:cond_1e
sget-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
return-object v0
.end method
.method static synthetic d(Landroid/content/Context;)V
.registers 1
invoke-static {p0}, Lcom/admarvel/android/util/e;->e(Landroid/content/Context;)V
return-void
.end method
.method private static e(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x1
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
if-ne v0, v1, :cond_13
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot be called from the main thread"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
:try_start_13
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string v1, "com.android.vending"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_58
new-instance v1, Lcom/admarvel/android/util/e$b;
const/4 v0, 0x0
invoke-direct {v1, v0}, Lcom/admarvel/android/util/e$b;-><init>(Lcom/admarvel/android/util/e$1;)V
new-instance v0, Landroid/content/Intent;
const-string v2, "com.google.android.gms.ads.identifier.service.START"
invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "com.google.android.gms"
invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
if-eqz v0, :cond_61
:try_start_35
new-instance v0, Lcom/admarvel/android/util/e$c;
invoke-virtual {v1}, Lcom/admarvel/android/util/e$b;->a()Landroid/os/IBinder;
move-result-object v2
invoke-direct {v0, v2}, Lcom/admarvel/android/util/e$c;-><init>(Landroid/os/IBinder;)V
new-instance v2, Lcom/admarvel/android/util/e$a;
invoke-virtual {v0}, Lcom/admarvel/android/util/e$c;->a()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v0, v4, p0}, Lcom/admarvel/android/util/e$c;->a(ZLandroid/content/Context;)Z
move-result v0
invoke-direct {v2, v3, v0}, Lcom/admarvel/android/util/e$a;-><init>(Ljava/lang/String;Z)V
sget-object v0, Lcom/admarvel/android/util/e;->a:Lcom/admarvel/android/util/e;
invoke-virtual {v2}, Lcom/admarvel/android/util/e$a;->a()Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
:try_end_54
.catchall {:try_start_35 .. :try_end_54} :catchall_5c
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_54} :catch_5a
invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
return-void
:catch_58
move-exception v0
throw v0
:catch_5a
move-exception v0
:try_start_5b
throw v0
:try_end_5c
.catchall {:try_start_5b .. :try_end_5c} :catchall_5c
:catchall_5c
move-exception v0
invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
throw v0
:cond_61
new-instance v0, Ljava/io/IOException;
const-string v1, "Google Play connection failed"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Landroid/content/Context;)I
.registers 3
iget v0, p0, Lcom/admarvel/android/util/e;->c:I
return v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/util/e;->c:I
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
return-void
.end method
.method public b(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/admarvel/android/util/e;->b:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, "VALUE_NOT_DEFINED"
goto :goto_6
.end method
.method public b()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/util/e;->d:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/admarvel/android/util/e;->d:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:goto_c
if-eqz v0, :cond_1b
new-instance v1, Ljava/lang/Thread;
new-instance v2, Lcom/admarvel/android/util/e$d;
invoke-direct {v2, p0, v0}, Lcom/admarvel/android/util/e$d;-><init>(Lcom/admarvel/android/util/e;Landroid/content/Context;)V
invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
:cond_1b
return-void
:cond_1c
const/4 v0, 0x0
goto :goto_c
.end method