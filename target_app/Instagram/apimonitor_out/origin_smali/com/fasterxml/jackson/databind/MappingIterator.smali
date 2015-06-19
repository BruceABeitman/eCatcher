.class public Lcom/fasterxml/jackson/databind/MappingIterator;
.super Ljava/lang/Object;
.source "MappingIterator.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _closeParser:Z

.field protected final _context:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field protected final _deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _hasNextChecked:Z

.field protected _parser:Lcom/fasterxml/jackson/a/l;

.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _updatedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/MappingIterator;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/MappingIterator;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/MappingIterator;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/MappingIterator;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_closeParser:Z

    if-nez p6, :cond_22

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    :goto_12
    if-eqz p5, :cond_21

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_21

    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V

    :cond_21
    return-void

    :cond_22
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    goto :goto_12
.end method

.method protected static emptyIterator()Lcom/fasterxml/jackson/databind/MappingIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/MappingIterator;->EMPTY_ITERATOR:Lcom/fasterxml/jackson/databind/MappingIterator;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->close()V

    :cond_9
    return-void
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getCurrentLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v0

    return-object v0
.end method

.method public getParser()Lcom/fasterxml/jackson/a/l;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    return-object v0
.end method

.method public getParserSchema()Lcom/fasterxml/jackson/a/c;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->getSchema()Lcom/fasterxml/jackson/a/c;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z
    :try_end_3
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    move-result v0

    return v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasNextValue()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_hasNextChecked:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_hasNextChecked:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    if-eqz v2, :cond_21

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_2e

    :cond_21
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_closeParser:Z

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->close()V

    goto :goto_6

    :cond_2e
    move v0, v1

    goto :goto_6
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;
    :try_end_3
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_hasNextChecked:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_hasNextChecked:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    :goto_2b
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/l;->clearCurrentToken()V

    return-object v0

    :cond_31
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_parser:Lcom/fasterxml/jackson/a/l;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_context:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/MappingIterator;->_updatedValue:Ljava/lang/Object;

    goto :goto_2b
.end method

.method public readAll()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/MappingIterator;->readAll(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readAll(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->hasNextValue()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/MappingIterator;->nextValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_e
    return-object p1
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
