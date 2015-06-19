.class Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
