.class final Lcom/bbm/ui/activities/aeu;
.super Ljava/lang/Object;
.source "SelectContactActivity.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aeu;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/aeu;->a:Lcom/bbm/ui/activities/SelectContactActivity;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aeu;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->o(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/EditText;
move-result-object v0
const/4 v1, 0x6
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V
const/4 v0, 0x0
return v0
.end method