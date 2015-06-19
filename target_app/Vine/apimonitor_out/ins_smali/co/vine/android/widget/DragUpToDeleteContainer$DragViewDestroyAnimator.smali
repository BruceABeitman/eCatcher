.class  Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;
.super Lco/vine/android/animation/SmoothAnimator;
.source "DragUpToDeleteContainer.java"
.field private mDeltaY:I
.field private mStartY:I
.field final synthetic this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
.method public constructor <init>(Lco/vine/android/widget/DragUpToDeleteContainer;FI)V
.registers 4
iput-object p1, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/animation/SmoothAnimator;-><init>(Landroid/view/View;FI)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#getter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
invoke-static {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$000(Lco/vine/android/widget/DragUpToDeleteContainer;)I
move-result v0
iput v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->mStartY:I
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#getter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
invoke-static {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$000(Lco/vine/android/widget/DragUpToDeleteContainer;)I
move-result v0
iget-object v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#getter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewHeight:I
invoke-static {v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$100(Lco/vine/android/widget/DragUpToDeleteContainer;)I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->mDeltaY:I
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
const/4 v1, 0x1
#setter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDestroying:Z
invoke-static {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$202(Lco/vine/android/widget/DragUpToDeleteContainer;Z)Z
const-string v1, " - Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
const/4 v1, 0x0
#setter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewAlpha:F
invoke-static {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$302(Lco/vine/android/widget/DragUpToDeleteContainer;F)F
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
const/4 v1, 0x0
#setter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDestroying:Z
invoke-static {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$202(Lco/vine/android/widget/DragUpToDeleteContainer;Z)Z
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#calls: Lco/vine/android/widget/DragUpToDeleteContainer;->destroyDragView()V
invoke-static {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$400(Lco/vine/android/widget/DragUpToDeleteContainer;)V
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#getter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
invoke-static {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$500(Lco/vine/android/widget/DragUpToDeleteContainer;)Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
#getter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragUpListener:Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
invoke-static {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$500(Lco/vine/android/widget/DragUpToDeleteContainer;)Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;
move-result-object v0
invoke-interface {v0}, Lco/vine/android/widget/DragUpToDeleteContainer$DragUpListener;->viewDestroyFinished()V
:cond_22
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
invoke-virtual {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->invalidate()V
const-string v1, " - Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpdate(FF)V
.registers 6
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
iget v1, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->mStartY:I
int-to-float v1, v1
iget v2, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->mDeltaY:I
int-to-float v2, v2
mul-float/2addr v2, p2
sub-float/2addr v1, v2
float-to-int v1, v1
#setter for: Lco/vine/android/widget/DragUpToDeleteContainer;->mDragViewY:I
invoke-static {v0, v1}, Lco/vine/android/widget/DragUpToDeleteContainer;->access$002(Lco/vine/android/widget/DragUpToDeleteContainer;I)I
iget-object v0, p0, Lco/vine/android/widget/DragUpToDeleteContainer$DragViewDestroyAnimator;->this$0:Lco/vine/android/widget/DragUpToDeleteContainer;
invoke-virtual {v0}, Lco/vine/android/widget/DragUpToDeleteContainer;->invalidate()V
return-void
.end method