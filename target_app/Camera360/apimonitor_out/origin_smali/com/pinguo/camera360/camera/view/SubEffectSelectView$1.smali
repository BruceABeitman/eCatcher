.class Lcom/pinguo/camera360/camera/view/SubEffectSelectView$1;
.super Ljava/lang/Object;
.source "SubEffectSelectView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animShowChildEffectView()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SubEffectSelectView$1;->this$0:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    #calls: Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->moveToCurrentItem()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->access$0(Lcom/pinguo/camera360/camera/view/SubEffectSelectView;)V

    return-void
.end method
