.class  Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnClickListener;
.field  forceRefresh:Z
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field  toPlay:Lco/vine/android/recorder/RecordSegment;
.method private constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/recorder/VineRecorder;Lco/vine/android/recorder/VineRecorder$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;-><init>(Lco/vine/android/recorder/VineRecorder;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, -0x1
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
if-nez v0, :cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
#setter for: Lco/vine/android/recorder/VineRecorder;->mLastSelectedPosition:I
invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$4402(Lco/vine/android/recorder/VineRecorder;I)I
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
invoke-virtual {v0, v1}, Lco/vine/android/dragsort/DragSortWidget;->setSelection(I)V
:cond_1b
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
const/4 v1, 0x2
#calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V
:cond_21
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
iget-boolean v2, p0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->playPreview(Lco/vine/android/recorder/RecordSegment;Z)V
const-string v1, " - Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method