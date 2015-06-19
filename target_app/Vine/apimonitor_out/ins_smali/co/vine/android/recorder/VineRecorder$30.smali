.class  Lco/vine/android/recorder/VineRecorder$30;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field final synthetic val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
.field final synthetic val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
.registers 4
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$30;->this$0:Lco/vine/android/recorder/VineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$30;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iput-object p3, p0, Lco/vine/android/recorder/VineRecorder$30;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$30;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mCameraView:Landroid/view/View;
if-eqz v0, :cond_20
const-string v1, "Setting preview sizes to {} {}."
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$30;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$30;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
iget v3, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$30;->val$cameraViewParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_20
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$30;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/VineRecorder;->mBottomMaskView:Landroid/view/View;
if-eqz v0, :cond_2b
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$30;->val$bottomMaskParams:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_2b
return-void
.end method