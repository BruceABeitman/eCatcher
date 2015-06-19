.class final Lcom/bbm/ui/activities/mc;
.super Ljava/lang/Object;
.source "GroupChatListActivity.java"
.implements Lcom/bbm/f/ac;
.field private final a:Landroid/app/Activity;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/activities/mc;->a:Landroid/app/Activity;
iput-object p2, p0, Lcom/bbm/ui/activities/mc;->b:Ljava/lang/String;
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 7
const-string v0, "listAdd"
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
:try_start_c
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_62
const-string v1, "cookie"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/mc;->b:Ljava/lang/String;
invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_62
invoke-static {}, Lcom/bbm/ui/activities/GroupChatListActivity;->b()Lcom/bbm/g/am;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v1, p0}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
const-string v1, "elements"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
const-string v1, "uri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "groupUri"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/bbm/ui/activities/mc;->a:Landroid/app/Activity;
const-class v4, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "groupConversationUri"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "groupUri"
invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/mc;->a:Landroid/app/Activity;
invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:try_end_62
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_62} :catch_63
:goto_62
:cond_62
return-void
:catch_63
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_62
.end method