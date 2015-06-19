.class  Lco/vine/android/recorder/VineRecorder$10;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 9
const-wide/16 v6, 0xfa
const/4 v5, 0x0
const/high16 v4, 0x3f80
const/4 v3, 0x0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_35
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mEditorButtons:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1700(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_35
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_7f
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v0
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
neg-int v2, v0
div-int/lit8 v2, v2, 0x2
int-to-float v2, v2
invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$10;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mThumbnailList:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$1800(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
move-result-object v1
invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V
:cond_7f
return-void
.end method