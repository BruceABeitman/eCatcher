.class public abstract Lcom/fasterxml/jackson/core/ObjectCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;->getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/core/TreeNode;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/TreeNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.end method
