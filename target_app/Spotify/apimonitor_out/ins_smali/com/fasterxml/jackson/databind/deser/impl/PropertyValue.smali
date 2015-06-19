.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final next:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
.field public final value:Ljava/lang/Object;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->next:Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValue;->value:Ljava/lang/Object;
return-void
.end method
.method public abstract assign(Ljava/lang/Object;)V
.end method