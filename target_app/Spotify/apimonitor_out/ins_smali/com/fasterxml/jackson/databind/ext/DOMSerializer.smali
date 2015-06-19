.class public Lcom/fasterxml/jackson/databind/ext/DOMSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"
.field protected final _domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;
.method public constructor <init>()V
.registers 5
const-class v0, Lorg/w3c/dom/Node;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V
:try_start_5
invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_14
move-result-object v0
const-string v1, "LS"
invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
move-result-object v0
check-cast v0, Lorg/w3c/dom/ls/DOMImplementationLS;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;
return-void
:catch_14
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not instantiate DOMImplementationRegistry: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
check-cast p1, Lorg/w3c/dom/Node;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->serialize(Lorg/w3c/dom/Node;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
return-void
.end method
.method public serialize(Lorg/w3c/dom/Node;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Could not find DOM LS"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ext/DOMSerializer;->_domImpl:Lorg/w3c/dom/ls/DOMImplementationLS;
invoke-interface {v0}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;
move-result-object v0
invoke-interface {v0, p1}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
return-void
.end method