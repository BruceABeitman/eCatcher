.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$3;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
    invoke-static {v5}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->setSubEffect(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->clearEffectNewFlag(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->getSelectEffectIndex()I

    move-result v2

    invoke-virtual {v0, p3}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->setSelectEffect(I)V

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->setViewBackgroud(ILandroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p3, p2, p1}, Lcom/pinguo/camera360/camera/adapter/EffectRenderGridAdapter;->setViewBackgroud(ILandroid/view/View;Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectTypeByEffectKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/EffectType;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    iget-object v6, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setPreferredEffect(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    iget-object v6, v1, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSubEffectForEffectMode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
