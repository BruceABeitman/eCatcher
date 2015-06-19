.class Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupBasics;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V

    return-void
.end method
