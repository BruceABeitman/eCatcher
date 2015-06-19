.class public Lcom/umeng/newxp/net/e;
.super Lcom/umeng/common/net/n;
.source "XpReportRequest.java"
.field public static e:[Ljava/lang/String;
.field public a:Ljava/util/Map;
.method public constructor <init>(Ljava/util/Map;)V
.registers 2
invoke-direct {p0}, Lcom/umeng/common/net/n;-><init>()V
iput-object p1, p0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;
return-void
.end method
.method public static a(Lorg/json/JSONObject;)Lcom/umeng/newxp/net/e;
.registers 5
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_15
new-instance v0, Lcom/umeng/newxp/net/e;
invoke-direct {v0, v2}, Lcom/umeng/newxp/net/e;-><init>(Ljava/util/Map;)V
return-object v0
:cond_15
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public a()Lorg/json/JSONObject;
.registers 3
new-instance v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;
iget-object v1, p0, Lcom/umeng/newxp/net/e;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/umeng/common/util/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/umeng/newxp/net/e;->c:Ljava/lang/String;
return-object v0
.end method
.method public e()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
:cond_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/umeng/newxp/net/e;->d:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/umeng/common/util/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string/jumbo v3, "date"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_f
const-string/jumbo v3, "action_type"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_f
const-string/jumbo v3, "time"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_f
const-string/jumbo v3, "ts"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_f
iget-object v3, p0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
.end method