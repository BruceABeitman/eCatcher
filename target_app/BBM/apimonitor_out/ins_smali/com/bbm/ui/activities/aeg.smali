.class final Lcom/bbm/ui/activities/aeg;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/k;
.field final synthetic b:Landroid/content/Context;
.field final synthetic c:Lcom/bbm/d/ea;
.method constructor <init>(Lcom/bbm/ui/b/k;Landroid/content/Context;Lcom/bbm/d/ea;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/aeg;->a:Lcom/bbm/ui/b/k;
iput-object p2, p0, Lcom/bbm/ui/activities/aeg;->b:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/activities/aeg;->c:Lcom/bbm/d/ea;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aeg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "renameCategoryDialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/activities/SelectCategoryActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aeg;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_18
:goto_17
const-string v1, " - Lcom/bbm/ui/activities/aeg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_18
invoke-static {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_31
iget-object v0, p0, Lcom/bbm/ui/activities/aeg;->a:Lcom/bbm/ui/b/k;
iget-object v1, p0, Lcom/bbm/ui/activities/aeg;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0261
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->e(Ljava/lang/String;)V
goto :goto_17
:cond_31
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
:try_start_3b
const-string v3, "name"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "id"
iget-object v3, p0, Lcom/bbm/ui/activities/aeg;->c:Lcom/bbm/d/ea;
iget-wide v3, v3, Lcom/bbm/d/ea;->b:J
invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v1, "category"
invoke-static {v2, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_5b
:try_end_5b
.catch Lorg/json/JSONException; {:try_start_3b .. :try_end_5b} :catch_61
iget-object v0, p0, Lcom/bbm/ui/activities/aeg;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V
goto :goto_17
:catch_61
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_5b
.end method