.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 2

    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$DoubleKD;->_parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
