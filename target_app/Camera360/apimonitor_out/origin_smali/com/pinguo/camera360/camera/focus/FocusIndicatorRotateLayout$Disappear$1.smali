.class Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;->this$1:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;->this$1:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;

    #getter for: Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->access$1(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->access$0(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;->this$1:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;

    #getter for: Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->access$1(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
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
