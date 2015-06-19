.class  Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;
.super Ljava/lang/Object;
.source "OptionsPicture.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
.field private final synthetic val$haveFront:Z
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;Z)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
iput-boolean p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->val$haveFront:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsPicture$3; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
iget-boolean v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->val$haveFront:Z
#calls: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->selectPicRedress(IZ)V
invoke-static {v0, p2, v1}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$2(Lcom/pinguo/camera360/camera/activity/OptionsPicture;IZ)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$3;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$3(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsPicture$3; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method