.class Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->validateFields()V
    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$100(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

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
