.class Lcom/pinguo/camera360/camera/view/EffectSelectView$3;
.super Ljava/lang/Object;
.source "EffectSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/EffectSelectView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

.field private final synthetic val$guideTvBox:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->val$guideTvBox:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$3;->val$guideTvBox:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAddMoreEffectTipsVisibility(Z)V

    return-void
.end method
