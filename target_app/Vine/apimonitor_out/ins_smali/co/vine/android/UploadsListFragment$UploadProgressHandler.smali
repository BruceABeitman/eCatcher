.class  Lco/vine/android/UploadsListFragment$UploadProgressHandler;
.super Landroid/os/Handler;
.source "UploadsListFragment.java"
.field final synthetic this$0:Lco/vine/android/UploadsListFragment;
.method private constructor <init>(Lco/vine/android/UploadsListFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/UploadsListFragment;Lco/vine/android/UploadsListFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/UploadsListFragment$UploadProgressHandler;-><init>(Lco/vine/android/UploadsListFragment;)V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 14
iget v6, p1, Landroid/os/Message;->what:I
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/os/Bundle;
const-string v7, "UploadsListFragment"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Message received, what="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
packed-switch v6, :pswitch_data_d6
:goto_21
:cond_21
return-void
:pswitch_22
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$500(Lco/vine/android/UploadsListFragment;)Landroid/widget/TextView;
move-result-object v7
if-eqz v7, :cond_21
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$600(Lco/vine/android/UploadsListFragment;)Lco/vine/android/recorder/ProgressView;
move-result-object v7
if-eqz v7, :cond_21
const-string v7, "upload_progress"
invoke-virtual {v0, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D
move-result-wide v1
const-string v7, "UploadsListFragment"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Upload progress changed to p="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mProgressViewWidth:I
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$700(Lco/vine/android/UploadsListFragment;)I
move-result v7
if-nez v7, :cond_67
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
iget-object v8, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v8}, Lco/vine/android/UploadsListFragment;->access$600(Lco/vine/android/UploadsListFragment;)Lco/vine/android/recorder/ProgressView;
move-result-object v8
invoke-virtual {v8}, Lco/vine/android/recorder/ProgressView;->getMeasuredWidth()I
move-result v8
#setter for: Lco/vine/android/UploadsListFragment;->mProgressViewWidth:I
invoke-static {v7, v8}, Lco/vine/android/UploadsListFragment;->access$702(Lco/vine/android/UploadsListFragment;I)I
:cond_67
const-wide v3, 0x3fef5c28f5c28f5cL
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$600(Lco/vine/android/UploadsListFragment;)Lco/vine/android/recorder/ProgressView;
move-result-object v7
const-wide v8, 0x3fef5c28f5c28f5cL
mul-double/2addr v8, v1
const-wide/high16 v10, 0x4059
div-double/2addr v8, v10
double-to-float v8, v8
invoke-virtual {v7, v8}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$500(Lco/vine/android/UploadsListFragment;)Landroid/widget/TextView;
move-result-object v7
iget-object v8, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
const v9, 0x7f0e0260
invoke-virtual {v8, v9}, Lco/vine/android/UploadsListFragment;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_21
:pswitch_92
const-string v7, "success"
invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v5
const-string v7, "UploadsListFragment"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Post completed, success="
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v8, 0x2
invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v7
invoke-virtual {p0, v7}, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->sendMessage(Landroid/os/Message;)Z
if-eqz v5, :cond_cf
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#getter for: Lco/vine/android/UploadsListFragment;->mStatusMessage:Landroid/widget/TextView;
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$500(Lco/vine/android/UploadsListFragment;)Landroid/widget/TextView;
move-result-object v7
iget-object v8, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
const v9, 0x7f0e025f
invoke-virtual {v8, v9}, Lco/vine/android/UploadsListFragment;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_21
:cond_cf
iget-object v7, p0, Lco/vine/android/UploadsListFragment$UploadProgressHandler;->this$0:Lco/vine/android/UploadsListFragment;
#calls: Lco/vine/android/UploadsListFragment;->resetFailedUpload()V
invoke-static {v7}, Lco/vine/android/UploadsListFragment;->access$800(Lco/vine/android/UploadsListFragment;)V
goto/16 :goto_21
:pswitch_data_d6
.packed-switch 0x6
:pswitch_22
:pswitch_92
.end packed-switch
.end method