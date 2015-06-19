.class  Lco/vine/android/recorder/VineRecorder$4;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v5, 0x0
const/high16 v4, 0x3f80
const v3, 0x3eb33333
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$100(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_57
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->canChangeFocus()Z
move-result v1
if-eqz v1, :cond_90
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$300(Lco/vine/android/recorder/VineRecorder;)Landroid/content/res/Resources;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusEnabledDrawable:I
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$200(Lco/vine/android/recorder/VineRecorder;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_28
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mIsMessaging:Z
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$500(Lco/vine/android/recorder/VineRecorder;)Z
move-result v1
if-eqz v1, :cond_3b
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEnabledColor:I
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$600(Lco/vine/android/recorder/VineRecorder;)I
move-result v1
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
:cond_3b
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/VineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->canChangeFocus()Z
move-result v1
if-eqz v1, :cond_a1
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$100(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V
:goto_4e
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$100(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-static {v1, v0}, Lco/vine/android/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
:cond_57
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lco/vine/android/recorder/VineRecorder;->setAutoFocusing(Z)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/ViewGroup;
move-result-object v1
if-eqz v1, :cond_78
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-boolean v1, v1, Lco/vine/android/recorder/VineRecorder;->mFrontFacing:Z
if-eqz v1, :cond_ab
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V
:cond_78
:goto_78
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$800(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ToggleButton;
move-result-object v1
if-eqz v1, :cond_8f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGridSwitch:Landroid/widget/ToggleButton;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$800(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ToggleButton;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mIsGridOn:Z
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$900(Lco/vine/android/recorder/VineRecorder;)Z
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V
:cond_8f
return-void
:cond_90
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$300(Lco/vine/android/recorder/VineRecorder;)Landroid/content/res/Resources;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusDisabledDrawable:I
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$400(Lco/vine/android/recorder/VineRecorder;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_28
:cond_a1
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFocusView:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$100(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V
goto :goto_4e
:cond_ab
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$4;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mCameraSwitcher:Landroid/view/ViewGroup;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V
goto :goto_78
.end method