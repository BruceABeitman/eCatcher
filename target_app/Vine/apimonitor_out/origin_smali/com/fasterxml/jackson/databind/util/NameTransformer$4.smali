.class final Lcom/fasterxml/jackson/databind/util/NameTransformer$4;
.super Lcom/fasterxml/jackson/databind/util/NameTransformer;
.source "NameTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;->val$suffix:Ljava/lang/String;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;->val$suffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;->val$suffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SuffixTransformer(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;->val$suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
