.class final Lcom/bbm/ui/activities/yu;
.super Ljava/lang/Object;
.source "NewGroupActivity.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/ui/activities/NewGroupActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewGroupActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
const-string v0, "listAdd"
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
:try_start_c
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_66
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewGroupActivity;->a(Lcom/bbm/ui/activities/NewGroupActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_66
iget-object v1, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/NewGroupActivity;->a:Lcom/bbm/g/am;
iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
iget-object v2, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/NewGroupActivity;->b(Lcom/bbm/ui/activities/NewGroupActivity;)Lcom/bbm/f/ac;
move-result-object v2
invoke-interface {v1, v2}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
const-string v1, "elements"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v1, "uri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/NewGroupActivity;->finish()V
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
const-class v3, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "groupUri"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/yu;->a:Lcom/bbm/ui/activities/NewGroupActivity;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/NewGroupActivity;->startActivity(Landroid/content/Intent;)V
:cond_66
:try_end_66
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_66} :catch_67
:goto_66
return-void
:catch_67
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_66
.end method