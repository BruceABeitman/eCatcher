.class public Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$NodeDeserializer;
.super Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-class v0, Lorg/w3c/dom/Node;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$NodeDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/w3c/dom/Node;
move-result-object v0
return-object v0
.end method
.method public _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Lorg/w3c/dom/Node;
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ext/DOMDeserializer$NodeDeserializer;->parse(Ljava/lang/String;)Lorg/w3c/dom/Document;
move-result-object v0
return-object v0
.end method