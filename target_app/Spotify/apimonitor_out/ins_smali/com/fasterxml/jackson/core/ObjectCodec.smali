.class public abstract Lcom/fasterxml/jackson/core/ObjectCodec;
.super Ljava/lang/Object;
.source "SourceFile"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
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
.method public abstract treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
.end method
.method public abstract writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.end method