.class Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disappear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear$1;-><init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;->this$0:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    const/4 v2, 0x0

    #setter for: Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v1, v2}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->access$1(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;I)V

    return-void
.end method
