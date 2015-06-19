.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Store"
.end annotation


# static fields
.field private static final STORE_9_1:Ljava/lang/String; = "store_9_1"

.field private static final STORE_9_10:Ljava/lang/String; = "store_9_10"

.field private static final STORE_9_11:Ljava/lang/String; = "store_9_11"

.field private static final STORE_9_12:Ljava/lang/String; = "store_9_12"

.field private static final STORE_9_13:Ljava/lang/String; = "store_9_13"

.field private static final STORE_9_14:Ljava/lang/String; = "store_9_14"

.field private static final STORE_9_15:Ljava/lang/String; = "store_9_15"

.field private static final STORE_9_16:Ljava/lang/String; = "store_9_16"

.field private static final STORE_9_17:Ljava/lang/String; = "store_9_17"

.field private static final STORE_9_2:Ljava/lang/String; = "store_9_2"

.field private static final STORE_9_3:Ljava/lang/String; = "store_9_3"

.field private static final STORE_9_4:Ljava/lang/String; = "store_9_4"

.field private static final STORE_9_5:Ljava/lang/String; = "store_9_5"

.field private static final STORE_9_6:Ljava/lang/String; = "store_9_6"

.field private static final STORE_9_7:Ljava/lang/String; = "store_9_7"

.field private static final STORE_9_8:Ljava/lang/String; = "store_9_8"

.field private static final STORE_9_9:Ljava/lang/String; = "store_9_9"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static storeCameraBannerClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    if-le v2, v3, :cond_24

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:mode_selected action:click other:banner event_id:id_11_13 bannerid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v3, "_c360-adr-5.4.5_"

    invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "store_9_15"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "store_9_15_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeCameraBannerShow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    if-le v2, v3, :cond_24

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:mode_selected action:shows other:banner event_id:id_11_15 bannerid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v3, "_c360-adr-5.4.5_"

    invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "store_9_17"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "store_9_17_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectBannerClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    if-le v2, v3, :cond_24

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:effect_store action:click other:banner event_id:id_11_14 bannerid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v3, "_c360-adr-5.4.5_"

    invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "store_9_14"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "store_9_14_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectBannerShow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    if-le v2, v3, :cond_24

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:effect_store action:shows other:banner event_id:id_11_16 bannerid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v3, "_c360-adr-5.4.5_"

    invoke-static {v1}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "store_9_16"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "store_9_16_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectLayInstall(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_8"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->install:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_8:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_8_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectLayShow(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_7"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_7:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_7_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectMoreLayInstall(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_9"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->install:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_9:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_9_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectMoreLayUninstall(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_10"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->uninstall:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_10:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_10_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectMoreOpen(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_13"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_13_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeEffectOpen(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_12"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_12_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeLanguageChange()V
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_11"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "store_9_11"

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeLayInstall(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_2"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->install:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_2:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_2_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeLayOpen(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_5"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->open:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_3:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_5_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeMoreLayInstall(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_3"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->install:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_4:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeMoreLayOpen(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_6"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->open:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_6:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_6_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeMoreLayShow(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_1:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_1"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_1_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static storeModeMoreLayUninstall(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p0, "CAMERA_MODE_EFFECT"

    :cond_c
    const-string/jumbo v0, "81ca4395630a4d87a292d91c315b4ed3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string/jumbo p0, "CAMERA_MODE_COLOR_SHIFT"

    :cond_18
    const-string/jumbo v0, "9de2bb7862be4c5398421b71ad444c9e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "CAMERA_MODE_FUNNY"

    :cond_24
    const-string/jumbo v0, "23382e49b7f64d5fb822aba5a29e927f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo p0, "CAMERA_MODE_SCENE"

    :cond_30
    const-string/jumbo v0, "bc833a31761642e78dc09c16e4366dd8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo p0, "CAMERA_MODE_SKIN"

    :cond_3c
    const-string/jumbo v0, "c0d064951ba5413391b702dcc44580f0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo p0, "CAMERA_MODE_SMART"

    :cond_48
    const-string/jumbo v0, "bb1b1f0e37114931914b579bdd1bbcf0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "CAMERA_MODE_SOUND"

    :cond_54
    const-string/jumbo v0, "b4c3e48bf1f643208cab154a43884324"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo p0, "CAMERA_MODE_TILT_SHIFT"

    :cond_60
    const-string/jumbo v0, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string/jumbo p0, "CAMERA_MODE_QR"

    :cond_6c
    const-string/jumbo v0, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string/jumbo p0, "CAMERA_MODE_VIDEO"

    :cond_78
    const-string/jumbo v0, "e46227d3cf94f4bbab8edb68d0c8d68e"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string/jumbo p0, "CAMERA_MODE_ID_PHOTO"

    :cond_84
    const-string/jumbo v0, "7b3b6b04486f12d95690f533f5253a74"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string/jumbo p0, "CAMERA_MODE_SONY"

    :cond_90
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "store_9_4"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->store:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->uninstall:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_5:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionMode(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "store_9_4_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method
