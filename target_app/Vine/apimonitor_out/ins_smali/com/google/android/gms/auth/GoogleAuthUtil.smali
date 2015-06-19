.class public final Lcom/google/android/gms/auth/GoogleAuthUtil;
.super Ljava/lang/Object;
.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"
.field public static final KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String; = null
.field public static final KEY_CALLER_UID:Ljava/lang/String; = null
.field public static final KEY_REQUEST_ACTIONS:Ljava/lang/String; = "request_visible_actions"
.field public static final KEY_REQUEST_VISIBLE_ACTIVITIES:Ljava/lang/String; = "request_visible_actions"
.field public static final KEY_SUPPRESS_PROGRESS_SCREEN:Ljava/lang/String; = "suppressProgressScreen"
.field private static final yR:Landroid/content/ComponentName;
.field private static final yS:Landroid/content/ComponentName;
.field private static final yT:Landroid/content/Intent;
.field private static final yU:Landroid/content/Intent;
.method static constructor <clinit>()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_51
const-string v0, "callerUid"
:goto_8
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_CALLER_UID:Ljava/lang/String;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_54
const-string v0, "androidPackageName"
:goto_12
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;
new-instance v0, Landroid/content/ComponentName;
const-string v1, "com.google.android.gms"
const-string v2, "com.google.android.gms.auth.GetToken"
invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yR:Landroid/content/ComponentName;
new-instance v0, Landroid/content/ComponentName;
const-string v1, "com.google.android.gms"
const-string v2, "com.google.android.gms.recovery.RecoveryService"
invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yS:Landroid/content/ComponentName;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.google.android.gms"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->yR:Landroid/content/ComponentName;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yT:Landroid/content/Intent;
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.google.android.gms"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->yS:Landroid/content/ComponentName;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
sput-object v0, Lcom/google/android/gms/auth/GoogleAuthUtil;->yU:Landroid/content/Intent;
return-void
:cond_51
const-string v0, "callerUid"
goto :goto_8
:cond_54
const-string v0, "androidPackageName"
goto :goto_12
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 8
if-nez p3, :cond_7
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:try_start_7
:cond_7
invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
:try_end_a
.catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_7 .. :try_end_a} :catch_c
.catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_7 .. :try_end_a} :catch_36
move-result-object v0
return-object v0
:catch_c
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;->getConnectionStatusCode()I
move-result v0
invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->b(Landroid/content/Context;I)Z
move-result v1
if-eqz v1, :cond_32
new-instance v0, Lcom/google/android/gms/auth/GoogleAuthUtil$a;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x7530
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_2a
new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;
const-string v1, "User intervention required. Notification has been pushed."
invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V
throw v0
:cond_32
invoke-static {v0, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V
goto :goto_2a
:catch_36
move-exception v0
new-instance v0, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;
const-string v1, "User intervention required. Notification has been pushed."
invoke-direct {v0, v1}, Lcom/google/android/gms/auth/UserRecoverableNotifiedException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static ac(Ljava/lang/String;)Z
.registers 2
const-string v0, "NetworkError"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
const-string v0, "ServiceUnavailable"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
const-string v0, "Timeout"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private static ad(Ljava/lang/String;)Z
.registers 2
const-string v0, "BadAuthentication"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "CaptchaRequired"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "DeviceManagementRequiredOrSyncDisabled"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "NeedPermission"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "NeedsBrowser"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "UserCancel"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_38
const-string v0, "AppDownloadRequired"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
:cond_38
const/4 v0, 0x1
:goto_39
return v0
:cond_3a
const/4 v0, 0x0
goto :goto_39
.end method
.method private static b(Landroid/content/Context;I)Z
.registers 6
const/4 v0, 0x1
if-ne p1, v0, :cond_15
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
:try_start_7
const-string v2, "com.google.android.gms"
const/16 v3, 0x2000
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
:try_end_11
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_11} :catch_14
if-eqz v1, :cond_15
:goto_13
return v0
:catch_14
move-exception v0
:cond_15
const/4 v0, 0x0
goto :goto_13
.end method
.method public static clearToken(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-string v0, "Calling this from your main thread can lead to deadlock"
invoke-static {v0}, Lcom/google/android/gms/internal/hn;->az(Ljava/lang/String;)V
invoke-static {v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->w(Landroid/content/Context;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v2
iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const-string v3, "clientPackageName"
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_29
sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;
invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_29
new-instance v2, Lcom/google/android/gms/common/a;
invoke-direct {v2}, Lcom/google/android/gms/common/a;-><init>()V
sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->yT:Landroid/content/Intent;
const/4 v4, 0x1
invoke-virtual {v1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v3
if-eqz v3, :cond_79
:try_start_37
invoke-virtual {v2}, Lcom/google/android/gms/common/a;->er()Landroid/os/IBinder;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/internal/s$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/s;
move-result-object v3
invoke-interface {v3, p1, v0}, Lcom/google/android/gms/internal/s;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v0
sget-object v3, Lcom/google/android/gms/internal/ge;->zI:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "booleanResult"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6c
new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;
invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_57
.catchall {:try_start_37 .. :try_end_57} :catchall_67
.catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_57} :catch_57
.catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_57} :catch_70
:catch_57
move-exception v0
:try_start_58
const-string v3, "GoogleAuthUtil"
const-string v4, "GMS remote exception "
invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v0, Ljava/io/IOException;
const-string v3, "remote exception"
invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_67
.catchall {:try_start_58 .. :try_end_67} :catchall_67
:catchall_67
move-exception v0
invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
throw v0
:cond_6c
invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
return-void
:catch_70
move-exception v0
:try_start_71
new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;
const-string v3, "Interrupted"
invoke-direct {v0, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_79
.catchall {:try_start_71 .. :try_end_79} :catchall_67
:cond_79
new-instance v0, Ljava/io/IOException;
const-string v1, "Could not bind to service with the given context."
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static g(Landroid/content/Intent;)V
.registers 3
const/4 v0, 0x1
if-nez p0, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Callback cannot be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
:try_start_10
invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
:try_end_13
.catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_13} :catch_14
return-void
:catch_14
move-exception v0
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Parameter callback contains invalid data. It must be serializable using toUri() and parseUri()."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 10
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-string v1, "Calling this from your main thread can lead to deadlock"
invoke-static {v1}, Lcom/google/android/gms/internal/hn;->az(Ljava/lang/String;)V
invoke-static {v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->w(Landroid/content/Context;)V
if-nez p3, :cond_55
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:goto_13
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
const-string v3, "clientPackageName"
invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;
invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2b
sget-object v3, Lcom/google/android/gms/auth/GoogleAuthUtil;->KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String;
invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
new-instance v3, Lcom/google/android/gms/common/a;
invoke-direct {v3}, Lcom/google/android/gms/common/a;-><init>()V
sget-object v1, Lcom/google/android/gms/auth/GoogleAuthUtil;->yT:Landroid/content/Intent;
const/4 v4, 0x1
invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v1
if-eqz v1, :cond_a6
:try_start_39
invoke-virtual {v3}, Lcom/google/android/gms/common/a;->er()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/s$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/s;
move-result-object v1
invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/s;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
move-result-object v1
const-string v4, "authtoken"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_4e
.catchall {:try_start_39 .. :try_end_4e} :catchall_86
.catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4e} :catch_76
.catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_4e} :catch_97
move-result v5
if-nez v5, :cond_5c
invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
return-object v4
:cond_55
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
move-object p3, v0
goto :goto_13
:cond_5c
:try_start_5c
const-string v4, "Error"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "userRecoveryIntent"
invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/content/Intent;
invoke-static {v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->ad(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_8b
new-instance v5, Lcom/google/android/gms/auth/UserRecoverableAuthException;
invoke-direct {v5, v4, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V
throw v5
:catch_76
:try_end_76
.catchall {:try_start_5c .. :try_end_76} :catchall_86
.catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_76} :catch_76
.catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_76} :catch_97
move-exception v1
:try_start_77
const-string v4, "GoogleAuthUtil"
const-string v5, "GMS remote exception "
invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
new-instance v1, Ljava/io/IOException;
const-string v4, "remote exception"
invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_86
:try_end_86
.catchall {:try_start_77 .. :try_end_86} :catchall_86
move-exception v1
invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
throw v1
:cond_8b
:try_start_8b
invoke-static {v4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->ac(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a0
new-instance v1, Ljava/io/IOException;
invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
:catch_97
:try_end_97
.catchall {:try_start_8b .. :try_end_97} :catchall_86
.catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_97} :catch_76
.catch Ljava/lang/InterruptedException; {:try_start_8b .. :try_end_97} :catch_97
move-exception v1
:try_start_98
new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;
const-string v4, "Interrupted"
invoke-direct {v1, v4}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_a0
.catchall {:try_start_98 .. :try_end_a0} :catchall_86
:try_start_a0
:cond_a0
new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;
invoke-direct {v1, v4}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_a6
.catchall {:try_start_a0 .. :try_end_a6} :catchall_86
.catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a6} :catch_76
.catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a6} :catch_97
:cond_a6
new-instance v1, Ljava/io/IOException;
const-string v2, "Could not bind to service with the given context."
invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 6
if-nez p3, :cond_7
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:cond_7
const-string v0, "handle_notification"
const/4 v1, 0x1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Ljava/lang/String;
.registers 7
invoke-static {p4}, Lcom/google/android/gms/auth/GoogleAuthUtil;->g(Landroid/content/Intent;)V
if-nez p3, :cond_a
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:cond_a
const-string v0, "callback_intent"
invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "handle_notification"
const/4 v1, 0x1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getTokenWithNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 8
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Authority cannot be empty or null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
if-nez p3, :cond_15
new-instance p3, Landroid/os/Bundle;
invoke-direct {p3}, Landroid/os/Bundle;-><init>()V
:cond_15
if-nez p5, :cond_1c
new-instance p5, Landroid/os/Bundle;
invoke-direct {p5}, Landroid/os/Bundle;-><init>()V
:cond_1c
invoke-static {p5}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V
const-string v0, "authority"
invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "sync_extras"
invoke-virtual {p3, v0, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v0, "handle_notification"
const/4 v1, 0x1
invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v0
const-string v1, "com.google"
invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static w(Landroid/content/Context;)V
.registers 5
:try_start_0
invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->w(Landroid/content/Context;)V
:try_end_3
.catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_3} :catch_4
.catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_3} :catch_17
return-void
:catch_4
move-exception v0
new-instance v1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I
move-result v2
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V
throw v1
:catch_17
move-exception v0
new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;
invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V
throw v1
.end method