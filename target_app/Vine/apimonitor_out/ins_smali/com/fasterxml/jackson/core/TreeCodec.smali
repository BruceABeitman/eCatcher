.class public abstract Lcom/fasterxml/jackson/core/TreeCodec;
.super Ljava/lang/Object;
.source "TreeCodec.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract createArrayNode()Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public abstract createObjectNode()Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public abstract readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
.end method
.method public abstract treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;
.end method
.method public abstract writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/TreeNode;)V
.end method