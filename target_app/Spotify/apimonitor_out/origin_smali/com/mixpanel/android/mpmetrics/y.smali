.class final Lcom/mixpanel/android/mpmetrics/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Boolean;

.field private final d:Landroid/util/DisplayMetrics;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_c
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_19} :catch_74

    :try_start_19
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_1e} :catch_9b

    move-result-object v0

    :goto_1f
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/y;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->f:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_27
    const-string v1, "hasSystemFeature"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_34} :catch_80

    move-result-object v0

    move-object v1, v0

    :goto_36
    if-eqz v1, :cond_9e

    const/4 v0, 0x1

    :try_start_39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "android.hardware.nfc"

    aput-object v5, v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_46} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_46} :catch_8d

    const/4 v4, 0x1

    :try_start_47
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "android.hardware.telephony"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_47 .. :try_end_54} :catch_99
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_54} :catch_97

    move-object v2, v1

    :goto_55
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->b:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/y;->c:Ljava/lang/Boolean;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->d:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/y;->d:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    :catch_74
    move-exception v0

    move-object v0, v2

    :goto_76
    const-string v1, "MixpanelAPI"

    const-string v4, "System information constructed with a context that apparently doesn\'t exist."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    move-object v0, v2

    goto :goto_1f

    :catch_80
    move-exception v0

    move-object v1, v2

    goto :goto_36

    :catch_83
    move-exception v0

    move-object v0, v2

    :goto_85
    const-string v1, "MixpanelAPI"

    const-string v3, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_8d
    move-exception v0

    move-object v0, v2

    :goto_8f
    const-string v1, "MixpanelAPI"

    const-string v3, "System version appeared to support PackageManager.hasSystemFeature, but we were unable to call it."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :catch_97
    move-exception v1

    goto :goto_8f

    :catch_99
    move-exception v1

    goto :goto_85

    :catch_9b
    move-exception v0

    move-object v0, v1

    goto :goto_76

    :cond_9e
    move-object v0, v2

    goto :goto_55
.end method

.method public static g()Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/util/DisplayMetrics;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->d:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    move-object v0, v1

    goto :goto_11
.end method

.method public final f()Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_22

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_22
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1f

    const-string v0, "none"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_20

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "ble"

    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "classic"

    goto :goto_1f
.end method
