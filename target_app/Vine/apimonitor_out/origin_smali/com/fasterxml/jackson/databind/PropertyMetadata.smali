.class public Lcom/fasterxml/jackson/databind/PropertyMetadata;
.super Ljava/lang/Object;
.source "PropertyMetadata.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata; = null

.field public static final STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata; = null

.field public static final STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata; = null

.field private static final serialVersionUID:J = -0x1L


# instance fields
.field protected final _description:Ljava/lang/String;

.field protected final _required:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v0, v2, v2}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    return-void
.end method

.method public static construct(ZLjava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .registers 3

    if-eqz p0, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :goto_4
    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_4
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRequired()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_a

    :cond_16
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_a

    :cond_19
    move-object v0, p0

    goto :goto_a
.end method

.method public withDescription(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .registers 4

    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v0
.end method

.method public withRequired(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .registers 4

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_required:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_17
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->_description:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/PropertyMetadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_6
.end method
