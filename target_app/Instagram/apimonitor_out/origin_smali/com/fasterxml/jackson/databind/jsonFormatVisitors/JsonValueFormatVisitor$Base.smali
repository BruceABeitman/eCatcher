.class public Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor$Base;
.super Ljava/lang/Object;
.source "JsonValueFormatVisitor.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormatVisitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enumTypes(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public format(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .registers 2

    return-void
.end method
