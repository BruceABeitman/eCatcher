.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$1;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$1;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$1;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    return-void
.end method
