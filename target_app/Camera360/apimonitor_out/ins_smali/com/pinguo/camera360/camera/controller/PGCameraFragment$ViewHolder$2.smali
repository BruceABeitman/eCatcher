.class  Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.field private final synthetic val$asiGestureDetector:Landroid/view/GestureDetector;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Landroid/view/GestureDetector;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->val$asiGestureDetector:Landroid/view/GestureDetector;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;->val$asiGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method