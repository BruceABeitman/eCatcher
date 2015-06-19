.class  Lcom/twidroid/fragments/b$12$1;
.super Lcom/twidroid/c/j;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/b$12;
.method constructor <init>(Lcom/twidroid/fragments/b$12;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
invoke-direct {p0, p2}, Lcom/twidroid/c/j;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_85
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v1, v1, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v1, v1, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v2, v2, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_85
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v2, v2, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "@"
const-string v3, ""
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->c()V
:goto_84
return-void
:cond_85
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-eqz v0, :cond_cd
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v1, v1, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v1, v1, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
iget-object v2, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v2, v2, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v2
invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "@"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_102
:cond_cd
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "@"
const-string v3, ""
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v2, v2, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getSelectionStart()I
move-result v2
invoke-static {v0, v1, v2}, Lcom/twidroid/d/u;->a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;I)V
goto :goto_84
:cond_102
iget-object v0, p0, Lcom/twidroid/fragments/b$12$1;->a:Lcom/twidroid/fragments/b$12;
iget-object v0, v0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
const-string v3, ""
invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/d/u;->a(Lcom/twidroid/ui/widgets/MyEditText;Ljava/lang/String;)V
goto/16 :goto_84
.end method