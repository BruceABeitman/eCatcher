.class public Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
.super Ljava/lang/Object;
.source "SonyCameraBusinessSettings.java"


# static fields
.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final KEY_AUTHENTICATING:Ljava/lang/String; = "key_auth"

.field public static final KEY_SHOW_COUPON:Ljava/lang/String; = "show_coupon_page"

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "sony_pref_settings"

.field public static final SUCCESS_AUTHENTICATING:I = -0x1

.field private static volatile mInstance:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    const-string/jumbo v1, "sony_pref_settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
    .registers 2

    const-class v1, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->mInstance:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    invoke-direct {v0}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->mInstance:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->mInstance:Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 7

    const-string/jumbo v1, "sony_pref_settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    const-string/jumbo v2, "sony_pref_settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    const-string/jumbo v2, "sony_pref_settings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getAutchCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "key_auth"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getShowCouponPage(Landroid/content/Context;)Z
    .registers 4

    const-string/jumbo v0, "show_coupon_page"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveAutchCode(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "key_auth"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveShowCouponPage(Landroid/content/Context;Z)V
    .registers 4

    const-string/jumbo v0, "show_coupon_page"

    invoke-direct {p0, p1, v0, p2}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
