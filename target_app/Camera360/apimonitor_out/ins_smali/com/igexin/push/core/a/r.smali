.class public Lcom/igexin/push/core/a/r;
.super Lcom/igexin/push/core/a/b;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 10
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_43
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "sendmessage_feedback"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
const-string/jumbo v0, "appid"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v0, "taskid"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v0, "actionid"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v0, "result"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v0, "timestamp"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v5
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual/range {v0 .. v6}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
:cond_43
:goto_43
:try_end_43
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_43} :catch_45
const/4 v0, 0x1
return v0
:catch_45
move-exception v0
goto :goto_43
.end method