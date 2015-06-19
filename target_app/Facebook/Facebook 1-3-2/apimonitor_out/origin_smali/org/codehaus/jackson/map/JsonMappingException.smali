.class public Lorg/codehaus/jackson/map/JsonMappingException;
.super Lorg/codehaus/jackson/JsonProcessingException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/JsonMappingException$Reference;
    }
.end annotation


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public static from(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/codehaus/jackson/map/JsonMappingException;
    .registers 5

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lorg/codehaus/jackson/map/JsonMappingException;
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/JsonMappingException$Reference;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/JsonMappingException$Reference;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lorg/codehaus/jackson/map/JsonMappingException$Reference;)Lorg/codehaus/jackson/map/JsonMappingException;
    .registers 5

    instance-of v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;

    if-eqz v0, :cond_b

    check-cast p0, Lorg/codehaus/jackson/map/JsonMappingException;

    move-object v0, p0

    :goto_7
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_38

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_38
    new-instance v1, Lorg/codehaus/jackson/map/JsonMappingException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_25
    return-void
.end method

.method protected _nonNullPath()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    invoke-super {p0}, Lorg/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v1, :cond_9

    :goto_8
    return-object v0

    :cond_9
    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    const-string v1, " (through reference chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_10
.end method

.method public getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public prependPath(Ljava/lang/Object;I)V
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/JsonMappingException;->prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-void
.end method

.method public prependPath(Lorg/codehaus/jackson/map/JsonMappingException$Reference;)V
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/JsonMappingException;->_nonNullPath()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
