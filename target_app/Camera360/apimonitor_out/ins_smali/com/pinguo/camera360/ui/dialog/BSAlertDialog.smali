.class public Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
.super Landroid/app/Dialog;
.source "BSAlertDialog.java"
.implements Landroid/content/DialogInterface;
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;
.field private mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const v0, 0x7f090042
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-direct {v0, p1, p0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
.registers 6
const v0, 0x7f090042
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCancelable(Z)V
invoke-virtual {p0, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-direct {v0, p1, p0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;)Lcom/pinguo/camera360/ui/dialog/BSAlertController;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
return-object v0
.end method
.method public getButton(I)Landroid/widget/Button;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->getButton(I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public getDialogMessageView()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->getMessageView()Landroid/widget/TextView;
move-result-object v0
return-object v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->getListView()Landroid/widget/ListView;
move-result-object v0
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/ui/dialog/BSAlertDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->installContent()V
const-string v1, " - Lcom/pinguo/camera360/ui/dialog/BSAlertDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_9
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_9
.end method
.method public setBgTrans(Z)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setBgTrans(Z)V
return-void
.end method
.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, p3, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
return-void
.end method
.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
const/4 v1, 0x0
invoke-virtual {v0, p1, p2, v1, p3}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
return-void
.end method
.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.registers 4
const/4 v0, -0x1
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
return-void
.end method
.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
.registers 4
const/4 v0, -0x1
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
return-void
.end method
.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.registers 4
const/4 v0, -0x2
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
return-void
.end method
.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
.registers 4
const/4 v0, -0x2
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
return-void
.end method
.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.registers 4
const/4 v0, -0x3
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
return-void
.end method
.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
.registers 4
const/4 v0, -0x3
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
return-void
.end method
.method public setCustomTitle(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setCustomTitle(Landroid/view/View;)V
return-void
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setIcon(I)V
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setMessage(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setMessage(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setOrientation(IZ)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->getRotateLayout()Lcom/pinguo/camera360/lib/ui/Rotatable;
move-result-object v0
if-eqz v0, :cond_c
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V
:cond_c
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTitleDesc(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setTitleDesc(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setView(Landroid/view/View;)V
return-void
.end method
.method public setView(Landroid/view/View;IIII)V
.registers 12
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->mAlert:Lcom/pinguo/camera360/ui/dialog/BSAlertController;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSAlertController;->setView(Landroid/view/View;IIII)V
return-void
.end method