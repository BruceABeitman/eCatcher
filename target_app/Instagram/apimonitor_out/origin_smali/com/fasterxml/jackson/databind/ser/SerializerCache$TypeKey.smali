.class public final Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method private static final hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    return v0
.end method

.method private static final hash(Ljava/lang/Class;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eqz p1, :cond_c

    add-int/lit8 v0, v0, 0x1

    :cond_c
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-ne p1, p0, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    iget-boolean v2, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v2, :cond_27

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return v0
.end method

.method public final resetTyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 4

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final resetTyped(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final resetUntyped(Lcom/fasterxml/jackson/databind/JavaType;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Lcom/fasterxml/jackson/databind/JavaType;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final resetUntyped(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typed? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method
