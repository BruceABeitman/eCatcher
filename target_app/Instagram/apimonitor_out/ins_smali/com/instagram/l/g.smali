.class public final Lcom/instagram/l/g;
.super Ljava/lang/Object;
.source "QuickExperimentFileCacheJsonHelper.java"
.method static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/l/h;
.registers 7
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_a
const/4 v0, 0x0
:cond_9
return-object v0
:cond_a
new-instance v0, Lcom/instagram/l/h;
invoke-direct {v0}, Lcom/instagram/l/h;-><init>()V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/l/h;->a(Ljava/util/Map;)V
:cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_9
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
const-string v3, "last_sync_timestamp_in_ms"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_35
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/instagram/l/h;->a(J)V
:cond_35
const-string v3, "experiments"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_17
:goto_3d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v2, v3, :cond_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
:goto_51
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v4
sget-object v5, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v4, v5, :cond_68
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v5
invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_51
:cond_68
new-instance v4, Lcom/instagram/l/d;
invoke-direct {v4, v2, v3}, Lcom/instagram/l/d;-><init>(Ljava/lang/String;Ljava/util/Map;)V
invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3d
.end method
.method static a(Lcom/fasterxml/jackson/a/h;Lcom/instagram/l/h;)V
.registers 6
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v0, "last_sync_timestamp_in_ms"
invoke-virtual {p1}, Lcom/instagram/l/h;->b()J
move-result-wide v1
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;J)V
invoke-virtual {p1}, Lcom/instagram/l/h;->a()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_6d
const-string v0, "experiments"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/instagram/l/h;->a()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_23
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/h;->writeObjectFieldStart(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/l/d;
invoke-virtual {v0}, Lcom/instagram/l/d;->a()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_4a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4a
:cond_66
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
goto :goto_23
:cond_6a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
:cond_6d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method