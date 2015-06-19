.class public Lcom/igexin/push/core/a/c;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/c;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 8
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7a
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "bindappid_result"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7a
const-string/jumbo v0, "type"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_a0
const-string/jumbo v1, "bind"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a0
const-string/jumbo v0, "result"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "appid"
invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "id"
invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "bindappRsp|"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "|success"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
:try_end_5e
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_9e
:try_start_5e
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
invoke-static {}, Lcom/igexin/push/core/c/c;->a()Lcom/igexin/push/core/c/c;
move-result-object v4
invoke-virtual {v4, v2, v3}, Lcom/igexin/push/core/c/c;->a(J)Z
:try_end_69
.catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_69} :catch_ac
.catch Lorg/json/JSONException; {:try_start_5e .. :try_end_69} :catch_9e
move-result v2
if-eqz v2, :cond_6c
:goto_6c
:cond_6c
if-eqz v0, :cond_7c
:try_start_6e
const-string/jumbo v2, "ok"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7c
const-string/jumbo v0, "1"
:cond_7a
:goto_7a
const/4 v0, 0x1
return v0
:cond_7c
const-string/jumbo v0, "0"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "bindappRsp|"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|failed"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
goto :goto_7a
:catch_9e
move-exception v0
goto :goto_7a
:cond_a0
if-eqz v0, :cond_7a
const-string/jumbo v1, "unbind"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_a8
.catch Lorg/json/JSONException; {:try_start_6e .. :try_end_a8} :catch_9e
move-result v0
if-eqz v0, :cond_7a
goto :goto_7a
:catch_ac
move-exception v2
goto :goto_6c
.end method