.class Lcom/facebook/katana/MailboxMessagesActivity$4;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MailboxMessagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_60

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/facebook/katana/MailboxMessagesActivity;->mCurrentThreadId:J
    invoke-static {v0, v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->access$17(Lcom/facebook/katana/MailboxMessagesActivity;J)V

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z

    move-result v1

    if-eqz v1, :cond_61

    move v1, v3

    :goto_3f
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #getter for: Lcom/facebook/katana/MailboxMessagesActivity;->mThreadsCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$14(Lcom/facebook/katana/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_63

    move v1, v3

    :goto_58
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$4;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->switchToThread()V
    invoke-static {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->access$18(Lcom/facebook/katana/MailboxMessagesActivity;)V

    :cond_60
    return-void

    :cond_61
    move v1, v4

    goto :goto_3f

    :cond_63
    move v1, v4

    goto :goto_58
.end method
