.class final Lcom/bbm/ui/c/x;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/c/l;
.method constructor <init>(Lcom/bbm/ui/c/l;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/x;->a:Lcom/bbm/ui/c/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/x; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v2, 0xf
if-nez p2, :cond_29
move-object v0, p1
check-cast v0, Landroid/widget/EditText;
const v1, 0x7f0200f9
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V
check-cast p1, Landroid/widget/EditText;
invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/bbm/ui/c/x;->a:Lcom/bbm/ui/c/l;
invoke-static {v1}, Lcom/bbm/ui/c/l;->c(Lcom/bbm/ui/c/l;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_29
const-string v1, " - Lcom/bbm/ui/c/x; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method