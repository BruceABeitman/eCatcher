.class  Lco/vine/android/recorder/VineRecorder$21;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
if-eqz v0, :cond_33
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v1
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mVideoPlayer:Lco/vine/android/player/SdkVideoView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/player/SdkVideoView;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$3400(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$21;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonContainer:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/recorder/VineRecorder;->access$3400(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v1, v0, p2, v2, v3}, Lco/vine/android/dragsort/DragSortWidget;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;II)Z
move-result v0
:goto_32
return v0
:cond_33
const/4 v0, 0x0
goto :goto_32
.end method