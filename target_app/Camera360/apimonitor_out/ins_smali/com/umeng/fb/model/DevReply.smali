.class public Lcom/umeng/fb/model/DevReply;
.super Lcom/umeng/fb/model/Reply;
.source "DevReply.java"
.field protected a:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 12
sget-object v5, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/fb/model/Reply$TYPE;)V
iput-object p5, p0, Lcom/umeng/fb/model/DevReply;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 5
invoke-direct {p0, p1}, Lcom/umeng/fb/model/Reply;-><init>(Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/umeng/fb/model/DevReply;->g:Lcom/umeng/fb/model/Reply$TYPE;
sget-object v1, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
if-eq v0, v1, :cond_2f
new-instance v0, Lorg/json/JSONException;
new-instance v1, Ljava/lang/StringBuilder;
const-class v2, Lcom/umeng/fb/model/DevReply;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ".type must be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/umeng/fb/model/Reply$TYPE;->DEV_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
const-string/jumbo v0, "user_name"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/DevReply;->a:Ljava/lang/String;
return-void
.end method
.method public toJson()Lorg/json/JSONObject;
.registers 4
invoke-super {p0}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;
move-result-object v0
if-eqz v0, :cond_13
:try_start_6
const-string/jumbo v1, "user_name"
iget-object v2, p0, Lcom/umeng/fb/model/DevReply;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_e
.catch Lorg/json/JSONException; {:try_start_6 .. :try_end_e} :catch_f
:goto_e
return-object v0
:catch_f
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
:cond_13
const/4 v0, 0x0
goto :goto_e
.end method