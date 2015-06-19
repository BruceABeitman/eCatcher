.class final Lcom/bbm/ui/activities/aet;
.super Ljava/lang/Object;
.source "SelectContactActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aet;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aet; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v0, 0x8
if-eqz p2, :cond_1f
iget-object v1, p0, Lcom/bbm/ui/activities/aet;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->n(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/LinearLayout;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/aet;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->o(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-interface {v2}, Landroid/text/Editable;->length()I
move-result v2
if-lez v2, :cond_1b
const/4 v0, 0x0
:cond_1b
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
:goto_1e
const-string v1, " - Lcom/bbm/ui/activities/aet; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
iget-object v1, p0, Lcom/bbm/ui/activities/aet;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->n(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/LinearLayout;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_1e
.end method