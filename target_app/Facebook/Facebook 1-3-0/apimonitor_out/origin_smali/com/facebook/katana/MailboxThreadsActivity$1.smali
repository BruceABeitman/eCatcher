.class Lcom/facebook/katana/MailboxThreadsActivity$1;
.super Ljava/lang/Object;
.source "MailboxThreadsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MailboxThreadsActivity;->showButtonBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxThreadsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MailboxThreadsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxThreadsActivity$1;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/MailboxThreadsActivity$1;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    #getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v0}, Lcom/facebook/katana/MailboxThreadsActivity;->access$19(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxThreadsActivity$1;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    iget-object v2, p0, Lcom/facebook/katana/MailboxThreadsActivity$1;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    #getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mFolder:I
    invoke-static {v2}, Lcom/facebook/katana/MailboxThreadsActivity;->access$13(Lcom/facebook/katana/MailboxThreadsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/katana/MailboxThreadsActivity$1;->this$0:Lcom/facebook/katana/MailboxThreadsActivity;

    #getter for: Lcom/facebook/katana/MailboxThreadsActivity;->mAdapter:Lcom/facebook/katana/MailboxThreadsAdapter;
    invoke-static {v3}, Lcom/facebook/katana/MailboxThreadsActivity;->access$12(Lcom/facebook/katana/MailboxThreadsActivity;)Lcom/facebook/katana/MailboxThreadsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/MailboxThreadsAdapter;->getMarkedThreads()[J

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;

    return-void
.end method
