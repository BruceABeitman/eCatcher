.class public Lco/vine/android/RecordingFragment$PlusMinusTouchListener;
.super Lco/vine/android/views/FakeKeyEventTouchListener;
.source "RecordingFragment.java"
.field private final mDrawableId:I
.field private final mRes:Landroid/content/res/Resources;
.field private final mTarget:Landroid/widget/ImageView;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.method public constructor <init>(Lco/vine/android/RecordingFragment;Landroid/widget/ImageView;I)V
.registers 6
iput-object p1, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->this$0:Lco/vine/android/RecordingFragment;
invoke-virtual {p1}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v0, 0x7f020296
if-ne p3, v0, :cond_23
const/16 v0, 0xa9
:goto_d
invoke-direct {p0, v1, v0}, Lco/vine/android/views/FakeKeyEventTouchListener;-><init>(Landroid/app/Activity;I)V
iput p3, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mDrawableId:I
invoke-virtual {p1}, Lco/vine/android/RecordingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mRes:Landroid/content/res/Resources;
iput-object p2, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mTarget:Landroid/widget/ImageView;
const/4 v0, 0x1
invoke-direct {p0, v0}, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->changeColor(I)V
return-void
:cond_23
const/16 v0, 0xa8
goto :goto_d
.end method
.method private changeColor(I)V
.registers 6
packed-switch p1, :pswitch_data_34
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mRes:Landroid/content/res/Resources;
iget-object v1, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mColor:I
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I
move-result v1
iget v2, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mDrawableId:I
iget-object v3, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mTarget:Landroid/widget/ImageView;
invoke-static {v0, v1, v2, v3}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mTarget:Landroid/widget/ImageView;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V
goto :goto_3
:pswitch_1b
iget-object v0, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mRes:Landroid/content/res/Resources;
iget-object v1, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mColor:I
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I
move-result v1
iget v2, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mDrawableId:I
iget-object v3, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mTarget:Landroid/widget/ImageView;
invoke-static {v0, v1, v2, v3}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->mTarget:Landroid/widget/ImageView;
const v1, 0x3eb33333
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V
goto :goto_3
nop
:pswitch_data_34
.packed-switch 0x0
:pswitch_4
:pswitch_1b
.end packed-switch
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
invoke-direct {p0, v0}, Lco/vine/android/RecordingFragment$PlusMinusTouchListener;->changeColor(I)V
invoke-super {p0, p1, p2}, Lco/vine/android/views/FakeKeyEventTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method