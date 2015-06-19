.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$6;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Landroid/view/View$OnClickListener;
.field  isChecked:Z
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.field private final synthetic val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
.field private final synthetic val$showPasswordImg:Landroid/widget/ImageView;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/widget/ImageView;Lcom/pinguo/camera360/login/EditTextWithLine;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$showPasswordImg:Landroid/widget/ImageView;
iput-object p3, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->isChecked:Z
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/sony/SonyGuideActivity$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->isChecked:Z
if-eqz v1, :cond_2b
const/4 v1, 0x0
:goto_5
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->isChecked:Z
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$showPasswordImg:Landroid/widget/ImageView;
iget-boolean v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->isChecked:Z
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
iget-boolean v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->isChecked:Z
if-eqz v1, :cond_2d
const/16 v1, 0x90
:goto_16
or-int/lit8 v1, v1, 0x1
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->setInputType(I)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-virtual {v1}, Lcom/pinguo/camera360/login/EditTextWithLine;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$6;->val$passwordView:Lcom/pinguo/camera360/login/EditTextWithLine;
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/login/EditTextWithLine;->setSelection(I)V
const-string v1, " - Lcom/pinguo/camera360/sony/SonyGuideActivity$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
const/4 v1, 0x1
goto :goto_5
:cond_2d
const/16 v1, 0x80
goto :goto_16
.end method