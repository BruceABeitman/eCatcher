.class final Lcom/bbm/ui/activities/ca;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/d/ge;
.field final synthetic b:Lcom/bbm/ui/activities/cc;
.field final synthetic c:Lcom/bbm/ui/activities/by;
.method constructor <init>(Lcom/bbm/ui/activities/by;Lcom/bbm/d/ge;Lcom/bbm/ui/activities/cc;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iput-object p2, p0, Lcom/bbm/ui/activities/ca;->a:Lcom/bbm/d/ge;
iput-object p3, p0, Lcom/bbm/ui/activities/ca;->b:Lcom/bbm/ui/activities/cc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ca; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
move-result-object v0
if-eqz v0, :cond_c
:cond_b
:goto_b
const-string v1, " - Lcom/bbm/ui/activities/ca; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_c
if-eqz p2, :cond_1e
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->l(Lcom/bbm/ui/activities/ChangeStatusActivity;)J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/ui/activities/ca;->a:Lcom/bbm/d/ge;
iget-wide v2, v2, Lcom/bbm/d/ge;->a:J
cmp-long v0, v0, v2
if-eqz v0, :cond_b
:cond_1e
if-eqz p2, :cond_40
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/ca;->a:Lcom/bbm/d/ge;
iget-wide v1, v1, Lcom/bbm/d/ge;->a:J
invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->b:Lcom/bbm/ui/activities/cc;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/bbm/ui/activities/cc;->c:Z
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
const-string v1, "input_method"
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {v0, p1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
goto :goto_b
:cond_40
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->b:Lcom/bbm/ui/activities/cc;
iget-boolean v0, v0, Lcom/bbm/ui/activities/cc;->c:Z
if-nez v0, :cond_b
check-cast p1, Landroid/widget/EditText;
invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v1, v1, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v1, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/ChangeStatusActivity;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b
:try_start_5a
iget-object v1, p0, Lcom/bbm/ui/activities/ca;->a:Lcom/bbm/d/ge;
iget-wide v1, v1, Lcom/bbm/d/ge;->a:J
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
new-instance v4, Ljava/util/LinkedList;
invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_b
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_b
const-string v5, "id"
invoke-virtual {v3, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "status"
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->j(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/d/a;
move-result-object v0
const-string v1, "status"
invoke-static {v4, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ca;->b:Lcom/bbm/ui/activities/cc;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/ui/activities/cc;->c:Z
:try_end_9d
.catch Lorg/json/JSONException; {:try_start_5a .. :try_end_9d} :catch_9f
goto/16 :goto_b
:catch_9f
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto/16 :goto_b
.end method