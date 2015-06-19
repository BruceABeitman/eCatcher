.class public Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;
.super Ljava/lang/Object;
.source "GooglePlayServicesUtil.java"


# static fields
.field public static GOOGLE_PLAY_SERVICES_VERSION_CODE:I

.field private static eY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static eZ:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eZ:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    sput v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    const-string v1, "isGooglePlayServicesAvailable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eZ:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesClient;->init()V

    invoke-static {}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionClient;->init()V

    invoke-static {}, Lcom/glympse/android/hal/gms/location/LocationClient;->init()V

    :cond_2a
    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    const-string v1, "GOOGLE_PLAY_SERVICES_VERSION_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_4

    :catch_3b
    move-exception v0

    goto :goto_4
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .registers 6

    const/4 v1, 0x1

    :try_start_1
    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eY:Ljava/lang/Class;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->eZ:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_19

    move-result v0

    :goto_18
    return v0

    :catch_19
    move-exception v0

    :cond_1a
    move v0, v1

    goto :goto_18
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isVersionSupported(Landroid/content/Context;I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v1, p1, :cond_e

    sget v1, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_19

    if-lt v1, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :catch_19
    move-exception v1

    goto :goto_e
.end method
