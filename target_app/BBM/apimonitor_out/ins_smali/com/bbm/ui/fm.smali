.class final Lcom/bbm/ui/fm;
.super Ljava/lang/Object;
.source "SearchEditText.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/SearchEditText;
.method constructor <init>(Lcom/bbm/ui/SearchEditText;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/fm; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->c(Lcom/bbm/ui/SearchEditText;)Landroid/widget/LinearLayout;
move-result-object v1
if-eqz p2, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/fm;->a:Lcom/bbm/ui/SearchEditText;
invoke-static {v0}, Lcom/bbm/ui/SearchEditText;->d(Lcom/bbm/ui/SearchEditText;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-lez v0, :cond_1d
const/4 v0, 0x0
:goto_19
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
const-string v1, " - Lcom/bbm/ui/fm; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
const/16 v0, 0x8
goto :goto_19
.end method