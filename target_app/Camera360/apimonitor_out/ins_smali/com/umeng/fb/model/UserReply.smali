.class public Lcom/umeng/fb/model/UserReply;
.super Lcom/umeng/fb/model/Reply;
.source "UserReply.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
sget-object v5, Lcom/umeng/fb/model/Reply$TYPE;->USER_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/umeng/fb/model/Reply;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/fb/model/Reply$TYPE;)V
return-void
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 5
invoke-direct {p0, p1}, Lcom/umeng/fb/model/Reply;-><init>(Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/umeng/fb/model/UserReply;->g:Lcom/umeng/fb/model/Reply$TYPE;
sget-object v1, Lcom/umeng/fb/model/Reply$TYPE;->USER_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
if-eq v0, v1, :cond_2f
new-instance v0, Lorg/json/JSONException;
new-instance v1, Ljava/lang/StringBuilder;
const-class v2, Lcom/umeng/fb/model/UserReply;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, ".type must be "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/umeng/fb/model/Reply$TYPE;->USER_REPLY:Lcom/umeng/fb/model/Reply$TYPE;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
return-void
.end method
.method public toJson()Lorg/json/JSONObject;
.registers 2
invoke-super {p0}, Lcom/umeng/fb/model/Reply;->toJson()Lorg/json/JSONObject;
move-result-object v0
return-object v0
.end method