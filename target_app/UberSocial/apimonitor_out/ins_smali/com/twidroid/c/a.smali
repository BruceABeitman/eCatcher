.class public abstract Lcom/twidroid/c/a;
.super Landroid/app/Dialog;
.source "SourceFile"
.field  a:Landroid/content/Context;
.field  b:Lcom/twidroid/ui/widgets/AccountSpinner;
.field  c:Landroid/widget/EditText;
.field  d:Lcom/twidroid/ui/widgets/MyEditText;
.field  e:Lcom/twidroid/c/b;
.method public constructor <init>(Landroid/content/Context;Lcom/twidroid/ui/widgets/MyEditText;Lcom/twidroid/c/b;)V
.registers 4
invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/twidroid/c/a;->d:Lcom/twidroid/ui/widgets/MyEditText;
iput-object p1, p0, Lcom/twidroid/c/a;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/twidroid/c/a;->e:Lcom/twidroid/c/b;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030035
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/c/a;->a:Landroid/content/Context;
const v1, 0x7f0c00e3
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onStart()V
.registers 3
const v0, 0x7f0900ae
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/twidroid/c/a;->c:Landroid/widget/EditText;
iget-object v0, p0, Lcom/twidroid/c/a;->d:Lcom/twidroid/ui/widgets/MyEditText;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/c/a;->c:Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/c/a;->d:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_1a
const v0, 0x7f0900ad
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/AccountSpinner;
iput-object v0, p0, Lcom/twidroid/c/a;->b:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v0, p0, Lcom/twidroid/c/a;->b:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V
const v0, 0x7f0900af
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/a$1;
invoke-direct {v1, p0}, Lcom/twidroid/c/a$1;-><init>(Lcom/twidroid/c/a;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f090074
invoke-virtual {p0, v0}, Lcom/twidroid/c/a;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/twidroid/c/a$2;
invoke-direct {v1, p0}, Lcom/twidroid/c/a$2;-><init>(Lcom/twidroid/c/a;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method