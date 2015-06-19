.class  Lco/vine/android/RecordingFragment$12;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method constructor <init>(Lco/vine/android/RecordingFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingFragment$12;->this$0:Lco/vine/android/RecordingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 6
const/4 v0, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_2a
const/4 v0, 0x0
:goto_9
return v0
:pswitch_a
iget-object v1, p0, Lco/vine/android/RecordingFragment$12;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$100(Lco/vine/android/RecordingFragment;)Landroid/widget/TextView;
move-result-object v1
const/high16 v2, 0x3f80
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V
goto :goto_9
:pswitch_16
iget-object v1, p0, Lco/vine/android/RecordingFragment$12;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mDraftsButton:Landroid/widget/TextView;
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$100(Lco/vine/android/RecordingFragment;)Landroid/widget/TextView;
move-result-object v1
const v2, 0x3eb33333
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V
iget-object v1, p0, Lco/vine/android/RecordingFragment$12;->this$0:Lco/vine/android/RecordingFragment;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lco/vine/android/RecordingFragment;->onSessionSwitchPressed(Landroid/view/View;)V
goto :goto_9
nop
:pswitch_data_2a
.packed-switch 0x0
:pswitch_a
:pswitch_16
.end packed-switch
.end method