.class Lcom/pinguo/camera360/camera/view/ModePickerView$3;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/ModePickerView;->hideWithAnimation(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$3;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$3;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView;->hide()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$3;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;

    #setter for: Lcom/pinguo/camera360/camera/view/ModePickerView;->mIsHiding:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->access$2(Lcom/pinguo/camera360/camera/view/ModePickerView;Z)V

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
