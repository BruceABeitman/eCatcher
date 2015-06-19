.class  Lcom/pinguo/camera360/camera/view/ModePickerView$2;
.super Ljava/lang/Object;
.source "ModePickerView.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
.field private final synthetic val$animItemView:Landroid/view/View;
.field private final synthetic val$deltaX:I
.field private final synthetic val$deltaY:I
.method constructor <init>(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;II)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
iput-object p2, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
iput p3, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$deltaX:I
iput p4, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$deltaY:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/ModePickerView$2;)Lcom/pinguo/camera360/camera/view/ModePickerView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
return-object v0
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 8
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget v4, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$deltaX:I
add-int/2addr v3, v4
iget-object v4, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
iget v5, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$deltaY:I
add-int/2addr v4, v5
#calls: Lcom/pinguo/camera360/camera/view/ModePickerView;->setLayout(Landroid/view/View;II)V
invoke-static {v1, v2, v3, v4}, Lcom/pinguo/camera360/camera/view/ModePickerView;->access$1(Lcom/pinguo/camera360/camera/view/ModePickerView;Landroid/view/View;II)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->this$0:Lcom/pinguo/camera360/camera/view/ModePickerView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/ModePickerView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f040004
invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/camera/view/ModePickerView$2$1;-><init>(Lcom/pinguo/camera360/camera/view/ModePickerView$2;Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/ModePickerView$2;->val$animItemView:Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
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