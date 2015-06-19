.class  Lco/vine/android/AbstractRecordingActivity$4;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field  hasMovedOut:Z
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
.registers 3
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity$4;->hasMovedOut:Z
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 10
const/4 v6, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v3
packed-switch v3, :pswitch_data_8a
:cond_a
:goto_a
return v5
:pswitch_b
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
iget v3, v3, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I
iget-object v6, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
invoke-static {v6}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;
move-result-object v6
invoke-virtual {v6}, Landroid/util/SparseArray;->size()I
move-result v6
if-eq v3, v6, :cond_a
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$200(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V
iput-boolean v5, p0, Lco/vine/android/AbstractRecordingActivity$4;->hasMovedOut:Z
goto :goto_a
:pswitch_27
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$200(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V
goto :goto_a
:pswitch_31
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
cmpl-float v3, v1, v6
if-ltz v3, :cond_84
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getWidth()I
move-result v3
int-to-float v3, v3
cmpg-float v3, v1, v3
if-gtz v3, :cond_84
cmpl-float v3, v2, v6
if-ltz v3, :cond_84
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getHeight()I
move-result v3
int-to-float v3, v3
cmpg-float v3, v2, v3
if-gtz v3, :cond_84
move v0, v4
:goto_60
if-nez v0, :cond_64
iput-boolean v4, p0, Lco/vine/android/AbstractRecordingActivity$4;->hasMovedOut:Z
:cond_64
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashBackground:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$200(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v6
if-eqz v0, :cond_86
iget-boolean v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->hasMovedOut:Z
if-nez v3, :cond_86
move v3, v4
:goto_71
invoke-virtual {v6, v3}, Landroid/view/View;->setActivated(Z)V
iget-object v3, p0, Lco/vine/android/AbstractRecordingActivity$4;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashButton:Landroid/view/View;
invoke-static {v3}, Lco/vine/android/AbstractRecordingActivity;->access$300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v3
if-eqz v0, :cond_88
iget-boolean v6, p0, Lco/vine/android/AbstractRecordingActivity$4;->hasMovedOut:Z
if-nez v6, :cond_88
:goto_80
invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V
goto :goto_a
:cond_84
move v0, v5
goto :goto_60
:cond_86
move v3, v5
goto :goto_71
:cond_88
move v4, v5
goto :goto_80
:pswitch_data_8a
.packed-switch 0x0
:pswitch_b
:pswitch_27
:pswitch_31
.end packed-switch
.end method