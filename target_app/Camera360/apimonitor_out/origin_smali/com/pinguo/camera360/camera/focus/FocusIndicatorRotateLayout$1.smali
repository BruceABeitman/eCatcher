.class Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$1;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$1;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->invalidate()V

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
