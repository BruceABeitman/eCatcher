.class Lcom/facebook/katana/MailboxMessagesAdapter$1;
.super Ljava/lang/Object;
.source "MailboxMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MailboxMessagesAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/UserSelectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MailboxMessagesAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesAdapter$1;->this$0:Lcom/facebook/katana/MailboxMessagesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/katana/MailboxMessagesAdapter$1;->this$0:Lcom/facebook/katana/MailboxMessagesAdapter;

    #getter for: Lcom/facebook/katana/MailboxMessagesAdapter;->mUserSelectionListener:Lcom/facebook/katana/UserSelectionListener;
    invoke-static {v2}, Lcom/facebook/katana/MailboxMessagesAdapter;->access$0(Lcom/facebook/katana/MailboxMessagesAdapter;)Lcom/facebook/katana/UserSelectionListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/facebook/katana/UserSelectionListener;->onUserSelected(J)V

    return-void
.end method
