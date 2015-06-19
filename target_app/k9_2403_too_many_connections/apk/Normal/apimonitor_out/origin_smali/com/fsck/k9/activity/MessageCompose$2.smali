.class Lcom/fsck/k9/activity/MessageCompose$2;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$2;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$2;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    const/4 v1, 0x1

    #setter for: Lcom/fsck/k9/activity/MessageCompose;->mDraftNeedsSaving:Z
    invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$102(Lcom/fsck/k9/activity/MessageCompose;Z)Z

    return-void
.end method
