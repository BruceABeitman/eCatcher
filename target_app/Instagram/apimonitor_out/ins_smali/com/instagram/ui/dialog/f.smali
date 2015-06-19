.class public final Lcom/instagram/ui/dialog/f;
.super Landroid/app/Dialog;
.source "IgProgressDialog.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
sget v0, Lcom/facebook/ba;->IgDialog:I
invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V
sget v0, Lcom/facebook/aw;->progress_dialog:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->setContentView(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->setCancelable(Z)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
sget v0, Lcom/facebook/av;->message:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/f;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method