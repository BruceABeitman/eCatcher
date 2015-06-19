.class public Lcom/fasterxml/jackson/core/json/DupDetector;
.super Ljava/lang/Object;
.source "DupDetector.java"
.field protected _firstName:Ljava/lang/String;
.field protected _secondName:Ljava/lang/String;
.field protected _seen:Ljava/util/HashSet;
.field protected final _source:Ljava/lang/Object;
.method private constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;
return-void
.end method
.method public static rootDetector(Lcom/fasterxml/jackson/core/JsonGenerator;)Lcom/fasterxml/jackson/core/json/DupDetector;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/json/DupDetector;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public static rootDetector(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/json/DupDetector;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/core/json/DupDetector;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/json/DupDetector;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public child()Lcom/fasterxml/jackson/core/json/DupDetector;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/core/json/DupDetector;
iget-object v1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/json/DupDetector;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public findLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;
instance-of v0, v0, Lcom/fasterxml/jackson/core/JsonParser;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_source:Ljava/lang/Object;
check-cast v0, Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public isDup(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;
if-nez v2, :cond_a
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;
move v0, v1
:cond_9
:goto_9
return v0
:cond_a
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;
if-nez v2, :cond_1a
iput-object p1, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;
move v0, v1
goto :goto_9
:cond_1a
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
if-nez v2, :cond_3d
new-instance v2, Ljava/util/HashSet;
const/16 v3, 0x10
invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V
iput-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
iget-object v3, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_3d
iget-object v2, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9
move v0, v1
goto :goto_9
.end method
.method public reset()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_firstName:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_secondName:Ljava/lang/String;
iput-object v0, p0, Lcom/fasterxml/jackson/core/json/DupDetector;->_seen:Ljava/util/HashSet;
return-void
.end method