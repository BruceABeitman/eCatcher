.class Lcom/fsck/k9/activity/ChooseIdentity$1;
.super Ljava/lang/Object;
.source "ChooseIdentity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseIdentity;->setupClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseIdentity;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseIdentity;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3, p3}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Account$Identity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.fsck.k9.ChooseIdentity_identity"

    iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v4, v4, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4, p3}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Account$Identity;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/fsck/k9/activity/ChooseIdentity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    invoke-virtual {v3}, Lcom/fsck/k9/activity/ChooseIdentity;->finish()V

    :goto_37
    return-void

    :cond_38
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    iget-object v4, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Lcom/fsck/k9/activity/ChooseIdentity;

    const v5, 0x7f08019b

    invoke-virtual {v4, v5}, Lcom/fsck/k9/activity/ChooseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method
