.class  Lco/vine/android/RecordingFragment$11;
.super Ljava/lang/Object;
.source "RecordingFragment.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic this$0:Lco/vine/android/RecordingFragment;
.field final synthetic val$res:Landroid/content/res/Resources;
.method constructor <init>(Lco/vine/android/RecordingFragment;Landroid/content/res/Resources;)V
.registers 3
iput-object p1, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
iput-object p2, p0, Lco/vine/android/RecordingFragment$11;->val$res:Landroid/content/res/Resources;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 7
const v3, 0x7f02018b
if-eqz p2, :cond_22
iget-object v0, p0, Lco/vine/android/RecordingFragment$11;->val$res:Landroid/content/res/Resources;
iget-object v1, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mColor:I
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I
move-result v1
iget-object v2, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
invoke-static {v2}, Lco/vine/android/RecordingFragment;->access$700(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
move-result-object v2
invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$700(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
move-result-object v0
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V
:goto_21
return-void
:cond_22
iget-object v0, p0, Lco/vine/android/RecordingFragment$11;->val$res:Landroid/content/res/Resources;
iget-object v1, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mColor:I
invoke-static {v1}, Lco/vine/android/RecordingFragment;->access$900(Lco/vine/android/RecordingFragment;)I
move-result v1
iget-object v2, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
invoke-static {v2}, Lco/vine/android/RecordingFragment;->access$700(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
move-result-object v2
invoke-static {v0, v1, v3, v2}, Lco/vine/android/util/ViewUtil;->fillColor(Landroid/content/res/Resources;IILandroid/view/View;)V
iget-object v0, p0, Lco/vine/android/RecordingFragment$11;->this$0:Lco/vine/android/RecordingFragment;
#getter for: Lco/vine/android/RecordingFragment;->mGhostButton:Landroid/widget/ToggleButton;
invoke-static {v0}, Lco/vine/android/RecordingFragment;->access$700(Lco/vine/android/RecordingFragment;)Landroid/widget/ToggleButton;
move-result-object v0
const v1, 0x3eb33333
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setAlpha(F)V
goto :goto_21
.end method