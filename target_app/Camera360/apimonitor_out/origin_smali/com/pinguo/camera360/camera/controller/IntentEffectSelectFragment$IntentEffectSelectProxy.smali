.class public Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
.super Ljava/lang/Object;
.source "IntentEffectSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentEffectSelectProxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createGridEffectAdapter(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;

    invoke-virtual {p2}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->getEffectSelectView()Lcom/pinguo/camera360/camera/view/EffectSelectView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getGridView()Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/camera/adapter/IntentDndEffectSelectAdapter;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;)V

    return-object v0
.end method

.method public onPause()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;-><init>()V

    invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-void
.end method

.method public onResume()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/IntentCameraBusinessSettingModel;-><init>()V

    invoke-static {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setInstance(Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    return-void
.end method
