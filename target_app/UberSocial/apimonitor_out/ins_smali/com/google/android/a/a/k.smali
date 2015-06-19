.class public Lcom/google/android/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field private static final a:Ljava/lang/String; = "LicenseChecker"
.field private static final b:Ljava/lang/String; = "RSA"
.field private static final c:I = 0x2710
.field private static final d:Ljava/security/SecureRandom;
.field private static final e:Z
.field private f:Lcom/google/android/a/a/h;
.field private g:Ljava/security/PublicKey;
.field private final h:Landroid/content/Context;
.field private final i:Lcom/google/android/a/a/q;
.field private j:Landroid/os/Handler;
.field private final k:Ljava/lang/String;
.field private final l:Ljava/lang/String;
.field private final m:Ljava/util/Set;
.field private final n:Ljava/util/Queue;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
sput-object v0, Lcom/google/android/a/a/k;->d:Ljava/security/SecureRandom;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/a/q;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/a/a/k;->m:Ljava/util/Set;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/a/a/k;->n:Ljava/util/Queue;
iput-object p1, p0, Lcom/google/android/a/a/k;->h:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/a/a/k;->i:Lcom/google/android/a/a/q;
invoke-static {p3}, Lcom/google/android/a/a/k;->a(Ljava/lang/String;)Ljava/security/PublicKey;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/k;->g:Ljava/security/PublicKey;
iget-object v0, p0, Lcom/google/android/a/a/k;->h:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/k;->k:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/a/a/k;->k:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/google/android/a/a/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/k;->l:Ljava/lang/String;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "background thread"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Lcom/google/android/a/a/k;->j:Landroid/os/Handler;
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
:try_end_e
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_10
move-result-object v0
:goto_f
return-object v0
:catch_10
move-exception v0
const-string v0, "LicenseChecker"
const-string v1, "Package not found. could not get version code."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, ""
goto :goto_f
.end method
.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
.registers 4
:try_start_0
invoke-static {p0}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B
move-result-object v0
const-string v1, "RSA"
invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
move-result-object v1
new-instance v2, Ljava/security/spec/X509EncodedKeySpec;
invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
:try_end_12
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
.catch Lcom/google/android/a/a/a/b; {:try_start_0 .. :try_end_12} :catch_1b
.catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_29
move-result-object v0
return-object v0
:catch_14
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_1b
move-exception v0
const-string v1, "LicenseChecker"
const-string v2, "Could not decode from Base64."
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_29
move-exception v0
const-string v1, "LicenseChecker"
const-string v2, "Invalid key specification."
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method static synthetic a(Lcom/google/android/a/a/k;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/k;->m:Ljava/util/Set;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/n;)V
return-void
.end method
.method private declared-synchronized a(Lcom/google/android/a/a/n;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/a/a/k;->m:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/a/a/k;->m:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-eqz v0, :cond_11
invoke-direct {p0}, Lcom/google/android/a/a/k;->c()V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
:cond_11
monitor-exit p0
return-void
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/google/android/a/a/k;)Ljava/security/PublicKey;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/k;->g:Ljava/security/PublicKey;
return-object v0
.end method
.method private b()V
.registers 7
:goto_0
iget-object v0, p0, Lcom/google/android/a/a/k;->n:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/a/a/n;
if-eqz v0, :cond_4b
:try_start_a
const-string v1, "LicenseChecker"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Calling checkLicense on service for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/google/android/a/a/n;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v1, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
invoke-virtual {v0}, Lcom/google/android/a/a/n;->b()I
move-result v2
int-to-long v2, v2
invoke-virtual {v0}, Lcom/google/android/a/a/n;->c()Ljava/lang/String;
move-result-object v4
new-instance v5, Lcom/google/android/a/a/l;
invoke-direct {v5, p0, v0}, Lcom/google/android/a/a/l;-><init>(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V
invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/a/a/h;->a(JLjava/lang/String;Lcom/google/android/a/a/e;)V
iget-object v1, p0, Lcom/google/android/a/a/k;->m:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:try_end_3e
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_3f
goto :goto_0
:catch_3f
move-exception v1
const-string v2, "LicenseChecker"
const-string v3, "RemoteException in checkLicense call."
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-direct {p0, v0}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/n;)V
goto :goto_0
:cond_4b
return-void
.end method
.method static synthetic b(Lcom/google/android/a/a/k;Lcom/google/android/a/a/n;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/a/a/k;->a(Lcom/google/android/a/a/n;)V
return-void
.end method
.method private declared-synchronized b(Lcom/google/android/a/a/n;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/a/a/k;->i:Lcom/google/android/a/a/q;
const/16 v1, 0x123
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Lcom/google/android/a/a/q;->a(ILcom/google/android/a/a/s;)V
iget-object v0, p0, Lcom/google/android/a/a/k;->i:Lcom/google/android/a/a/q;
invoke-interface {v0}, Lcom/google/android/a/a/q;->g()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p1}, Lcom/google/android/a/a/n;->a()Lcom/google/android/a/a/m;
move-result-object v0
const/16 v1, 0x123
invoke-interface {v0, v1}, Lcom/google/android/a/a/m;->a(I)V
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_26
:goto_1a
monitor-exit p0
return-void
:cond_1c
:try_start_1c
invoke-virtual {p1}, Lcom/google/android/a/a/n;->a()Lcom/google/android/a/a/m;
move-result-object v0
const/16 v1, 0x123
invoke-interface {v0, v1}, Lcom/google/android/a/a/m;->b(I)V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_26
goto :goto_1a
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic c(Lcom/google/android/a/a/k;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/k;->j:Landroid/os/Handler;
return-object v0
.end method
.method private c()V
.registers 3
iget-object v0, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
if-eqz v0, :cond_c
:try_start_4
iget-object v0, p0, Lcom/google/android/a/a/k;->h:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:try_end_9
.catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_d
:goto_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
:cond_c
return-void
:catch_d
move-exception v0
const-string v0, "LicenseChecker"
const-string v1, "Unable to unbind from licensing service (already unbound)"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_9
.end method
.method private d()I
.registers 2
sget-object v0, Lcom/google/android/a/a/k;->d:Ljava/security/SecureRandom;
invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I
move-result v0
return v0
.end method
.method public declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lcom/google/android/a/a/k;->c()V
iget-object v0, p0, Lcom/google/android/a/a/k;->j:Landroid/os/Handler;
invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized a(Lcom/google/android/a/a/m;)V
.registers 9
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/a/a/k;->i:Lcom/google/android/a/a/q;
invoke-interface {v0}, Lcom/google/android/a/a/q;->g()Z
move-result v0
if-eqz v0, :cond_17
const-string v0, "LicenseChecker"
const-string v1, "Using cached license response"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/16 v0, 0x100
invoke-interface {p1, v0}, Lcom/google/android/a/a/m;->a(I)V
:try_end_15
.catchall {:try_start_1 .. :try_end_15} :catchall_5c
:goto_15
monitor-exit p0
return-void
:cond_17
:try_start_17
new-instance v0, Lcom/google/android/a/a/n;
iget-object v1, p0, Lcom/google/android/a/a/k;->i:Lcom/google/android/a/a/q;
new-instance v2, Lcom/google/android/a/a/o;
invoke-direct {v2}, Lcom/google/android/a/a/o;-><init>()V
invoke-direct {p0}, Lcom/google/android/a/a/k;->d()I
move-result v4
iget-object v5, p0, Lcom/google/android/a/a/k;->k:Ljava/lang/String;
iget-object v6, p0, Lcom/google/android/a/a/k;->l:Ljava/lang/String;
move-object v3, p1
invoke-direct/range {v0 .. v6}, Lcom/google/android/a/a/n;-><init>(Lcom/google/android/a/a/q;Lcom/google/android/a/a/d;Lcom/google/android/a/a/m;ILjava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
if-nez v1, :cond_6f
const-string v1, "LicenseChecker"
const-string v2, "Binding to licensing service."
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_37
.catchall {:try_start_17 .. :try_end_37} :catchall_5c
:try_start_37
iget-object v1, p0, Lcom/google/android/a/a/k;->h:Landroid/content/Context;
new-instance v2, Landroid/content/Intent;
new-instance v3, Ljava/lang/String;
const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="
invoke-static {v4}, Lcom/google/android/a/a/a/a;->a(Ljava/lang/String;)[B
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/4 v3, 0x1
invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v1
if-eqz v1, :cond_5f
iget-object v1, p0, Lcom/google/android/a/a/k;->n:Ljava/util/Queue;
invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
:try_end_55
.catchall {:try_start_37 .. :try_end_55} :catchall_5c
.catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_55} :catch_56
.catch Lcom/google/android/a/a/a/b; {:try_start_37 .. :try_end_55} :catch_6a
goto :goto_15
:catch_56
move-exception v0
const/4 v0, 0x6
:try_start_58
invoke-interface {p1, v0}, Lcom/google/android/a/a/m;->c(I)V
:try_end_5b
.catchall {:try_start_58 .. :try_end_5b} :catchall_5c
goto :goto_15
:catchall_5c
move-exception v0
monitor-exit p0
throw v0
:cond_5f
:try_start_5f
const-string v1, "LicenseChecker"
const-string v2, "Could not bind to service."
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0, v0}, Lcom/google/android/a/a/k;->b(Lcom/google/android/a/a/n;)V
:try_end_69
.catchall {:try_start_5f .. :try_end_69} :catchall_5c
.catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_69} :catch_56
.catch Lcom/google/android/a/a/a/b; {:try_start_5f .. :try_end_69} :catch_6a
goto :goto_15
:catch_6a
move-exception v0
:try_start_6b
invoke-virtual {v0}, Lcom/google/android/a/a/a/b;->printStackTrace()V
goto :goto_15
:cond_6f
iget-object v1, p0, Lcom/google/android/a/a/k;->n:Ljava/util/Queue;
invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/google/android/a/a/k;->b()V
:try_end_77
.catchall {:try_start_6b .. :try_end_77} :catchall_5c
goto :goto_15
.end method
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/a/a/k; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
invoke-static {p2}, Lcom/google/android/a/a/i;->a(Landroid/os/IBinder;)Lcom/google/android/a/a/h;
move-result-object v0
iput-object v0, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
invoke-direct {p0}, Lcom/google/android/a/a/k;->b()V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
monitor-exit p0
const-string v1, " - Lcom/google/android/a/a/k; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/a/a/k; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
:try_start_1
const-string v0, "LicenseChecker"
const-string v1, "Service unexpectedly disconnected."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/a/a/k;->f:Lcom/google/android/a/a/h;
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_d
monitor-exit p0
const-string v1, " - Lcom/google/android/a/a/k; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_d
move-exception v0
monitor-exit p0
throw v0
.end method