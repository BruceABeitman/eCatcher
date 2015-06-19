.class public abstract Lcom/fasterxml/jackson/core/ObjectCodec;
.super Lcom/fasterxml/jackson/core/TreeCodec;
.source "ObjectCodec.java"
.implements Lcom/fasterxml/jackson/core/Versioned;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/core/TreeCodec;-><init>()V
return-void
.end method
.method public abstract createArrayNode()Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public abstract createObjectNode()Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;->getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
move-result-object v0
return-object v0
.end method
.method public abstract getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
.end method
.method public abstract readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public abstract readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Ljava/lang/Object;
.end method
.method public abstract readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
.end method
.method public abstract readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
.end method
.method public abstract readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Ljava/util/Iterator;
.end method
.method public abstract readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
.end method
.method public abstract readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
.end method
.method public abstract treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;
.end method
.method public abstract treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;
move-result-object v0
return-object v0
.end method
.method public abstract writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/TreeNode;)V
.end method
.method public abstract writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.end method