.class final Lcom/bbm/ui/c/ci;
.super Lcom/bbm/j/k;
.source "GroupDetailsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/ch;
.method constructor <init>(Lcom/bbm/ui/c/ch;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v0}, Lcom/bbm/ui/c/ch;->b(Lcom/bbm/ui/c/ch;)Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v1}, Lcom/bbm/ui/c/ch;->a(Lcom/bbm/ui/c/ch;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-object v1, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_19
:goto_18
:cond_18
return-void
:cond_19
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v1}, Lcom/bbm/ui/c/ch;->c(Lcom/bbm/ui/c/ch;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_18
iget-boolean v1, v0, Lcom/bbm/g/a;->j:Z
if-nez v1, :cond_56
iget-object v1, v0, Lcom/bbm/g/a;->f:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v1}, Lcom/bbm/ui/c/ch;->d(Lcom/bbm/ui/c/ch;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-virtual {v2}, Lcom/bbm/ui/c/ch;->getActivity()Landroid/app/Activity;
move-result-object v2
const v3, 0x7f0e045a
invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_43
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v1}, Lcom/bbm/ui/c/ch;->d(Lcom/bbm/ui/c/ch;)Landroid/widget/TextView;
move-result-object v1
iget-boolean v2, v0, Lcom/bbm/g/a;->j:Z
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
iget-object v0, v0, Lcom/bbm/g/a;->f:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/bbm/ui/c/ch;->a(Lcom/bbm/ui/c/ch;Ljava/lang/String;)Ljava/lang/String;
goto :goto_18
:cond_56
iget-object v1, p0, Lcom/bbm/ui/c/ci;->a:Lcom/bbm/ui/c/ch;
invoke-static {v1}, Lcom/bbm/ui/c/ch;->d(Lcom/bbm/ui/c/ch;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, v0, Lcom/bbm/g/a;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_43
.end method