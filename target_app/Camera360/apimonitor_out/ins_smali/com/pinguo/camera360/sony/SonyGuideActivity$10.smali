.class  Lcom/pinguo/camera360/sony/SonyGuideActivity$10;
.super Ljava/lang/Object;
.source "SonyGuideActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
.field private final synthetic val$colors:Landroid/content/res/ColorStateList;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyGuideActivity;Landroid/content/res/ColorStateList;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->val$colors:Landroid/content/res/ColorStateList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private changeButtonState(Ljava/lang/String;)V
.registers 6
const/4 v3, -0x1
invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x8
if-lt v0, v1, :cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$14(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$14(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->val$colors:Landroid/content/res/ColorStateList;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V
:goto_2a
return-void
:cond_2b
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$14(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->this$0:Lcom/pinguo/camera360/sony/SonyGuideActivity;
#getter for: Lcom/pinguo/camera360/sony/SonyGuideActivity;->mWifiDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyGuideActivity;->access$14(Lcom/pinguo/camera360/sony/SonyGuideActivity;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getButton(I)Landroid/widget/Button;
move-result-object v1
const v2, -0x93928f
invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V
goto :goto_2a
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 3
invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->changeButtonState(Ljava/lang/String;)V
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 6
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->changeButtonState(Ljava/lang/String;)V
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 6
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/SonyGuideActivity$10;->changeButtonState(Ljava/lang/String;)V
return-void
.end method