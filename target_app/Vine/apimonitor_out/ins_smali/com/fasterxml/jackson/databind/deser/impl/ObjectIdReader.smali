.class public Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.super Ljava/lang/Object;
.source "ObjectIdReader.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _idType:Lcom/fasterxml/jackson/databind/JavaType;
.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.field public final idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.field public final propertyName:Lcom/fasterxml/jackson/databind/PropertyName;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 12
new-instance v2, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-direct {v2, p2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
move-object v0, p0
move-object v1, p1
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-void
.end method
.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 11
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-object v0
.end method
.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
invoke-static {p0, v0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-result-object v0
return-object v0
.end method
.method public getDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method public getIdType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_idType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method