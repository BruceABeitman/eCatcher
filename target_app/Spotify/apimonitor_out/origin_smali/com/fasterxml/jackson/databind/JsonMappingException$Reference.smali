.class public Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _fieldName:Ljava/lang/String;

.field protected _from:Ljava/lang/Object;

.field protected _index:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    iput p2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    if-nez p2, :cond_12

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can not pass null fieldName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_fieldName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3e
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_from:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_11

    :cond_4f
    iget v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    if-ltz v0, :cond_59

    iget v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->_index:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_59
    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e
.end method
