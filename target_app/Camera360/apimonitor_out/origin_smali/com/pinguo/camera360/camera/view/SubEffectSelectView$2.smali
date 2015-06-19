.class Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;
.super Ljava/lang/Object;
.source "SubEffectSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    #getter for: Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffectAndTitle:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->access$1(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    #getter for: Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->mLayChildEffect:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->access$2(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
