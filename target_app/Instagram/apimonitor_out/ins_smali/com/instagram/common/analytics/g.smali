.class final Lcom/instagram/common/analytics/g;
.super Ljava/lang/Object;
.source "AnalyticsSessionSerializer.java"
.method public static a(Lcom/instagram/common/analytics/f;Lcom/fasterxml/jackson/a/h;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
const-string v0, "seq"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->d()I
move-result v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumberField(Ljava/lang/String;I)V
const-string v0, "time"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->e()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/instagram/common/analytics/k;->a(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "app_id"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "app_ver"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "build_num"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "device_id"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "session_id"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->c()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "uid"
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "data"
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
invoke-virtual {p0}, Lcom/instagram/common/analytics/f;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_63
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_73
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/common/analytics/b;
invoke-static {v0, p1}, Lcom/instagram/common/analytics/c;->a(Lcom/instagram/common/analytics/b;Lcom/fasterxml/jackson/a/h;)V
goto :goto_63
:cond_73
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
const-string v0, "log_type"
const-string v1, "client_event"
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
return-void
.end method