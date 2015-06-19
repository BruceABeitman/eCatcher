.class  Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.field final synthetic val$resId:I
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
iput p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$resId:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
#getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;
invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$800(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
iget v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$resId:I
invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_8
.end method