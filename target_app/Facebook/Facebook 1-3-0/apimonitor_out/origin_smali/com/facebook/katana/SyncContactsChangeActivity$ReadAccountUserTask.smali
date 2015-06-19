.class Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;
.super Lcom/facebook/katana/UserTask;
.source "SyncContactsChangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/SyncContactsChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadAccountUserTask"
.end annotation


# instance fields
.field private final mUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/katana/SyncContactsChangeActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/SyncContactsChangeActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    #getter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {p1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$10(Lcom/facebook/katana/SyncContactsChangeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->mUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->mUsername:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->isSyncEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mSyncContacts:Z
    invoke-static {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$11(Lcom/facebook/katana/SyncContactsChangeActivity;Z)V

    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->mUsername:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->doesShowUngroupedContacts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mShowUngroupedContacts:Z
    invoke-static {v0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$12(Lcom/facebook/katana/SyncContactsChangeActivity;Z)V

    return-void
.end method

.method protected onPostExecute()V
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    #getter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mSyncContacts:Z
    invoke-static {v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$13(Lcom/facebook/katana/SyncContactsChangeActivity;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    #getter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mShowUngroupedContacts:Z
    invoke-static {v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$14(Lcom/facebook/katana/SyncContactsChangeActivity;)Z

    move-result v1

    if-eqz v1, :cond_55

    const v0, 0x7f0b00a6

    :goto_1c
    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    #calls: Lcom/facebook/katana/SyncContactsChangeActivity;->checkRadioButton(I)V
    invoke-static {v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$15(Lcom/facebook/katana/SyncContactsChangeActivity;I)V

    const v1, 0x7f0b00ac

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v3, 0x7f08015b

    invoke-virtual {v2, v3}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v2, 0x7f0b00ae

    invoke-virtual {v1, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    const v3, 0x7f08015c

    invoke-virtual {v2, v3}, Lcom/facebook/katana/SyncContactsChangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_55
    const v0, 0x7f0b00a9

    goto :goto_1c

    :cond_59
    const v0, 0x7f0b00ac

    goto :goto_1c
.end method
