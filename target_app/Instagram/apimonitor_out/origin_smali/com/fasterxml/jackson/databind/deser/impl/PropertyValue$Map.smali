.class final Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;
.super Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.source "PropertyValue.java"


# instance fields
.field final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final assign(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue$Map;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
