.class  Lcom/twidroid/fragments/b$12;
.super Lcom/twidroid/ui/widgets/h;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
invoke-direct {p0}, Lcom/twidroid/ui/widgets/h;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 6
new-instance v0, Lcom/twidroid/fragments/b$12$1;
iget-object v1, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
invoke-virtual {v1}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/b$12$1;-><init>(Lcom/twidroid/fragments/b$12;Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
invoke-static {v1}, Lcom/twidroid/fragments/b;->d(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->at()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->a(Z)V
iget-object v1, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v1, v1, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_54
iget-object v1, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v1, v1, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v2, v2, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v2}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v2
add-int/lit8 v2, v2, -0x1
iget-object v3, p0, Lcom/twidroid/fragments/b$12;->a:Lcom/twidroid/fragments/b;
iget-object v3, v3, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v3}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-interface {v3}, Landroid/text/Editable;->length()I
move-result v3
invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/j;->b(Ljava/lang/String;)V
:cond_54
invoke-virtual {v0}, Lcom/twidroid/c/j;->show()V
return-void
.end method