.class public abstract Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
return-void
.end method
.method public idFromBaseType()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public init(Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 2
return-void
.end method