.class final Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MailboxMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MailboxMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# static fields
.field public static final QUERY_THREADS_TOKEN:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/MailboxMessagesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_12

    packed-switch p1, :pswitch_data_16

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$QueryHandler;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->handleQueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/facebook/katana/MailboxMessagesActivity;->access$9(Lcom/facebook/katana/MailboxMessagesActivity;Landroid/database/Cursor;)V

    goto :goto_b

    :cond_12
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
