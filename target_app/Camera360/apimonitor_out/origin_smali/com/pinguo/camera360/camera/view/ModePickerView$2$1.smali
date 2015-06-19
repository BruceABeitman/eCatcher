.class Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;
.super Ljava/lang/Object;
.source "ModePickerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/ModePickerView$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/view/ModePickerView$2;

.field private final synthetic val$animItemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/ModePickerView$2;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;->this$1:Lcom/pinguo/camera360/camera/view/ModePickerView$2;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;->val$animItemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;->val$animItemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;->this$1:Lcom/pinguo/camera360/camera/view/ModePickerView$2;

    #getter for: Lcom/pinguo/camera360/camera/view/ModePickerView$2;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->access$0(Lcom/pinguo/camera360/camera/view/ModePickerView$2;)Lcom/pinguo/camera360/camera/view/ModePickerView;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/view/ModePickerView;->mDndPagerModeGrid:Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dndpagergrid/laplanete/mobile/PagedDragDropGrid;->enableGrid()V

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
