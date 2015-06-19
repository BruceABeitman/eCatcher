.class Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;
.super Lcom/facebook/katana/UserTask;
.source "SyncContactsChangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/SyncContactsChangeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAccountUserTask"
.end annotation


# instance fields
.field private final mNewShowUngroupedContacts:Z

.field private final mNewSyncContacts:Z

.field private final mUsername:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/katana/SyncContactsChangeActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/SyncContactsChangeActivity;Lcom/facebook/katana/binding/AppSession;ZZ)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mUsername:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewSyncContacts:Z

    iput-boolean p4, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewShowUngroupedContacts:Z

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mUsername:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewSyncContacts:Z

    iget-boolean v3, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewShowUngroupedContacts:Z

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->storeSessionInfo(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected onPostExecute()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    #getter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mSyncContacts:Z
    invoke-static {v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$13(Lcom/facebook/katana/SyncContactsChangeActivity;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewSyncContacts:Z

    if-nez v1, :cond_1a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    const-class v2, Lcom/facebook/katana/RemoveRawContactsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    iget-boolean v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->mNewSyncContacts:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    #getter for: Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->access$10(Lcom/facebook/katana/SyncContactsChangeActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->this$0:Lcom/facebook/katana/SyncContactsChangeActivity;

    invoke-virtual {v1, v2}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_1a
.end method
