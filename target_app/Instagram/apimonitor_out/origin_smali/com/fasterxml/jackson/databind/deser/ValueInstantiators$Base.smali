.class public Lcom/fasterxml/jackson/databind/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .registers 4

    return-object p3
.end method
