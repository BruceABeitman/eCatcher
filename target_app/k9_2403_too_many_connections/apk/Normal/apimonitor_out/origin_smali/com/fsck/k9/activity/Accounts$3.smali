.class Lcom/fsck/k9/activity/Accounts$3;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts;->createRemoveAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->dismissDialog(I)V

    :try_start_6
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    #getter for: Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/LocalStore;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/LocalStore;->delete()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_39

    :goto_1f
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    #getter for: Lcom/fsck/k9/activity/Accounts;->mSelectedContextAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$600(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->delete(Lcom/fsck/k9/Preferences;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    #calls: Lcom/fsck/k9/activity/Accounts;->refresh()V
    invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$700(Lcom/fsck/k9/activity/Accounts;)V

    return-void

    :catch_39
    move-exception v0

    goto :goto_1f
.end method
