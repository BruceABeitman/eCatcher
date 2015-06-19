.class Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MailboxMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MailboxMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessagesAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;-><init>(Lcom/facebook/katana/MailboxMessagesActivity;)V

    return-void
.end method


# virtual methods
.method public onMailboxDeleteThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[J)V
    .registers 12

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/katana/MailboxMessagesActivity;->mDeleteThreadReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$16(Lcom/facebook/katana/MailboxMessagesActivity;Ljava/lang/String;)V

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
    invoke-static {p3, p5}, Lcom/facebook/katana/MailboxMessagesActivity;->access$13(ILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_60

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_3d
    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
    invoke-static {v1, v2, v3}, Lcom/facebook/katana/MailboxMessagesActivity;->access$17(Lcom/facebook/katana/MailboxMessagesActivity;J)V

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->moveToCurrentThread()Z
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$15(Lcom/facebook/katana/MailboxMessagesActivity;)Z

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->switchToThread()V
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$18(Lcom/facebook/katana/MailboxMessagesActivity;)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->finish()V

    goto :goto_5f

    :cond_66
    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v3, 0x7f080087

    invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5f
.end method

.method public onMailboxGetThreadMessagesComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;IJ)V
    .registers 14

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$10(Lcom/facebook/katana/MailboxMessagesActivity;)J

    move-result-wide v1

    cmp-long v1, p7, v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mFolder:I
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$11(Lcom/facebook/katana/MailboxMessagesActivity;)I

    move-result v1

    if-ne p6, v1, :cond_36

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->showProgress(Z)V
    invoke-static {v1, v4}, Lcom/facebook/katana/MailboxMessagesActivity;->access$12(Lcom/facebook/katana/MailboxMessagesActivity;Z)V

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
    invoke-static {p3, p5}, Lcom/facebook/katana/MailboxMessagesActivity;->access$13(ILjava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_36
    return-void
.end method

.method public onMailboxMarkThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[JZ)V
    .registers 15

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->moveToCurrentThread()Z
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$15(Lcom/facebook/katana/MailboxMessagesActivity;)Z

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$10(Lcom/facebook/katana/MailboxMessagesActivity;)J

    move-result-wide v2

    aget-wide v4, p6, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_3b

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
    invoke-static {p3, p5}, Lcom/facebook/katana/MailboxMessagesActivity;->access$13(ILjava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v3, 0x7f0b005f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p7, :cond_3c

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3b

    :cond_42
    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v3, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    if-eqz p7, :cond_5d

    const v4, 0x7f080091

    :goto_4b
    invoke-virtual {v3, v4}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3b

    :cond_5d
    const v4, 0x7f080092

    goto :goto_4b
.end method

.method public onMailboxReplyComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V
    .registers 12

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$10(Lcom/facebook/katana/MailboxMessagesActivity;)J

    move-result-wide v1

    cmp-long v1, p6, v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->dismissDialog(I)V

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
    invoke-static {p3, p5}, Lcom/facebook/katana/MailboxMessagesActivity;->access$13(ILjava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Lcom/facebook/katana/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_25
.end method

.method public onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V
    .registers 9

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->responseIsPositive(ILjava/lang/Exception;)Z
    invoke-static {p3, p5}, Lcom/facebook/katana/MailboxMessagesActivity;->access$13(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
    invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$19(Lcom/facebook/katana/MailboxMessagesActivity;)Lcom/facebook/katana/MailboxMessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/MailboxMessagesAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    :cond_f
    return-void
.end method

.method public onUserImageLoaded(Lcom/facebook/katana/binding/AppSession;Lcom/facebook/katana/binding/UserImage;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$MessagesAppSessionListener;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mAdapter:Lcom/facebook/katana/MailboxMessagesAdapter;
    invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$19(Lcom/facebook/katana/MailboxMessagesActivity;)Lcom/facebook/katana/MailboxMessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/katana/MailboxMessagesAdapter;->updateUserImage(Lcom/facebook/katana/binding/UserImage;)V

    return-void
.end method
