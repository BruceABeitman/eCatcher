.class  Lco/vine/android/recorder/VineRecorder$20;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$20;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$20;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$20;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mTrashUndoContainer:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$3200(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->isActivated()Z
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method