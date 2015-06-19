.class Lcom/pinguo/camera360/camera/view/EffectSelectView$5;
.super Ljava/lang/Object;
.source "EffectSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation(Landroid/view/animation/Animation$AnimationListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

.field private final synthetic val$isFromCancel:Z

.field private final synthetic val$listener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;ZLandroid/view/animation/Animation$AnimationListener;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

    iput-boolean p2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->val$isFromCancel:Z

    iput-object p3, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->val$isFromCancel:Z

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hide(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;

    #getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mGridEffect:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$4(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/OnePageDragDropGrid;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$5;->val$listener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_1b
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
