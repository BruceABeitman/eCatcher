.class Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

.field final synthetic val$progress:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts$AccountsHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->val$progress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->this$1:Lcom/fsck/k9/activity/Accounts$AccountsHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-boolean v1, p0, Lcom/fsck/k9/activity/Accounts$AccountsHandler$5;->val$progress:Z

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method
