.class  Lcom/fsck/k9/activity/MessageView$Listener;
.super Lcom/fsck/k9/MessagingListener;
.source "MessageView.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V
return-void
.end method
.method public loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v0
if-eq v0, p2, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->networkError()V
goto :goto_8
.end method
.method public loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V
.registers 24
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v13
move-object v0, v13
move-object/from16 v1, p2
if-eq v0, v1, :cond_f
:goto_e
return-void
:cond_f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v13
const/4 v14, 0x1
invoke-virtual {v13, v14}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v13
const/4 v14, 0x0
invoke-virtual {v13, v14}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->progress(Z)V
check-cast p4, [Ljava/lang/Object;
move-object/from16 v0, p4
check-cast v0, [Ljava/lang/Object;
move-object v10, v0
const/4 v13, 0x0
aget-object p1, v10, v13
check-cast p1, Ljava/lang/Boolean;
invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
const/4 v13, 0x1
aget-object v2, v10, v13
check-cast v2, Lcom/fsck/k9/activity/MessageView$Attachment;
if-eqz v3, :cond_b1
:try_start_40
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v14
iget-object v15, v2, Lcom/fsck/k9/activity/MessageView$Attachment;->name:Ljava/lang/String;
#calls: Lcom/fsck/k9/activity/MessageView;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
invoke-static {v13, v14, v15}, Lcom/fsck/k9/activity/MessageView;->access$1800(Lcom/fsck/k9/activity/MessageView;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v5
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1900(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/Account;
move-result-object v13
iget-object v14, v2, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;
invoke-virtual {v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J
move-result-wide v14
invoke-static {v13, v14, v15}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Lcom/fsck/k9/Account;J)Landroid/net/Uri;
move-result-object v12
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
invoke-virtual {v13}, Lcom/fsck/k9/activity/MessageView;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v13
invoke-virtual {v13, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v6
new-instance v9, Ljava/io/FileOutputStream;
invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
invoke-static {v6, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
invoke-virtual {v6}, Ljava/io/InputStream;->close()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v13
invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->attachmentSaved(Ljava/lang/String;)V
new-instance v13, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v15, v0
invoke-direct {v13, v14, v15, v5}, Lcom/fsck/k9/activity/MessageView$MediaScannerNotifier;-><init>(Lcom/fsck/k9/activity/MessageView;Landroid/content/Context;Ljava/io/File;)V
:try_end_9f
.catch Ljava/io/IOException; {:try_start_40 .. :try_end_9f} :catch_a1
goto/16 :goto_e
:catch_a1
move-exception v13
move-object v8, v13
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v13
invoke-virtual {v13}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->attachmentNotSaved()V
goto/16 :goto_e
:cond_b1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
#getter for: Lcom/fsck/k9/activity/MessageView;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v13}, Lcom/fsck/k9/activity/MessageView;->access$1900(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/Account;
move-result-object v13
iget-object v14, v2, Lcom/fsck/k9/activity/MessageView$Attachment;->part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;
invoke-virtual {v14}, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->getAttachmentId()J
move-result-wide v14
invoke-static {v13, v14, v15}, Lcom/fsck/k9/provider/AttachmentProvider;->getAttachmentUri(Lcom/fsck/k9/Account;J)Landroid/net/Uri;
move-result-object v12
new-instance v7, Landroid/content/Intent;
const-string v13, "android.intent.action.VIEW"
invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const/4 v13, 0x1
invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
:try_start_d2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
invoke-virtual {v13, v7}, Lcom/fsck/k9/activity/MessageView;->startActivity(Landroid/content/Intent;)V
:try_end_da
.catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_da} :catch_dc
goto/16 :goto_e
:catch_dc
move-exception v13
move-object v4, v13
const-string v13, "k9"
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Could not display attachment of type "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
iget-object v15, v2, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v13, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
move-object v14, v0
const v15, 0x7f0800ab
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v16, v0
const/16 v17, 0x0
move-object v0, v2
iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->contentType:Ljava/lang/String;
move-object/from16 v18, v0
aput-object v18, v16, v17
invoke-virtual/range {v14 .. v16}, Lcom/fsck/k9/activity/MessageView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v14
const/4 v15, 0x1
invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v11
invoke-virtual {v11}, Landroid/widget/Toast;->show()V
goto/16 :goto_e
.end method
.method public loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V
.registers 8
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v0
if-eq v0, p2, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->progress(Z)V
if-eqz p5, :cond_8
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->fetchingAttachment()V
goto :goto_8
.end method
.method public loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 12
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_d
:goto_c
return-void
:cond_d
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#setter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v4, p4}, Lcom/fsck/k9/activity/MessageView;->access$1402(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mail/Message;
:try_start_12
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v4
const-string v5, "text/html"
invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
move-result-object v2
if-nez v2, :cond_6d
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v4
const-string v5, "text/plain"
invoke-static {v4, v5}, Lcom/fsck/k9/mail/internet/MimeUtility;->findFirstPartByMimeType(Lcom/fsck/k9/mail/Part;Ljava/lang/String;)Lcom/fsck/k9/mail/Part;
move-result-object v2
if-nez v2, :cond_5e
const/4 v3, 0x0
:goto_2f
if-eqz v3, :cond_72
move-object v1, v3
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v4
new-instance v5, Lcom/fsck/k9/activity/MessageView$Listener$2;
invoke-direct {v5, p0, v1}, Lcom/fsck/k9/activity/MessageView$Listener$2;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;Ljava/lang/String;)V
invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v4
const-string v5, "<img"
invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v5
invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->showShowPictures(Z)V
:goto_4f
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
iget-object v5, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v5}, Lcom/fsck/k9/activity/MessageView;->access$1400(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/mail/Message;
move-result-object v5
const/4 v6, 0x0
#calls: Lcom/fsck/k9/activity/MessageView;->renderAttachments(Lcom/fsck/k9/mail/Part;I)V
invoke-static {v4, v5, v6}, Lcom/fsck/k9/activity/MessageView;->access$1700(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/mail/Part;I)V
goto :goto_c
:catch_5c
move-exception v4
goto :goto_c
:cond_5e
invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;
move-result-object v0
check-cast v0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;
if-nez v0, :cond_68
const/4 v3, 0x0
goto :goto_2f
:cond_68
invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->getBodyForDisplay()Ljava/lang/String;
move-result-object v3
goto :goto_2f
:cond_6d
invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
move-result-object v3
goto :goto_2f
:cond_72
iget-object v4, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v4}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v4
new-instance v5, Lcom/fsck/k9/activity/MessageView$Listener$3;
invoke-direct {v5, p0}, Lcom/fsck/k9/activity/MessageView$Listener$3;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
:try_end_80
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_80} :catch_5c
goto :goto_4f
.end method
.method public loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 7
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
new-instance v1, Lcom/fsck/k9/activity/MessageView$Listener$4;
invoke-direct {v1, p0, p4}, Lcom/fsck/k9/activity/MessageView$Listener$4;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;Ljava/lang/Throwable;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
goto :goto_c
.end method
.method public loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 7
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
new-instance v1, Lcom/fsck/k9/activity/MessageView$Listener$5;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$Listener$5;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
goto :goto_c
.end method
.method public loadMessageForViewHeadersAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 7
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#setter for: Lcom/fsck/k9/activity/MessageView;->mMessage:Lcom/fsck/k9/mail/Message;
invoke-static {v0, p4}, Lcom/fsck/k9/activity/MessageView;->access$1402(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mail/Message;
sget-object v0, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
invoke-virtual {p4, v0}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
new-instance v1, Lcom/fsck/k9/activity/MessageView$Listener$1;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$Listener$1;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
:cond_28
:try_start_28
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#calls: Lcom/fsck/k9/activity/MessageView;->setHeaders(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
invoke-static {v0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/MessageView;->access$1600(Lcom/fsck/k9/activity/MessageView;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
:try_end_2d
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_28 .. :try_end_2d} :catch_2e
goto :goto_c
:catch_2e
move-exception v0
goto :goto_c
.end method
.method public loadMessageForViewStarted(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mMessageUid:Ljava/lang/String;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1300(Lcom/fsck/k9/activity/MessageView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$Listener;->this$0:Lcom/fsck/k9/activity/MessageView;
#getter for: Lcom/fsck/k9/activity/MessageView;->mHandler:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1500(Lcom/fsck/k9/activity/MessageView;)Lcom/fsck/k9/activity/MessageView$MessageViewHandler;
move-result-object v0
new-instance v1, Lcom/fsck/k9/activity/MessageView$Listener$6;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/MessageView$Listener$6;-><init>(Lcom/fsck/k9/activity/MessageView$Listener;)V
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->post(Ljava/lang/Runnable;)Z
goto :goto_c
.end method