.class  Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;
.super Ljava/lang/Object;
.source "PhotoProcessView.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessView;
.method constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F
move-result v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
packed-switch v2, :pswitch_data_1e
:goto_f
:pswitch_f
const/4 v2, 0x1
return v2
:pswitch_11
iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessView;
#calls: Lcom/pinguo/camera360/save/processer/PhotoProcessView;->updatePosition(FF)V
invoke-static {v2, v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessView;FF)V
goto :goto_f
:pswitch_17
iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessView;
#calls: Lcom/pinguo/camera360/save/processer/PhotoProcessView;->updatePosition(FF)V
invoke-static {v2, v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessView;FF)V
goto :goto_f
nop
:pswitch_data_1e
.packed-switch 0x0
:pswitch_f
:pswitch_17
:pswitch_11
.end packed-switch
.end method