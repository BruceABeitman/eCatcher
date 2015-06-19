.class public Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
.super Lcom/fasterxml/jackson/databind/JsonMappingException;
.source "InvalidFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/j;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/a/l;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getTokenLocation()Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getTargetType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->_value:Ljava/lang/Object;

    return-object v0
.end method
