.class Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwitchCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LearnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;-><init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->setOff()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;->this$0:Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;

    invoke-virtual {v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->setOn()V

    goto :goto_d
.end method
