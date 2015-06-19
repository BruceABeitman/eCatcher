.class public Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
.super Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.source "ContextAttributes.java"
.implements Ljava/io/Serializable;
.field protected static final EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl; = null
.field protected static final NULL_SURROGATE:Ljava/lang/Object; = null
.field private static final serialVersionUID:J = 0x1L
.field protected transient _nonShared:Ljava/util/Map;
.field protected final _shared:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>(Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
return-void
.end method
.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
return-void
.end method
.method private _copy(Ljava/util/Map;)Ljava/util/Map;
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
return-object v0
.end method
.method public static getEmpty()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 1
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
return-object v0
.end method
.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_12
sget-object v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;
if-ne v0, v1, :cond_11
const/4 v0, 0x0
:goto_11
:cond_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_11
.end method
.method protected nonSharedInstance(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
if-nez p2, :cond_9
sget-object p2, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;
:cond_9
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;Ljava/util/Map;)V
return-object v1
.end method
.method public withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 4
if-nez p2, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
sget-object p2, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->NULL_SURROGATE:Ljava/lang/Object;
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
if-nez v0, :cond_15
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->nonSharedInstance(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
move-result-object p0
:goto_14
:cond_14
return-object p0
:cond_15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_nonShared:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_14
.end method
.method public withSharedAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
if-ne p0, v0, :cond_14
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x8
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
:goto_b
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V
return-object v1
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_copy(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
goto :goto_b
.end method
.method public withSharedAttributes(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V
return-object v0
.end method
.method public withoutSharedAttribute(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-eqz v0, :cond_9
:goto_8
:cond_8
return-object p0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_1d
sget-object p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->EMPTY:Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
goto :goto_8
:cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_shared:Ljava/util/Map;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->_copy(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
new-instance p0, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;-><init>(Ljava/util/Map;)V
goto :goto_8
.end method