.class public Lcom/instagram/ui/dialog/g;
.super Lcom/instagram/base/a/a;
.source "ProgressDialogFragment.java"
.field private final aa:Landroid/content/DialogInterface$OnKeyListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/a;-><init>()V
new-instance v0, Lcom/instagram/ui/dialog/h;
invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/h;-><init>(Lcom/instagram/ui/dialog/g;)V
iput-object v0, p0, Lcom/instagram/ui/dialog/g;->aa:Landroid/content/DialogInterface$OnKeyListener;
return-void
.end method
.method public static V()Lcom/instagram/ui/dialog/g;
.registers 1
new-instance v0, Lcom/instagram/ui/dialog/g;
invoke-direct {v0}, Lcom/instagram/ui/dialog/g;-><init>()V
return-object v0
.end method
.method private W()Lcom/instagram/ui/dialog/f;
.registers 3
new-instance v0, Lcom/instagram/ui/dialog/f;
invoke-virtual {p0}, Lcom/instagram/ui/dialog/g;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method protected U()Ljava/lang/String;
.registers 2
sget v0, Lcom/facebook/az;->loading:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/g;->c(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c(Landroid/os/Bundle;)Landroid/app/Dialog;
.registers 4
invoke-direct {p0}, Lcom/instagram/ui/dialog/g;->W()Lcom/instagram/ui/dialog/f;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/ui/dialog/g;->U()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V
iget-object v1, p0, Lcom/instagram/ui/dialog/g;->aa:Landroid/content/DialogInterface$OnKeyListener;
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
return-object v0
.end method