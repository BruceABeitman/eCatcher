.class public Lcom/igexin/push/core/a/a/j;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/a/a/a;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/a/j;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/b;
.registers 4
sget-object v0, Lcom/igexin/push/core/b;->a:Lcom/igexin/push/core/b;
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
.registers 5
:try_start_0
new-instance v0, Lcom/igexin/push/core/bean/j;
invoke-direct {v0}, Lcom/igexin/push/core/bean/j;-><init>()V
const-string/jumbo v1, "startapp"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->setType(Ljava/lang/String;)V
const-string/jumbo v1, "actionid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->setActionId(Ljava/lang/String;)V
const-string/jumbo v1, "do"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->setDoActionId(Ljava/lang/String;)V
const-string/jumbo v1, "appstartupid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_39
const-string/jumbo v1, "appstartupid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v2, "android"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->a(Ljava/lang/String;)V
:cond_39
const-string/jumbo v1, "is_autostart"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4c
const-string/jumbo v1, "is_autostart"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->d(Ljava/lang/String;)V
:cond_4c
const-string/jumbo v1, "appid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5f
const-string/jumbo v1, "appid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->b(Ljava/lang/String;)V
:cond_5f
const-string/jumbo v1, "noinstall_action"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_72
const-string/jumbo v1, "noinstall_action"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/j;->c(Ljava/lang/String;)V
:try_end_72
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_72} :catch_73
:cond_72
:goto_72
return-object v0
:catch_73
move-exception v0
const/4 v0, 0x0
goto :goto_72
.end method
.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
.registers 12
const/4 v2, 0x1
const/4 v1, 0x0
if-eqz p1, :cond_76
if-eqz p2, :cond_76
move-object v0, p2
check-cast v0, Lcom/igexin/push/core/bean/j;
sget-object v3, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v5
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->b()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_4a
sget-object v3, Lcom/igexin/push/core/g;->c:Ljava/lang/String;
move v4, v2
:goto_1f
if-eqz v4, :cond_78
:try_start_21
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v4
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v4, v6, v7, v3, v8}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
check-cast p2, Lcom/igexin/push/core/bean/j;
invoke-virtual {p2}, Lcom/igexin/push/core/bean/j;->d()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "true"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5d
sget-object v3, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
:try_end_45
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_d3
move-result-object v3
if-nez v3, :cond_58
move v0, v1
:goto_49
return v0
:cond_4a
sget-object v4, Lcom/igexin/push/core/g;->c:Ljava/lang/String;
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->b()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_f1
move v4, v2
goto :goto_1f
:try_start_58
:cond_58
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_5d
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->getDoActionId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_76
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->getDoActionId()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v3, v4, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:goto_76
:cond_76
move v0, v2
goto :goto_49
:cond_78
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v4
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v7
const/4 v8, 0x0
invoke-virtual {v4, v6, v7, v3, v8}, Lcom/igexin/push/core/a/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->d()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "true"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_ef
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v3
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/igexin/push/core/a/f;->d(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_b7
check-cast p2, Lcom/igexin/push/core/bean/j;
invoke-virtual {p2}, Lcom/igexin/push/core/bean/j;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v3
if-nez v3, :cond_b1
move v0, v1
goto :goto_49
:cond_b1
sget-object v1, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
move v1, v2
:goto_b7
:cond_b7
if-eqz v1, :cond_d5
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->getDoActionId()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_76
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->getDoActionId()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v3, v4, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
goto :goto_76
:catch_d3
move-exception v0
goto :goto_76
:cond_d5
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->c()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_76
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/igexin/push/core/bean/j;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v3, v4, v0}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:try_end_ee
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_ee} :catch_d3
goto :goto_76
:cond_ef
move v1, v2
goto :goto_b7
:cond_f1
move v4, v1
goto/16 :goto_1f
.end method