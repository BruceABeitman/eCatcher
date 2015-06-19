.class  Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;->this$1:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;->this$1:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$4400(Lco/vine/android/recorder/VineRecorder;)I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_1c
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;->this$1:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector$1;->this$1:Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;
iget v1, v1, Lco/vine/android/recorder/VineRecorder$SegmentChangeDetector;->lastFirstItem:I
invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setFocused(I)V
:cond_1c
return-void
.end method