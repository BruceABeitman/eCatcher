.class  Lcom/twidroid/fragments/b$14;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/b$14; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;
iget-object v1, v1, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/twidroid/fragments/b$14;->a:Lcom/twidroid/fragments/b;
const/4 v1, 0x0
iput-object v1, v0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
:cond_27
const-string v1, " - Lcom/twidroid/fragments/b$14; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method