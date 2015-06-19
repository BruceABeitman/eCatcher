.class public Lcom/igexin/push/core/d/d;
.super Lcom/igexin/push/e/a/b;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/igexin/push/e/a/b;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/igexin/push/core/d/d;->b()V
return-void
.end method
.method public a([B)V
.registers 3
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a([B)V
return-void
.end method
.method public a_()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public b()V
.registers 4
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v1, "action"
const-string/jumbo v2, "sdkconfig"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "cid"
sget-object v2, Lcom/igexin/push/core/g;->u:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "appid"
sget-object v2, Lcom/igexin/push/core/g;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "sdk_version"
const-string/jumbo v2, "2.2.5.7"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-static {v0}, Lcom/igexin/a/b/a;->b([B)[B
move-result-object v0
invoke-virtual {p0, v0}, Lcom/igexin/push/core/d/d;->b([B)V
:goto_36
:try_end_36
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
goto :goto_36
.end method