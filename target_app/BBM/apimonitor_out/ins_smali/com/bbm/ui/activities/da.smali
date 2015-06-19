.class final Lcom/bbm/ui/activities/da;
.super Ljava/lang/Object;
.source "ChannelOwnerProfileActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/da;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
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
iget-object v0, p0, Lcom/bbm/ui/activities/da;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->c(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/da;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->b(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_1b
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_1b
.end method