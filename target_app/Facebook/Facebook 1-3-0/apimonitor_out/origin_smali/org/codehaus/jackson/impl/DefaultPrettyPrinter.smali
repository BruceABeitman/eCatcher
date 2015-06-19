.class public Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/jackson/PrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;,
        Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;,
        Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;
    }
.end annotation


# instance fields
.field protected mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected mNesting:I

.field protected mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected mSpacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    new-instance v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mSpacesInObjectEntries:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public indentArraysWith(Lorg/codehaus/jackson/impl/Indenter;)V
    .registers 3

    if-nez p1, :cond_a

    new-instance v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :goto_7
    iput-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    return-void

    :cond_a
    move-object v0, p1

    goto :goto_7
.end method

.method public indentObjectsWith(Lorg/codehaus/jackson/impl/Indenter;)V
    .registers 3

    if-nez p1, :cond_a

    new-instance v0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter$NopIndenter;-><init>()V

    :goto_7
    iput-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    return-void

    :cond_a
    move-object v0, p1

    goto :goto_7
.end method

.method public spacesInObjectEntries(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mSpacesInObjectEntries:Z

    return-void
.end method

.method public writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    :cond_e
    if-lez p2, :cond_1d

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    :goto_17
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void

    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_17
.end method

.method public writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    :cond_e
    if-lez p2, :cond_1d

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    :goto_17
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void

    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_17
.end method

.method public writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    return-void
.end method

.method public writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mSpacesInObjectEntries:Z

    if-eqz v0, :cond_a

    const-string v0, " : "

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_9
.end method

.method public writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mArrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    :cond_e
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method

.method public writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    iget-object v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mObjectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/DefaultPrettyPrinter;->mNesting:I

    :cond_13
    return-void
.end method
