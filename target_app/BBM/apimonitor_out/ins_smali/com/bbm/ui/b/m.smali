.class public final Lcom/bbm/ui/b/m;
.super Lcom/bbm/ui/b/o;
.source "BBInfoAndRadioButtonDialog.java"
.field public d:Landroid/widget/TextView;
.field public e:Landroid/widget/TextView;
.field public f:Landroid/widget/RadioButton;
.field public g:Landroid/widget/RadioButton;
.field public h:Ljava/lang/String;
.field public i:Ljava/lang/String;
.field  j:Landroid/widget/CompoundButton$OnCheckedChangeListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/bbm/ui/b/n;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/n;-><init>(Lcom/bbm/ui/b/m;)V
iput-object v0, p0, Lcom/bbm/ui/b/m;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/b/m;)Landroid/widget/RadioButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/b/m;)Landroid/widget/RadioButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;
return-object v0
.end method
.method protected final b()I
.registers 2
const v0, 0x7f030077
return v0
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/bbm/ui/b/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x8
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/b/o;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->c:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V
const v0, 0x7f0a0358
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;
const v0, 0x7f0a0359
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
iput-object v0, p0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
iget-object v0, p0, Lcom/bbm/ui/b/m;->h:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_78
iget-object v0, p0, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/m;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V
:goto_3a
const v0, 0x7f0a035a
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;
const v0, 0x7f0a035b
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/m;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
iput-object v0, p0, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;
iget-object v0, p0, Lcom/bbm/ui/b/m;->i:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_83
iget-object v0, p0, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/m;->i:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;
invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V
:goto_69
iget-object v0, p0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
iget-object v1, p0, Lcom/bbm/ui/b/m;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;
iget-object v1, p0, Lcom/bbm/ui/b/m;->j:Landroid/widget/CompoundButton$OnCheckedChangeListener;
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const-string v1, " - Lcom/bbm/ui/b/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_78
iget-object v0, p0, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;
invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V
goto :goto_3a
:cond_83
iget-object v0, p0, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;
invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V
goto :goto_69
.end method