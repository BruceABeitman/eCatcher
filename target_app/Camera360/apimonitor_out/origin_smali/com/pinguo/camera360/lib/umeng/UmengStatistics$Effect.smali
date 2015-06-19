.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Effect;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Effect"
.end annotation


# static fields
.field private static final EFFECT_2_1:Ljava/lang/String; = "effect_2_1"

.field private static final EFFECT_2_10:Ljava/lang/String; = "effect_2_10"

.field private static final EFFECT_2_2:Ljava/lang/String; = "effect_2_2"

.field private static final EFFECT_2_3:Ljava/lang/String; = "effect_2_3"

.field private static final EFFECT_2_4:Ljava/lang/String; = "effect_2_4"

.field private static final EFFECT_2_5:Ljava/lang/String; = "effect_2_5"

.field private static final EFFECT_2_6:Ljava/lang/String; = "effect_2_6"

.field private static final EFFECT_2_7:Ljava/lang/String; = "effect_2_7"

.field private static final EFFECT_2_8:Ljava/lang/String; = "effect_2_8"

.field private static final EFFECT_2_9:Ljava/lang/String; = "effect_2_9"

.field private static final EFFECT_LAY_CAMERA_PREVIEW:Ljava/lang/String; = "camera_preview"

.field private static final EFFECT_LAY_CHANGE:Ljava/lang/String; = "change"

.field private static final EFFECT_LAY_LONG_CLICK:Ljava/lang/String; = "long_click"

.field private static final EFFECT_LAY_PHOTO_EDIT:Ljava/lang/String; = "photo_edit"

.field private static final EFFECT_LAY_PICTURE_PREVIEW:Ljava/lang/String; = "picture_preview"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectChildSaveWithPicturePreview(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_6"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_3:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_6_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectChildSelectWithPicturePreview(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_5"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_2:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_5_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectEnterStore(I)V
    .registers 8

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_78

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "effect_2_1"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "effect_2_1_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "camera_preview"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_8:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_40
    const-string/jumbo v0, "picture_preview"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_preview:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_8:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5c
    const-string/jumbo v0, "photo_edit"

    sget-object v1, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v2, "_c360-adr-5.4.5_"

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$activity;->gallery_small_activity:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$action;->enter:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_store:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v6, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_8:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v6}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionActivity(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_24
        :pswitch_40
        :pswitch_5c
    .end packed-switch
.end method

.method public static effectLayFunction(I)V
    .registers 4

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_2c

    :goto_6
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "effect_2_9"

    invoke-static {v1, v2, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "effect_2_9_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void

    :pswitch_24
    const-string/jumbo v0, "long_click"

    goto :goto_6

    :pswitch_28
    const-string/jumbo v0, "change"

    goto :goto_6

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method public static effectLayFunctionUninstall(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_10"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_select:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->uninstall:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->id_11_12:Lcom/pinguo/camera360/lib/feedback/FeventId$store;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$store;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_10_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectSavePhotoEdit(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_8"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_5:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_8_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectSelect(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_2"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_select:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_7:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_2_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectSelectPhotoEdit(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_7"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->effect_edit_page:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_4:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_7_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectUsedNoRender(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_3"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->shoot:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_1:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static effectUsedWithRender(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "effect_2_4"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->effect:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->camera_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->shoot:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->id_3_6:Lcom/pinguo/camera360/lib/feedback/FeventId$effect;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$effect;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, p0, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionEffect(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "effect_2_4_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method
