.class final Lcom/bbm/ui/activities/yx;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/NewGroupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yx;->a:Lcom/bbm/ui/activities/NewGroupActivity;
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
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/yx;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewGroupActivity;->e(Lcom/bbm/ui/activities/NewGroupActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/yx;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewGroupActivity;->d(Lcom/bbm/ui/activities/NewGroupActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->length()I
move-result v0
if-lez v0, :cond_17
const/4 v0, 0x1
:goto_13
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
return-void
:cond_17
const/4 v0, 0x0
goto :goto_13
.end method