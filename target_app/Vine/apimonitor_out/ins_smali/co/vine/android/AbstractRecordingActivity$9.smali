.class  Lco/vine/android/AbstractRecordingActivity$9;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.field final synthetic val$goToCamera:Z
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;Z)V
.registers 3
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$9;->this$0:Lco/vine/android/AbstractRecordingActivity;
iput-boolean p2, p0, Lco/vine/android/AbstractRecordingActivity$9;->val$goToCamera:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 5
const/16 v1, 0x8
iget-boolean v0, p0, Lco/vine/android/AbstractRecordingActivity$9;->val$goToCamera:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$9;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1100(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_f
const/4 v0, 0x0
return v0
:cond_11
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$9;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mLargeThumbnailOverlay:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1200(Lco/vine/android/AbstractRecordingActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$9;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mAnimationPreviewOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_f
.end method