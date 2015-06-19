.class  Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;
.super Ljava/lang/Object;
.source "OptionsPicture.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/activity/OptionsPicture$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#getter for: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->tvOptionsPictureSizeSummary:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$0(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/OptionsPicture$1;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsPicture;
#calls: Lcom/pinguo/camera360/camera/activity/OptionsPicture;->buildPictureSizeSummary()Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/camera360/camera/activity/OptionsPicture;->access$1(Lcom/pinguo/camera360/camera/activity/OptionsPicture;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/pinguo/camera360/camera/activity/OptionsPicture$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method