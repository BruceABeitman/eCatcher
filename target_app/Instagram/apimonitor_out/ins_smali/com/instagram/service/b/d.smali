.class public abstract Lcom/instagram/service/b/d;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "DelegateValueMapper.java"
.field protected b:Ljava/lang/Class;
.field protected c:Lcom/instagram/service/b/a;
.method public constructor <init>(Ljava/lang/Class;Lcom/instagram/service/b/a;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V
iput-object p1, p0, Lcom/instagram/service/b/d;->b:Ljava/lang/Class;
iput-object p2, p0, Lcom/instagram/service/b/d;->c:Lcom/instagram/service/b/a;
return-void
.end method
.method public canCreateUsingDelegate()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public getValueTypeDesc()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/service/b/d;->b:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method