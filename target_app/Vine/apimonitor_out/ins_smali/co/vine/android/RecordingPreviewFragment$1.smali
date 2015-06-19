.class  Lco/vine/android/RecordingPreviewFragment$1;
.super Ljava/lang/Object;
.source "RecordingPreviewFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lco/vine/android/RecordingPreviewFragment;
.method constructor <init>(Lco/vine/android/RecordingPreviewFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/RecordingPreviewFragment$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;
iget-object v1, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;
#getter for: Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
invoke-static {v1}, Lco/vine/android/RecordingPreviewFragment;->access$000(Lco/vine/android/RecordingPreviewFragment;)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-static {}, Lco/vine/android/RecordingPreviewFragment;->access$100()[I
move-result-object v2
array-length v2, v2
rem-int/2addr v1, v2
#setter for: Lco/vine/android/RecordingPreviewFragment;->mMaxLoop:I
invoke-static {v0, v1}, Lco/vine/android/RecordingPreviewFragment;->access$002(Lco/vine/android/RecordingPreviewFragment;I)I
iget-object v0, p0, Lco/vine/android/RecordingPreviewFragment$1;->this$0:Lco/vine/android/RecordingPreviewFragment;
#calls: Lco/vine/android/RecordingPreviewFragment;->updateMessageLoopLimit()V
invoke-static {v0}, Lco/vine/android/RecordingPreviewFragment;->access$200(Lco/vine/android/RecordingPreviewFragment;)V
const-string v1, " - Lco/vine/android/RecordingPreviewFragment$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method