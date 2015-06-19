.class Lcom/fsck/k9/activity/ChooseFolder$1;
.super Ljava/lang/Object;
.source "ChooseFolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ChooseFolder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ChooseFolder;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ChooseFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.fsck.k9.ChooseFolder_curfolder"

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v2, v2, Lcom/fsck/k9/activity/ChooseFolder;->heldInbox:Ljava/lang/String;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    const v3, 0x7f080072

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/ChooseFolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v0, v2, Lcom/fsck/k9/activity/ChooseFolder;->heldInbox:Ljava/lang/String;

    :cond_2f
    const-string v2, "com.fsck.k9.ChooseFolder_newfolder"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.fsck.k9.ChooseFolder_messageuid"

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    iget-object v3, v3, Lcom/fsck/k9/activity/ChooseFolder;->mUID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder$1;->this$0:Lcom/fsck/k9/activity/ChooseFolder;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/ChooseFolder;->finish()V

    return-void
.end method
