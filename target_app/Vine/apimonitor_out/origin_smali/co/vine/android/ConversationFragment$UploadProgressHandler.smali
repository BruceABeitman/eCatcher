.class Lco/vine/android/ConversationFragment$UploadProgressHandler;
.super Landroid/os/Handler;
.source "ConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadProgressHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/ConversationFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ConversationFragment;Lco/vine/android/ConversationFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ConversationFragment$UploadProgressHandler;-><init>(Lco/vine/android/ConversationFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-nez v16, :cond_2f

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_11
    const-string v16, "ConversationFrag"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Message received, what="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v15, :pswitch_data_204

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    move-object/from16 v4, v16

    goto :goto_11

    :pswitch_3a
    const-string v16, "is_active"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v16, "conversation_row_id"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v16, "thumbnail"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v16, "ConversationFrag"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Result receiver was set in VineUploadService, conversationId="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mConversationRowId:J
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$700(Lco/vine/android/ConversationFragment;)J

    move-result-wide v16

    cmp-long v16, v16, v2

    if-nez v16, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$800(Lco/vine/android/ConversationFragment;)Landroid/view/ViewGroup;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$800(Lco/vine/android/ConversationFragment;)Landroid/view/ViewGroup;

    move-result-object v16

    const v18, 0x7f0a00c6

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lco/vine/android/recorder/ProgressView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    #setter for: Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static {v0, v1}, Lco/vine/android/ConversationFragment;->access$902(Lco/vine/android/ConversationFragment;Lco/vine/android/recorder/ProgressView;)Lco/vine/android/recorder/ProgressView;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_ca

    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mUploadThumbnail:Landroid/widget/ImageView;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$1000(Lco/vine/android/ConversationFragment;)Landroid/widget/ImageView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2e

    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mUploadThumbnail:Landroid/widget/ImageView;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$1000(Lco/vine/android/ConversationFragment;)Landroid/widget/ImageView;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2e

    :pswitch_db
    const-string v16, "ConversationFrag"

    const-string v17, "Video transcoding started"

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    :pswitch_e4
    const-string v16, "transcode_progress"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v16, "ConversationFrag"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Transcode progress changed to p="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$1100(Lco/vine/android/ConversationFragment;)I

    move-result v16

    if-nez v16, :cond_129

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v17, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static/range {v17 .. v17}, Lco/vine/android/ConversationFragment;->access$900(Lco/vine/android/ConversationFragment;)Lco/vine/android/recorder/ProgressView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/ProgressView;->getMeasuredWidth()I

    move-result v17

    #setter for: Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
    invoke-static/range {v16 .. v17}, Lco/vine/android/ConversationFragment;->access$1102(Lco/vine/android/ConversationFragment;I)I

    :cond_129
    const-wide v10, 0x3fe4cccccccccccdL

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$900(Lco/vine/android/ConversationFragment;)Lco/vine/android/recorder/ProgressView;

    move-result-object v16

    const-wide v17, 0x3fe4cccccccccccdL

    mul-double v17, v17, v8

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V

    goto/16 :goto_2e

    :pswitch_14d
    const-string v16, "upload_progress"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v16, "ConversationFrag"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Upload progress changed to p="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$1100(Lco/vine/android/ConversationFragment;)I

    move-result v16

    if-nez v16, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v17, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static/range {v17 .. v17}, Lco/vine/android/ConversationFragment;->access$900(Lco/vine/android/ConversationFragment;)Lco/vine/android/recorder/ProgressView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/ProgressView;->getMeasuredWidth()I

    move-result v17

    #setter for: Lco/vine/android/ConversationFragment;->mProgressViewWidth:I
    invoke-static/range {v16 .. v17}, Lco/vine/android/ConversationFragment;->access$1102(Lco/vine/android/ConversationFragment;I)I

    :cond_192
    const-wide v10, 0x3fd51eb851eb851fL

    const-wide v6, 0x3fe4cccccccccccdL

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mProgressView:Lco/vine/android/recorder/ProgressView;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$900(Lco/vine/android/ConversationFragment;)Lco/vine/android/recorder/ProgressView;

    move-result-object v16

    const-wide v17, 0x3fe4cccccccccccdL

    const-wide v19, 0x3fd51eb851eb851fL

    mul-double v19, v19, v8

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lco/vine/android/recorder/ProgressView;->setProgressRatio(F)V

    goto/16 :goto_2e

    :pswitch_1c2
    const-string v16, "success"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v16, "ConversationFrag"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Post completed, success="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/ConversationFragment$UploadProgressHandler;->this$0:Lco/vine/android/ConversationFragment;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/ConversationFragment;->mUploadProgressContainer:Landroid/view/ViewGroup;
    invoke-static/range {v16 .. v16}, Lco/vine/android/ConversationFragment;->access$800(Lco/vine/android/ConversationFragment;)Landroid/view/ViewGroup;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lco/vine/android/ConversationFragment$UploadProgressHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2e

    :pswitch_data_204
    .packed-switch 0x3
        :pswitch_3a
        :pswitch_db
        :pswitch_e4
        :pswitch_14d
        :pswitch_1c2
    .end packed-switch
.end method
