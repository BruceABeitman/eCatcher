.class final Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailboxThreadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MailboxThreadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# static fields
.field public static final QUERY_THREADS_TOKEN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/facebook/katana/MailboxThreadsActivity;->mLoading:Z
    invoke-static {v0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->access$10(Lcom/facebook/katana/MailboxThreadsActivity;Z)V

    iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/MailboxThreadsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    #calls: Lcom/facebook/katana/MailboxThreadsActivity;->handleQueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/facebook/katana/MailboxThreadsActivity;->access$11(Lcom/facebook/katana/MailboxThreadsActivity;Landroid/database/Cursor;)V

    :goto_13
    return-void

    :cond_14
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_13
.end method
