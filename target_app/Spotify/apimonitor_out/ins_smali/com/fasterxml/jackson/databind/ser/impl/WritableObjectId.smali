.class public final Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.field public id:Ljava/lang/Object;
.field public serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
return-void
.end method