.class public Lcom/fasterxml/jackson/databind/ser/std/StdContainerSerializers;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static collectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 10
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;
const/4 v4, 0x0
move-object v1, p0
move v2, p1
move-object v3, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public static enumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-object v0
.end method
.method public static indexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 10
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;
const/4 v4, 0x0
move-object v1, p0
move v2, p1
move-object v3, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-object v0
.end method
.method public static iterableSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-object v0
.end method
.method public static iteratorSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-object v0
.end method