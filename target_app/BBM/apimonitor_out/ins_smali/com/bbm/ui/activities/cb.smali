.class final Lcom/bbm/ui/activities/cb;
.super Ljava/lang/Object;
.source "ChangeStatusActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/d/ge;
.field final synthetic b:Lcom/bbm/ui/activities/cc;
.field final synthetic c:Lcom/bbm/ui/activities/by;
.method constructor <init>(Lcom/bbm/ui/activities/by;Lcom/bbm/d/ge;Lcom/bbm/ui/activities/cc;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/cb;->c:Lcom/bbm/ui/activities/by;
iput-object p2, p0, Lcom/bbm/ui/activities/cb;->a:Lcom/bbm/d/ge;
iput-object p3, p0, Lcom/bbm/ui/activities/cb;->b:Lcom/bbm/ui/activities/cc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/cb; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
const-string v0, "busyButton Clicked"
const-class v3, Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:goto_1e
const-string v1, " - Lcom/bbm/ui/activities/cb; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
const-wide/16 v3, -0x1
invoke-static {v0, v3, v4}, Lcom/bbm/ui/activities/ChangeStatusActivity;->b(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J
invoke-virtual {p1}, Landroid/view/View;->isActivated()Z
move-result v0
if-nez v0, :cond_77
move v0, v1
:goto_2f
invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->a:Lcom/bbm/d/ge;
iget-wide v3, v0, Lcom/bbm/d/ge;->a:J
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->a:Lcom/bbm/d/ge;
iget-boolean v0, v0, Lcom/bbm/d/ge;->c:Z
if-nez v0, :cond_79
:goto_3c
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
new-instance v5, Ljava/util/LinkedList;
invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->b:Lcom/bbm/ui/activities/cc;
iget-object v6, v0, Lcom/bbm/ui/activities/cc;->a:Landroid/widget/LinearLayout;
if-eqz v1, :cond_7b
const-string v0, "listItemIconBusy"
:goto_4e
invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V
:try_start_51
const-string v0, "id"
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "showBusy"
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/cb;->c:Lcom/bbm/ui/activities/by;
iget-object v0, v0, Lcom/bbm/ui/activities/by;->b:Lcom/bbm/ui/activities/ChangeStatusActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->j(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/d/a;
move-result-object v0
const-string v1, "status"
invoke-static {v5, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:try_end_71
.catch Lorg/json/JSONException; {:try_start_51 .. :try_end_71} :catch_72
goto :goto_1e
:catch_72
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_1e
:cond_77
move v0, v2
goto :goto_2f
:cond_79
move v1, v2
goto :goto_3c
:cond_7b
const-string v0, "listItemIconAvailable"
goto :goto_4e
.end method