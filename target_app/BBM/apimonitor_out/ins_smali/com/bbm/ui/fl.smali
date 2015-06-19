.class final Lcom/bbm/ui/fl;
.super Ljava/lang/Object;
.source "SearchEditText.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/SearchEditText;
.method constructor <init>(Lcom/bbm/ui/SearchEditText;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/fl;->a:Lcom/bbm/ui/SearchEditText;
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
.registers 9
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/fl;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->a(Lcom/bbm/ui/SearchEditText;)Lcom/bbm/ui/fq;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/bbm/ui/fl;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->a(Lcom/bbm/ui/SearchEditText;)Lcom/bbm/ui/fq;
move-result-object v0
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v3}, Lcom/bbm/ui/fq;->a(Ljava/lang/String;)V
:cond_18
iget-object v0, p0, Lcom/bbm/ui/fl;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->b(Lcom/bbm/ui/SearchEditText;)Landroid/widget/Button;
move-result-object v3
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v0
if-lez v0, :cond_38
move v0, v1
:goto_25
invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/fl;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->c(Lcom/bbm/ui/SearchEditText;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v3
if-lez v3, :cond_3a
:goto_34
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
return-void
:cond_38
move v0, v2
goto :goto_25
:cond_3a
move v1, v2
goto :goto_34
.end method