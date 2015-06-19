.class  Lco/vine/android/recorder/InlineVineRecorder$3;
.super Ljava/lang/Object;
.source "InlineVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/InlineVineRecorder;
.field final synthetic val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
.field final synthetic val$topMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
.method constructor <init>(Lco/vine/android/recorder/InlineVineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
.registers 4
iput-object p1, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->this$0:Lco/vine/android/recorder/InlineVineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->val$topMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
iput-object p3, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->this$0:Lco/vine/android/recorder/InlineVineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/InlineVineRecorder;->mTopMaskView:Landroid/view/View;
if-eqz v0, :cond_b
iget-object v1, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->val$topMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_b
iget-object v1, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->this$0:Lco/vine/android/recorder/InlineVineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/InlineVineRecorder;->mCameraView:Landroid/view/View;
if-eqz v0, :cond_16
iget-object v1, p0, Lco/vine/android/recorder/InlineVineRecorder$3;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_16
return-void
.end method