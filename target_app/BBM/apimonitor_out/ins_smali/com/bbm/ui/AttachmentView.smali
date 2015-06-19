.class public Lcom/bbm/ui/AttachmentView;
.super Lcom/bbm/ui/CustomView;
.source "AttachmentView.java"
.field private final a:Lcom/bbm/ui/ObservingImageView;
.field private final b:Landroid/widget/TextView;
.field private final c:Landroid/widget/TextView;
.field private final d:Landroid/widget/ImageButton;
.field private final e:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/16 v3, 0x8
invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030118
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0562
invoke-virtual {p0, v0}, Lcom/bbm/ui/AttachmentView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/AttachmentView;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
const v0, 0x7f0a0564
invoke-virtual {p0, v0}, Lcom/bbm/ui/AttachmentView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/AttachmentView;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->b:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0a0565
invoke-virtual {p0, v0}, Lcom/bbm/ui/AttachmentView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/AttachmentView;->c:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->c:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0a0566
invoke-virtual {p0, v0}, Lcom/bbm/ui/AttachmentView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/AttachmentView;->d:Landroid/widget/ImageButton;
const v0, 0x7f0a0563
invoke-virtual {p0, v0}, Lcom/bbm/ui/AttachmentView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/AttachmentView;->e:Landroid/view/View;
return-void
.end method
.method public getThumbnail()Lcom/bbm/ui/ObservingImageView;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->a:Lcom/bbm/ui/ObservingImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->e:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->a:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method public setCancelButtonOnClickListener(Landroid/view/View$OnClickListener;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public setPrimaryText(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->b:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setSecondaryText(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->c:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/AttachmentView;->c:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method