.class public Lcom/tencent/stat/NetworkMonitor;
.super Ljava/lang/Object;
.field private a:J
.field private b:I
.field private c:Ljava/lang/String;
.field private d:I
.field private e:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/tencent/stat/NetworkMonitor;->a:J
iput v2, p0, Lcom/tencent/stat/NetworkMonitor;->b:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/NetworkMonitor;->c:Ljava/lang/String;
iput v2, p0, Lcom/tencent/stat/NetworkMonitor;->d:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/NetworkMonitor;->e:Ljava/lang/String;
return-void
.end method
.method public getDomain()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/NetworkMonitor;->c:Ljava/lang/String;
return-object v0
.end method
.method public getMillisecondsConsume()J
.registers 3
iget-wide v0, p0, Lcom/tencent/stat/NetworkMonitor;->a:J
return-wide v0
.end method
.method public getPort()I
.registers 2
iget v0, p0, Lcom/tencent/stat/NetworkMonitor;->d:I
return v0
.end method
.method public getRemoteIp()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/NetworkMonitor;->e:Ljava/lang/String;
return-object v0
.end method
.method public getStatusCode()I
.registers 2
iget v0, p0, Lcom/tencent/stat/NetworkMonitor;->b:I
return v0
.end method
.method public setDomain(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/NetworkMonitor;->c:Ljava/lang/String;
return-void
.end method
.method public setMillisecondsConsume(J)V
.registers 3
iput-wide p1, p0, Lcom/tencent/stat/NetworkMonitor;->a:J
return-void
.end method
.method public setPort(I)V
.registers 2
iput p1, p0, Lcom/tencent/stat/NetworkMonitor;->d:I
return-void
.end method
.method public setRemoteIp(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/NetworkMonitor;->e:Ljava/lang/String;
return-void
.end method
.method public setStatusCode(I)V
.registers 2
iput p1, p0, Lcom/tencent/stat/NetworkMonitor;->b:I
return-void
.end method
.method public toJSONObject()Lorg/json/JSONObject;
.registers 7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v1, "tm"
iget-wide v2, p0, Lcom/tencent/stat/NetworkMonitor;->a:J
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string/jumbo v1, "st"
iget v2, p0, Lcom/tencent/stat/NetworkMonitor;->b:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/tencent/stat/NetworkMonitor;->c:Ljava/lang/String;
if-eqz v1, :cond_21
const-string/jumbo v1, "dm"
iget-object v2, p0, Lcom/tencent/stat/NetworkMonitor;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_21
const-string/jumbo v1, "pt"
iget v2, p0, Lcom/tencent/stat/NetworkMonitor;->d:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/tencent/stat/NetworkMonitor;->e:Ljava/lang/String;
if-eqz v1, :cond_35
const-string/jumbo v1, "rip"
iget-object v2, p0, Lcom/tencent/stat/NetworkMonitor;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_35
const-string/jumbo v1, "ts"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:try_end_42
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_42} :catch_43
:goto_42
return-object v0
:catch_43
move-exception v1
goto :goto_42
.end method