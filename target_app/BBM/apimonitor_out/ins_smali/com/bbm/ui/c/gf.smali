.class final Lcom/bbm/ui/c/gf;
.super Landroid/app/Dialog;
.source "StickerDetailsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/fu;
.method constructor <init>(Lcom/bbm/ui/c/fu;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/gf;->a:Lcom/bbm/ui/c/fu;
const v0, 0x7f0f0009
invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
return-void
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/c/gf; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030079
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->setContentView(I)V
const v0, 0x7f0e06e5
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->setTitle(I)V
const v0, 0x7f0a035e
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/c/gg;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/gg;-><init>(Lcom/bbm/ui/c/gf;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a035f
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/c/gh;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/gh;-><init>(Lcom/bbm/ui/c/gf;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0360
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/c/gi;
invoke-direct {v1, p0}, Lcom/bbm/ui/c/gi;-><init>(Lcom/bbm/ui/c/gf;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/bbm/ui/c/gj;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/gj;-><init>(Lcom/bbm/ui/c/gf;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/c/gf;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
const-string v1, " - Lcom/bbm/ui/c/gf; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method