.class public final Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 6

    new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
