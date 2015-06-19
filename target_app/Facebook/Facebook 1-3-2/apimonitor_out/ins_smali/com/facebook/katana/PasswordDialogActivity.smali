.class public Lcom/facebook/katana/PasswordDialogActivity;
.super Landroid/app/Activity;
.source "PasswordDialogActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/PasswordDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v2, 0x7f03002e
invoke-virtual {p0, v2}, Lcom/facebook/katana/PasswordDialogActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/facebook/katana/PasswordDialogActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "un"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const v2, 0x7f0b0080
invoke-virtual {p0, v2}, Lcom/facebook/katana/PasswordDialogActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v2, 0x7f0b0083
invoke-virtual {p0, v2}, Lcom/facebook/katana/PasswordDialogActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/PasswordDialogActivity$1;
invoke-direct {v3, p0}, Lcom/facebook/katana/PasswordDialogActivity$1;-><init>(Lcom/facebook/katana/PasswordDialogActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b0012
invoke-virtual {p0, v2}, Lcom/facebook/katana/PasswordDialogActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/facebook/katana/PasswordDialogActivity$2;
invoke-direct {v3, p0}, Lcom/facebook/katana/PasswordDialogActivity$2;-><init>(Lcom/facebook/katana/PasswordDialogActivity;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/facebook/katana/PasswordDialogActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method