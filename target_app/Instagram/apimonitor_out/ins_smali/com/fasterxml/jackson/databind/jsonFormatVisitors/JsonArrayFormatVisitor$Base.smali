.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonArrayFormatVisitor.java"
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor;
.field protected _provider:Lcom/fasterxml/jackson/databind/SerializerProvider;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;
return-void
.end method
.method public getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;
return-object v0
.end method
.method public itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
.registers 2
return-void
.end method
.method public itemsFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitable;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
return-void
.end method
.method public setProvider(Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonArrayFormatVisitor$Base;->_provider:Lcom/fasterxml/jackson/databind/SerializerProvider;
return-void
.end method