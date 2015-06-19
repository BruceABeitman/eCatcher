.class public Lcom/igexin/push/core/a/a/g;
.super Ljava/lang/Object;
.implements Lcom/igexin/push/core/a/a/a;
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
.registers 4
:try_start_0
new-instance v0, Lcom/igexin/push/core/bean/g;
invoke-direct {v0}, Lcom/igexin/push/core/bean/g;-><init>()V
const-string/jumbo v1, "goto"
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/g;->setType(Ljava/lang/String;)V
const-string/jumbo v1, "actionid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/g;->setActionId(Ljava/lang/String;)V
const-string/jumbo v1, "do"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/core/bean/g;->setDoActionId(Ljava/lang/String;)V
:goto_1f
:try_end_1f
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_20
return-object v0
:catch_20
move-exception v0
const/4 v0, 0x0
goto :goto_1f
.end method
.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
.registers 7
if-eqz p1, :cond_2a
if-eqz p2, :cond_2a
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_2a
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
:cond_2a
const/4 v0, 0x1
return v0
.end method