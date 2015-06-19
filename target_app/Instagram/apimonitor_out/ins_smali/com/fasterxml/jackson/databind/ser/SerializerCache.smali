.class public final Lcom/fasterxml/jackson/databind/ser/SerializerCache;
.super Ljava/lang/Object;
.source "SerializerCache.java"
.field private _readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
.field private _sharedMap:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x40
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
return-void
.end method
.method public final addAndResolveNonTypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
:cond_12
instance-of v0, p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
if-eqz v0, :cond_1b
check-cast p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
invoke-interface {p2, p3}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_1b
monitor-exit p0
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1d
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final addAndResolveNonTypedSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
:cond_12
instance-of v0, p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
if-eqz v0, :cond_1b
check-cast p2, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;
invoke-interface {p2, p3}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
:cond_1b
monitor-exit p0
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1d
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final addTypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x1
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
:cond_12
monitor-exit p0
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final addTypedSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x1
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V
invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_12
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
:cond_12
monitor-exit p0
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized flush()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_8
monitor-exit p0
return-void
:catchall_8
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final getReadOnlyLookupMap()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
if-nez v0, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->from(Ljava/util/HashMap;)Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_readOnlyMap:Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
:cond_d
monitor-exit p0
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_13
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;->instance()Lcom/fasterxml/jackson/databind/ser/impl/ReadOnlyClassToSerializerMap;
move-result-object v0
return-object v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized size()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_9
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final typedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x1
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
monitor-exit p0
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_11
return-object v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final typedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x1
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
monitor-exit p0
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_11
return-object v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final untypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
monitor-exit p0
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_11
return-object v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final untypedValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache;->_sharedMap:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
const/4 v2, 0x0
invoke-direct {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
monitor-exit p0
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_11
return-object v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method