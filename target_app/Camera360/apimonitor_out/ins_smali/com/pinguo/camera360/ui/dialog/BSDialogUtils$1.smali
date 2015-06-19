.class  Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;
.super Ljava/lang/Object;
.source "BSDialogUtils.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field private final synthetic val$context:Landroid/app/Activity;
.field private final synthetic val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.field private final synthetic val$tv:Landroid/widget/TextView;
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;Landroid/widget/TextView;Landroid/app/Activity;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iput-object p2, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$tv:Landroid/widget/TextView;
iput-object p3, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$context:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-virtual {v0, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueIndex(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$tv:Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$preference:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
iget-object v2, p0, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1;->val$context:Landroid/app/Activity;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntry(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/BSDialogUtils$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method