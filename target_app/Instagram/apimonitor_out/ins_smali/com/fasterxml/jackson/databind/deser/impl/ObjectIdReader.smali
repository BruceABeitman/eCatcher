.class public final Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.super Ljava/lang/Object;
.source "ObjectIdReader.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field public final deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.field public final idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.field public final idType:Lcom/fasterxml/jackson/databind/JavaType;
.field public final propertyName:Ljava/lang/String;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Ljava/lang/String;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-void
.end method
.method public static construct(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 11
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-object v0
.end method