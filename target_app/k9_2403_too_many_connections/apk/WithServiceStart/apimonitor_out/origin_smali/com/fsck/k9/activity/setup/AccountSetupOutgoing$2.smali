.class Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->validateFields()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
