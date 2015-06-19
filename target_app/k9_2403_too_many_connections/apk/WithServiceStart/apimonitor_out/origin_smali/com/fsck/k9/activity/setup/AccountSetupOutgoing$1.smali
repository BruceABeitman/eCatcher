.class Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

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
