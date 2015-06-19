.class  Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/OrientationManager;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public onOrientationChanged(I)V
.registers 4
const/4 v0, -0x1
if-ne p1, v0, :cond_4
:cond_3
:goto_3
return-void
:cond_4
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
iget-object v1, p0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
#getter for: Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
invoke-static {v1}, Lcom/pinguo/camera360/gallery/OrientationManager;->access$0(Lcom/pinguo/camera360/gallery/OrientationManager;)I
move-result v1
#calls: Lcom/pinguo/camera360/gallery/OrientationManager;->roundOrientation(II)I
invoke-static {p1, v1}, Lcom/pinguo/camera360/gallery/OrientationManager;->access$1(II)I
move-result v1
#setter for: Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientation:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/OrientationManager;->access$2(Lcom/pinguo/camera360/gallery/OrientationManager;I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
#getter for: Lcom/pinguo/camera360/gallery/OrientationManager;->mOrientationLocked:Z
invoke-static {v0}, Lcom/pinguo/camera360/gallery/OrientationManager;->access$3(Lcom/pinguo/camera360/gallery/OrientationManager;)Z
move-result v0
if-eqz v0, :cond_3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/OrientationManager$MyOrientationEventListener;->this$0:Lcom/pinguo/camera360/gallery/OrientationManager;
#calls: Lcom/pinguo/camera360/gallery/OrientationManager;->updateCompensation()V
invoke-static {v0}, Lcom/pinguo/camera360/gallery/OrientationManager;->access$4(Lcom/pinguo/camera360/gallery/OrientationManager;)V
goto :goto_3
.end method