.class public abstract Lcom/bbm/ui/b/g;
.super Landroid/app/Dialog;
.source "BBGenericDialog.java"
.field protected a:Landroid/widget/TextView;
.field protected b:Landroid/widget/Button;
.field protected c:Landroid/widget/Button;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Z
.field private h:Z
.field private i:Landroid/view/View$OnClickListener;
.field private j:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
iput-boolean v0, p0, Lcom/bbm/ui/b/g;->g:Z
iput-boolean v0, p0, Lcom/bbm/ui/b/g;->h:Z
new-instance v0, Lcom/bbm/ui/b/h;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/h;-><init>(Lcom/bbm/ui/b/g;)V
iput-object v0, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
return-void
.end method
.method public final a()V
.registers 3
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/b/g;->h:Z
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
:cond_e
return-void
.end method
.method public final a(I)V
.registers 3
if-lez p1, :cond_d
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->b(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public final a(Landroid/view/View$OnClickListener;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/b/g;->i:Landroid/view/View$OnClickListener;
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/b/g;->i:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/b/g;->i:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_11
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/b/g;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/b/g;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/b/g;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_15
return-void
.end method
.method protected abstract b()I
.end method
.method public final b(I)V
.registers 4
if-lez p1, :cond_1f
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/b/g;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/b/g;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/b/g;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:cond_1f
return-void
.end method
.method public final b(Landroid/view/View$OnClickListener;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_11
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/b/g;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/b/g;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/b/g;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:cond_15
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const/16 v2, 0x8
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->requestWindowFeature(I)Z
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getWindow()Landroid/view/Window;
move-result-object v0
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v3, 0x30
invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b0011
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getWindow()Landroid/view/Window;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->b()I
move-result v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->setContentView(I)V
const v0, 0x7f0a033b
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
iget-object v3, p0, Lcom/bbm/ui/b/g;->d:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a0354
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-object v3, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-boolean v0, p0, Lcom/bbm/ui/b/g;->h:Z
if-eqz v0, :cond_ba
move v0, v1
:goto_6a
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/g;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-object v3, p0, Lcom/bbm/ui/b/g;->e:Ljava/lang/String;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:cond_7c
iget-object v0, p0, Lcom/bbm/ui/b/g;->i:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_87
iget-object v0, p0, Lcom/bbm/ui/b/g;->c:Landroid/widget/Button;
iget-object v3, p0, Lcom/bbm/ui/b/g;->i:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_87
const v0, 0x7f0a0353
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-boolean v3, p0, Lcom/bbm/ui/b/g;->g:Z
if-eqz v3, :cond_99
move v2, v1
:cond_99
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/g;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_ab
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-object v2, p0, Lcom/bbm/ui/b/g;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
:cond_ab
iget-object v0, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_b6
iget-object v0, p0, Lcom/bbm/ui/b/g;->b:Landroid/widget/Button;
iget-object v2, p0, Lcom/bbm/ui/b/g;->j:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_b6
invoke-virtual {p0, v1}, Lcom/bbm/ui/b/g;->setCancelable(Z)V
return-void
:cond_ba
move v0, v2
goto :goto_6a
.end method
.method protected onStart()V
.registers 3
invoke-super {p0}, Landroid/app/Dialog;->onStart()V
iget-object v0, p0, Lcom/bbm/ui/b/g;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/bbm/ui/b/g;->a:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_12
.end method
.method public setTitle(I)V
.registers 3
if-lez p1, :cond_d
invoke-virtual {p0}, Lcom/bbm/ui/b/g;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/g;->a(Ljava/lang/String;)V
return-void
.end method