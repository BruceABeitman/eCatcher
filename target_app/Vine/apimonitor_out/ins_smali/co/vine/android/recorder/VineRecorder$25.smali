.class  Lco/vine/android/recorder/VineRecorder$25;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/recorder/VineRecorder$25; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
move-result-object v0
const/4 v1, 0x0
iput-object v1, v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->toPlay:Lco/vine/android/recorder/RecordSegment;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mPlayButtonOnClickListener:Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2900(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;
move-result-object v0
iput-boolean v3, v0, Lco/vine/android/recorder/VineRecorder$PlayButtonOnClickListener;->forceRefresh:Z
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0, v3}, Lco/vine/android/recorder/VineRecorder;->pausePreview(Z)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
move-result-object v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->undoDelete()V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2300(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/recorder/SegmentEditorAdapter;
move-result-object v0
invoke-virtual {v0, v2}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v1, v0}, Lco/vine/android/recorder/VineRecorder;->showThumbnailOverlay(Lco/vine/android/recorder/RecordSegment;)V
:cond_3a
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
const/4 v1, 0x2
#calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-static {v0, v1}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_53
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mUndoButton:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$4200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_53
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
if-eqz v0, :cond_64
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$25;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mDragSortWidget:Lco/vine/android/dragsort/DragSortWidget;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$2600(Lco/vine/android/recorder/VineRecorder;)Lco/vine/android/dragsort/DragSortWidget;
move-result-object v0
invoke-virtual {v0, v2}, Lco/vine/android/dragsort/DragSortWidget;->setFocused(I)V
:cond_64
const-string v1, " - Lco/vine/android/recorder/VineRecorder$25; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method