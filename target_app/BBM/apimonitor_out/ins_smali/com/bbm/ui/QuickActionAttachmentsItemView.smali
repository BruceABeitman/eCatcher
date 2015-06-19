.class public Lcom/bbm/ui/QuickActionAttachmentsItemView;
.super Lcom/bbm/ui/CustomView;
.source "QuickActionAttachmentsItemView.java"
.field private final a:Lcom/bbm/ui/ObservingImageView;
.field private final b:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03013c
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0622
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0623
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->b:Landroid/widget/TextView;
return-void
.end method
.method public setIcon(I)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
return-void
.end method
.method public setIcon(Lcom/bbm/j/r;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method
.method public setLabel(I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->b:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/QuickActionAttachmentsItemView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setLabel(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/QuickActionAttachmentsItemView;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method