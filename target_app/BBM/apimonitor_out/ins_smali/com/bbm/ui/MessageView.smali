.class public Lcom/bbm/ui/MessageView;
.super Landroid/widget/RelativeLayout;
.source "MessageView.java"
.field private a:Z
.field protected n:Landroid/widget/TextView;
.field protected o:Landroid/widget/TextView;
.field protected p:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/MessageView;->a:Z
return-void
.end method
.method public a()V
.registers 3
iget-boolean v0, p0, Lcom/bbm/ui/MessageView;->a:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/MessageView;->n:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/MessageView;->o:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/MessageView;->p:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_19
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a0453
invoke-virtual {p0, v0}, Lcom/bbm/ui/MessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/MessageView;->n:Landroid/widget/TextView;
const v0, 0x7f0a0454
invoke-virtual {p0, v0}, Lcom/bbm/ui/MessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/MessageView;->o:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {p0, v0}, Lcom/bbm/ui/MessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/MessageView;->p:Landroid/widget/TextView;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/MessageView;->a:Z
return-void
.end method
.method public setBodyText(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/MessageView;->p:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setDateText(J)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/MessageView;->o:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/MessageView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, p1, p2}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setSenderText(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/MessageView;->n:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method