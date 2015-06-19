.class public final Lcom/bbm/ui/b/k;
.super Lcom/bbm/ui/b/o;
.source "BBInfoAndInputDialog.java"
.field private d:Landroid/widget/EditText;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:Lcom/bbm/ui/gw;
.field private final i:Landroid/text/TextWatcher;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/b/k;->g:I
new-instance v0, Lcom/bbm/ui/b/l;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/l;-><init>(Lcom/bbm/ui/b/k;)V
iput-object v0, p0, Lcom/bbm/ui/b/k;->i:Landroid/text/TextWatcher;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/b/k;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
return-object v0
.end method
.method protected final b()I
.registers 2
const v0, 0x7f030076
return v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c(I)V
.registers 4
if-lez p1, :cond_1d
invoke-virtual {p0}, Lcom/bbm/ui/b/k;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/b/k;->e:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
if-eqz v1, :cond_1d
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/b/k;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
:cond_1d
return-void
.end method
.method public final d(I)V
.registers 4
iput p1, p0, Lcom/bbm/ui/b/k;->g:I
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/b/k;->h:Lcom/bbm/ui/gw;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/b/k;->h:Lcom/bbm/ui/gw;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
:cond_11
iget v0, p0, Lcom/bbm/ui/b/k;->g:I
if-ltz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget v1, p0, Lcom/bbm/ui/b/k;->g:I
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/b/k;->h:Lcom/bbm/ui/gw;
:cond_1f
return-void
.end method
.method public final d(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
if-eqz v0, :cond_10
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_f
return-void
:cond_10
iput-object p1, p0, Lcom/bbm/ui/b/k;->f:Ljava/lang/String;
goto :goto_f
.end method
.method public final e(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
if-eqz v0, :cond_f
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V
:cond_f
return-void
.end method
.method protected final onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/bbm/ui/b/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/b/o;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f0a0357
invoke-virtual {p0, v0}, Lcom/bbm/ui/b/k;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/b/k;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v2, p0, Lcom/bbm/ui/b/k;->e:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
:cond_23
iget-object v0, p0, Lcom/bbm/ui/b/k;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v2, p0, Lcom/bbm/ui/b/k;->f:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/bbm/ui/b/k;->c:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_67
const/4 v0, 0x1
:goto_41
invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V
:cond_44
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget-object v2, p0, Lcom/bbm/ui/b/k;->i:Landroid/text/TextWatcher;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget v0, p0, Lcom/bbm/ui/b/k;->g:I
if-ltz v0, :cond_59
iget-object v0, p0, Lcom/bbm/ui/b/k;->d:Landroid/widget/EditText;
iget v2, p0, Lcom/bbm/ui/b/k;->g:I
invoke-static {v0, v2}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/b/k;->h:Lcom/bbm/ui/gw;
:cond_59
invoke-virtual {p0}, Lcom/bbm/ui/b/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v2, 0x4
invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V
iget-object v0, p0, Lcom/bbm/ui/b/k;->c:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
const-string v1, " - Lcom/bbm/ui/b/k; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_67
move v0, v1
goto :goto_41
.end method