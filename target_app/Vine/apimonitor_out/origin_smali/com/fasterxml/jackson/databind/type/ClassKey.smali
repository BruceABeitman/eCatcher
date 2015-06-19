.class public final Lcom/fasterxml/jackson/databind/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/databind/type/ClassKey;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _className:Ljava/lang/String;

.field private _hashCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/fasterxml/jackson/databind/type/ClassKey;)I
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;->compareTo(Lcom/fasterxml/jackson/databind/type/ClassKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/fasterxml/jackson/databind/type/ClassKey;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    return v0
.end method

.method public reset(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_class:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_hashCode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ClassKey;->_className:Ljava/lang/String;

    return-object v0
.end method
