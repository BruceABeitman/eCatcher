.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const/4 v1, 0x0

    #setter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
    invoke-static {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$102(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Z)Z

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    return-void
.end method
