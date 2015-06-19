.class Lcom/facebook/katana/MailboxTabHostActivity$2;
.super Ljava/lang/Object;
.source "MailboxTabHostActivity.java"

# interfaces
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MailboxTabHostActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MailboxTabHostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    #getter for: Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
    invoke-static {v0}, Lcom/facebook/katana/MailboxTabHostActivity;->access$9(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxThreadsActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    #getter for: Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
    invoke-static {v0}, Lcom/facebook/katana/MailboxTabHostActivity;->access$9(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxThreadsActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->setProgressListener(Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;)V

    :cond_12
    iget-object v1, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/MailboxTabHostActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/MailboxThreadsActivity;

    #setter for: Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
    invoke-static {v1, v0}, Lcom/facebook/katana/MailboxTabHostActivity;->access$10(Lcom/facebook/katana/MailboxTabHostActivity;Lcom/facebook/katana/MailboxThreadsActivity;)V

    iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    #getter for: Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
    invoke-static {v0}, Lcom/facebook/katana/MailboxTabHostActivity;->access$9(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxThreadsActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/MailboxTabHostActivity$2;->this$0:Lcom/facebook/katana/MailboxTabHostActivity;

    #getter for: Lcom/facebook/katana/MailboxTabHostActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
    invoke-static {v1}, Lcom/facebook/katana/MailboxTabHostActivity;->access$11(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->setProgressListener(Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;)V

    return-void
.end method
