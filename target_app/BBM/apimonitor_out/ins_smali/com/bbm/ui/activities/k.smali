.class final Lcom/bbm/ui/activities/k;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->j(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6d
move v0, v1
:goto_19
invoke-static {v3, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/AddChannelPostActivity;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->p(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->n(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
move-result v0
if-eqz v0, :cond_6f
iget-object v0, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->o(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
move-result v0
if-nez v0, :cond_6f
move v0, v1
:goto_33
invoke-virtual {v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->j(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/InlineImageEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-ltz v0, :cond_6c
iget-object v3, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/AddChannelPostActivity;->q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/k;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-virtual {v4}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0e01d1
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v1, v2
invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_6c
return-void
:cond_6d
move v0, v2
goto :goto_19
:cond_6f
move v0, v2
goto :goto_33
.end method