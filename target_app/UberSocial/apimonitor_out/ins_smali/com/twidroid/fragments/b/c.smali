.class public Lcom/twidroid/fragments/b/c;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"
.field private a:Lcom/twidroid/model/twitter/User;
.field private b:Lcom/twidroid/fragments/b/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/b/c;)Lcom/twidroid/fragments/b/d;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b/c;->b:Lcom/twidroid/fragments/b/d;
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/User;Lcom/twidroid/fragments/b/d;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b/c;->a:Lcom/twidroid/model/twitter/User;
iput-object p2, p0, Lcom/twidroid/fragments/b/c;->b:Lcom/twidroid/fragments/b/d;
return-void
.end method
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.registers 7
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03008e
invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
const v0, 0x7f0901d3
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/fragments/b/c;->a:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
if-nez v1, :cond_62
const-string v1, ""
:goto_21
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-interface {v1}, Landroid/text/Editable;->length()I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/twidroid/fragments/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c010b
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002c
new-instance v3, Lcom/twidroid/fragments/b/c$1;
invoke-direct {v3, p0, v2}, Lcom/twidroid/fragments/b/c$1;-><init>(Lcom/twidroid/fragments/b/c;Landroid/view/View;)V
invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0029
invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
return-object v0
:cond_62
iget-object v1, p0, Lcom/twidroid/fragments/b/c;->a:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->c:Ljava/lang/String;
goto :goto_21
.end method