.class public final Lcom/mato/sdk/b/i;
.super Lcom/mato/sdk/b/c;
.field private static final a:Ljava/lang/String; = "Mato.MatoNdkUpdateAsynTask"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/mato/sdk/b/c;-><init>()V
return-void
.end method
.method final a()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/mato/sdk/a/b;->g()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method final b()Lorg/apache/http/HttpEntity;
.registers 7
invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/mato/sdk/a/b;->i()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/mato/sdk/utils/g;->g()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "2989d4f8dcda393d1c1ca3c021f0cb10"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/mato/sdk/utils/j;->a([B)Ljava/lang/String;
move-result-object v3
:try_start_30
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v5, "packageName"
invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "ndkVersion"
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v0, "timestamp"
invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "authKey"
invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "appType"
const/4 v1, 0x0
invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v0, "Mato.MatoNdkUpdateAsynTask"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "the ndkcheck url is:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/mato/sdk/a/b;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Mato.MatoNdkUpdateAsynTask"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "the request for ndk check is:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/entity/StringEntity;
invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "UTF-8"
invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_98
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_98} :catch_99
:goto_98
return-object v0
:catch_99
move-exception v0
const/4 v0, 0x0
goto :goto_98
.end method
.method final c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method