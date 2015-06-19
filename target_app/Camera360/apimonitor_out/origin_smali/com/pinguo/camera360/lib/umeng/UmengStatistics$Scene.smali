.class public Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Scene;
.super Ljava/lang/Object;
.source "UmengStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/umeng/UmengStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scene"
.end annotation


# static fields
.field private static final SCENE_3_1:Ljava/lang/String; = "scene_3_1"

.field private static final SCENE_3_2:Ljava/lang/String; = "scene_3_2"

.field private static final SCENE_3_3:Ljava/lang/String; = "scene_3_3"

.field private static final SCENE_3_4:Ljava/lang/String; = "scene_3_4"

.field private static final SCENE_3_5:Ljava/lang/String; = "scene_3_5"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sceneDownloadFail(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->scene:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:scene_main action:download other:fail event_id:id_8_3id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scene_3_3"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_3_3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sceneDownloadSuccess(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->scene:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "activity:scene_main action:download other:success event_id:id_8_2id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbAppendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scene_3_2"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_3_2_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sceneLayShow()V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scene_3_1"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->scene:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->scene_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->show:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->id_8_1:Lcom/pinguo/camera360/lib/feedback/FeventId$scene;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityAction(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "scene_3_1"

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sceneSelected(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scene_3_4"

    invoke-static {v0, v1, p0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->scene:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->scene_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->click:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$scene;->scene_template:Lcom/pinguo/camera360/lib/feedback/F$scene;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->id_8_5:Lcom/pinguo/camera360/lib/feedback/FeventId$scene;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, p0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionSceneString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$scene;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_3_4_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method

.method public static sceneUsed(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "scene_3_5"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/pinguo/camera360/lib/feedback/F$key;->scene:Lcom/pinguo/camera360/lib/feedback/F$key;

    const-string/jumbo v1, "_c360-adr-5.4.5_"

    sget-object v2, Lcom/pinguo/camera360/lib/feedback/F$activity;->scene_main:Lcom/pinguo/camera360/lib/feedback/F$activity;

    sget-object v3, Lcom/pinguo/camera360/lib/feedback/F$action;->use:Lcom/pinguo/camera360/lib/feedback/F$action;

    sget-object v4, Lcom/pinguo/camera360/lib/feedback/F$scene;->scene_template:Lcom/pinguo/camera360/lib/feedback/F$scene;

    sget-object v5, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->id_8_6:Lcom/pinguo/camera360/lib/feedback/FeventId$scene;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/feedback/FeventId$scene;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, p0, v5}, Lcom/pinguo/camera360/lib/feedback/FLogger;->fbActivityActionSceneString(Lcom/pinguo/camera360/lib/feedback/F$activity;Lcom/pinguo/camera360/lib/feedback/F$action;Lcom/pinguo/camera360/lib/feedback/F$scene;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/lib/feedback/FLogger;->i(Lcom/pinguo/camera360/lib/feedback/F$key;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scene_3_5_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics;->getLog(Ljava/lang/String;)V

    return-void
.end method
