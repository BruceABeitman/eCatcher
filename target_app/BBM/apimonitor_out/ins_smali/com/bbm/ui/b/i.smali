.class public Lcom/bbm/ui/b/i;
.super Lcom/bbm/ui/b/o;
.source "BBInfoAndCheckboxDialog.java"
.field public d:Landroid/widget/TextView;
.field public e:Landroid/widget/CheckBox;
.field public f:Landroid/widget/CheckBox;
.field public g:Ljava/lang/String;
.field private h:Landroid/widget/TextView;
.field private i:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
return-void
.end method
.method protected final b()I
.registers 2
const v0, 0x7f030074
return v0
.end method
.method public final c(I)V
.registers 3
if-lez p1, :cond_d
invoke-virtual {p0}, Lcom/bbm/ui/b/i;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/i;->c(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
iput-object p1, p0, Lcom/bbm/ui/b/i;->i:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/bbm/ui/b/i;->i:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/i;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_26
:cond_26
return-void
:cond_27
iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_26
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/bbm/ui/b/i; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x8
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/b/o;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0a034d
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/i;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
const v0, 0x7f0a034e
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/i;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
iget-object v0, p0, Lcom/bbm/ui/b/i;->i:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_65
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/i;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
:goto_35
const v0, 0x7f0a0350
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/i;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;
const v0, 0x7f0a0351
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/i;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;
iget-object v0, p0, Lcom/bbm/ui/b/i;->g:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_70
iget-object v0, p0, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/i;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;
invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
:goto_64
const-string v1, " - Lcom/bbm/ui/b/i; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_65
iget-object v0, p0, Lcom/bbm/ui/b/i;->h:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_35
:cond_70
iget-object v0, p0, Lcom/bbm/ui/b/i;->d:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/i;->f:Landroid/widget/CheckBox;
invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V
goto :goto_64
.end method