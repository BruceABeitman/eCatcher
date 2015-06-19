.class  Lco/vine/android/recorder/VineRecorder$26;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$26;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_1c
:goto_9
return v2
:pswitch_a
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$26;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-static {v1, v3}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V
goto :goto_9
:pswitch_10
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$26;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-static {v1, v3}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V
goto :goto_9
:pswitch_16
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$26;->this$0:Lco/vine/android/recorder/VineRecorder;
#calls: Lco/vine/android/recorder/VineRecorder;->animateTopButtons(I)V
invoke-static {v1, v2}, Lco/vine/android/recorder/VineRecorder;->access$4100(Lco/vine/android/recorder/VineRecorder;I)V
goto :goto_9
:pswitch_data_1c
.packed-switch 0x0
:pswitch_a
:pswitch_16
:pswitch_10
.end packed-switch
.end method