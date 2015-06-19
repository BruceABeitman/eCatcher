.class  Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetEvents.java"
.field static final synthetic $assertionsDisabled:Z = false
.field private static final TAG:Ljava/lang/String; = "FqlGetEventInfo"
.field private final mEvents:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
.registers 8
invoke-static {p5, p6}, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->buildQuery(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->mEvents:Ljava/util/List;
return-void
.end method
.method protected static buildQuery(J)Ljava/lang/String;
.registers 10
new-instance v3, Landroid/text/format/Time;
invoke-direct {v3}, Landroid/text/format/Time;-><init>()V
invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J
move-result-wide v4
const-wide/16 v6, 0x3e8
div-long v1, v4, v6
new-instance v0, Ljava/lang/StringBuilder;
const-string v4, "SELECT eid, name, tagline, pic_small, pic, host, description, event_type, event_subtype, start_time, end_time, creator, location, venue, hide_guest_list FROM event WHERE end_time > "
invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, " AND eid IN (SELECT eid FROM event_member where uid="
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, ") ORDER BY start_time"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method
.method public getEvents()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->mEvents:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 5
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_1f
:goto_8
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_d
:cond_c
return-void
:cond_d
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_1a
invoke-static {p1}, Lcom/facebook/katana/service/api/FacebookEvent;->parseFromJSON(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookEvent;
move-result-object v0
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->mEvents:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_1a
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_8
:cond_1f
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_c
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-boolean v2, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->$assertionsDisabled:Z
if-nez v2, :cond_c
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-eq v1, v2, :cond_c
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
.end method