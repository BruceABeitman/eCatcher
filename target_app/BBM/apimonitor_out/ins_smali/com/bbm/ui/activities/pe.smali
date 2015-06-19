.class final Lcom/bbm/ui/activities/pe;
.super Ljava/lang/Object;
.source "GroupListsCommentActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/pe;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final afterTextChanged(Landroid/text/Editable;)V
.registers 5
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/pe;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->c(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/activities/pe;->a:Lcom/bbm/ui/activities/GroupListsCommentActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/SendEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/SendEditText;->length()I
move-result v0
if-lez v0, :cond_18
move v0, v1
:goto_14
invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
return-void
:cond_18
const/4 v0, 0x0
goto :goto_14
.end method
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public final onTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method