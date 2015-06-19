.class  Lco/vine/android/recorder/VineRecorder$29;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$29;->this$0:Lco/vine/android/recorder/VineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$29;->val$params:Landroid/view/ViewGroup$LayoutParams;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$29;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$29;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$29;->val$params:Landroid/view/ViewGroup$LayoutParams;
invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_13
return-void
.end method