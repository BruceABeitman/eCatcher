.class public final Lcom/google/android/gms/auth/a;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String;
.field public static final b:Ljava/lang/String;
.field private static final c:Landroid/content/ComponentName;
.field private static final d:Landroid/content/ComponentName;
.field private static final e:Landroid/content/Intent;
.field private static final f:Landroid/content/Intent;
.method static constructor <clinit>()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const-string v0, "callerUid"
sput-object v0, Lcom/google/android/gms/auth/a;->a:Ljava/lang/String;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const-string v0, "androidPackageName"
sput-object v0, Lcom/google/android/gms/auth/a;->b:Ljava/lang/String;
new-instance v0, Landroid/content/ComponentName;
const-string v1, "com.google.android.gms"
const-string v2, "com.google.android.gms.auth.GetToken"
invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/auth/a;->c:Landroid/content/ComponentName;
new-instance v0, Landroid/content/ComponentName;
const-string v1, "com.google.android.gms"
const-string v2, "com.google.android.gms.recovery.RecoveryService"
invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/auth/a;->d:Landroid/content/ComponentName;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.google.android.gms"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
sget-object v1, Lcom/google/android/gms/auth/a;->c:Landroid/content/ComponentName;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
sput-object v0, Lcom/google/android/gms/auth/a;->e:Landroid/content/Intent;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.google.android.gms"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
sget-object v1, Lcom/google/android/gms/auth/a;->d:Landroid/content/ComponentName;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
sput-object v0, Lcom/google/android/gms/auth/a;->f:Landroid/content/Intent;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 11
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v4
const-string v0, "Calling this from your main thread can lead to deadlock"
invoke-static {v0}, Lcom/google/android/gms/internal/hh;->b(Ljava/lang/String;)V
:try_start_b
invoke-static {v4}, Lcom/google/android/gms/common/e;->b(Landroid/content/Context;)V
:try_end_e
.catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_b .. :try_end_e} :catch_54
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_b .. :try_end_e} :catch_67
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v3
iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const-string v5, "clientPackageName"
invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/google/android/gms/auth/a;->b:Ljava/lang/String;
invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_2b
sget-object v5, Lcom/google/android/gms/auth/a;->b:Ljava/lang/String;
invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
new-instance v5, Lcom/google/android/gms/common/f;
invoke-direct {v5}, Lcom/google/android/gms/common/f;-><init>()V
sget-object v3, Lcom/google/android/gms/auth/a;->e:Landroid/content/Intent;
invoke-virtual {v4, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v3
if-eqz v3, :cond_10a
:try_start_38
invoke-virtual {v5}, Lcom/google/android/gms/common/f;->a()Landroid/os/IBinder;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/internal/lm;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ll;
move-result-object v3
invoke-interface {v3, p1, p2, v0}, Lcom/google/android/gms/internal/ll;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
const-string v3, "authtoken"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_4d
.catchall {:try_start_38 .. :try_end_4d} :catchall_d1
.catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4d} :catch_c1
.catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_4d} :catch_f9
move-result v6
if-nez v6, :cond_72
invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
return-object v3
:catch_54
move-exception v0
new-instance v1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->a()I
move-result v2
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->b()Landroid/content/Intent;
move-result-object v0
invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V
throw v1
:catch_67
move-exception v0
new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v1
:cond_72
:try_start_72
const-string v3, "Error"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v3, "userRecoveryIntent"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
const-string v3, "BadAuthentication"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "CaptchaRequired"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "DeviceManagementRequiredOrSyncDisabled"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "NeedPermission"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "NeedsBrowser"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "UserCancel"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_b8
const-string v3, "AppDownloadRequired"
invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d6
:cond_b8
move v3, v2
:goto_b9
if-eqz v3, :cond_d8
new-instance v1, Lcom/google/android/gms/auth/UserRecoverableAuthException;
invoke-direct {v1, v6, v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V
throw v1
:try_end_c1
.catchall {:try_start_72 .. :try_end_c1} :catchall_d1
.catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_c1} :catch_c1
.catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_c1} :catch_f9
:catch_c1
move-exception v0
:try_start_c2
const-string v1, "GoogleAuthUtil"
const-string v2, "GMS remote exception "
invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v0, Ljava/io/IOException;
const-string v1, "remote exception"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_d1
:try_end_d1
.catchall {:try_start_c2 .. :try_end_d1} :catchall_d1
move-exception v0
invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
throw v0
:cond_d6
move v3, v1
goto :goto_b9
:try_start_d8
:cond_d8
const-string v0, "NetworkError"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f0
const-string v0, "ServiceUnavailable"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_f0
const-string v0, "Timeout"
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_102
:cond_f0
move v0, v2
:goto_f1
if-eqz v0, :cond_104
new-instance v0, Ljava/io/IOException;
invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_f9
.catchall {:try_start_d8 .. :try_end_f9} :catchall_d1
.catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_f9} :catch_c1
.catch Ljava/lang/InterruptedException; {:try_start_d8 .. :try_end_f9} :catch_f9
:catch_f9
move-exception v0
:try_start_fa
new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;
const-string v1, "Interrupted"
invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_102
.catchall {:try_start_fa .. :try_end_102} :catchall_d1
:cond_102
move v0, v1
goto :goto_f1
:cond_104
:try_start_104
new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;
invoke-direct {v0, v6}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10a
:try_end_10a
.catchall {:try_start_104 .. :try_end_10a} :catchall_d1
.catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_10a} :catch_c1
.catch Ljava/lang/InterruptedException; {:try_start_104 .. :try_end_10a} :catch_f9
new-instance v0, Ljava/io/IOException;
const-string v1, "Could not bind to service with the given context."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method