.class  Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupBasics$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupBasics$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupBasics;
#calls: Lcom/fsck/k9/activity/setup/AccountSetupBasics;->finishAutoSetup()V
invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupBasics;->access$000(Lcom/fsck/k9/activity/setup/AccountSetupBasics;)V
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupBasics$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method