.class abstract Lcom/glympse/android/lib/j;
.super Ljava/lang/Object;
.source "ApiEndpointBasic.java"
.implements Lcom/glympse/android/lib/GApiEndpoint;
.field public static final gY:I = 0xf4240
.field public static final gZ:I = 0x64
.field public static final ha:I = 0x8
.field public static final hb:I = 0xfffffff
.field public hc:Lcom/glympse/android/lib/k;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x100
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {v0, p0, p1, p2, p3}, Lcom/glympse/android/lib/j;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/glympse/android/lib/GApiEndpoint;Ljava/lang/String;)V
.registers 10
const/16 v2, 0x3f
const/16 v1, 0x26
if-eqz p2, :cond_12
if-eqz p1, :cond_39
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;
move-result-object v0
:goto_c
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_12
invoke-interface {p3, p0}, Lcom/glympse/android/lib/GApiEndpoint;->url(Ljava/lang/StringBuilder;)Z
move-result v0
if-eqz p4, :cond_27
if-eqz v0, :cond_3e
move v0, v1
:goto_1b
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "oauth_token="
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x1
:cond_27
invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I
move-result v3
const/4 v4, 0x2
if-gt v3, v4, :cond_38
if-eqz v0, :cond_40
:goto_30
invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v0, "warnings=true"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_38
return-void
:cond_39
invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTP()Ljava/lang/String;
move-result-object v0
goto :goto_c
:cond_3e
move v0, v2
goto :goto_1b
:cond_40
move v1, v2
goto :goto_30
.end method
.method public getError()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
iget-object v0, v0, Lcom/glympse/android/lib/k;->hg:Ljava/lang/String;
return-object v0
.end method
.method public getErrorDetail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
iget-object v0, v0, Lcom/glympse/android/lib/k;->hh:Ljava/lang/String;
return-object v0
.end method
.method public getHandler(Lcom/glympse/android/lib/json/GJsonHandlerStack;)Lcom/glympse/android/lib/json/GJsonHandler;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
iput-object p1, v0, Lcom/glympse/android/lib/k;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
return-object v0
.end method
.method public getResult()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
iget-object v0, v0, Lcom/glympse/android/lib/k;->hf:Ljava/lang/String;
return-object v0
.end method
.method public getTime()J
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/j;->hc:Lcom/glympse/android/lib/k;
iget-wide v0, v0, Lcom/glympse/android/lib/k;->_time:J
return-wide v0
.end method
.method public post()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public shouldRetry(ZI)Z
.registers 4
const/4 v0, 0x1
return v0
.end method
.method public userAgent()Z
.registers 2
const/4 v0, 0x0
return v0
.end method