.class public Lorg/scribe/model/ParameterList;
.super Ljava/lang/Object;
.source "ParameterList.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAM_SEPARATOR:Ljava/lang/String; = "&"

.field private static final QUERY_STRING_SEPARATOR:C = '?'


# instance fields
.field private final params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/scribe/model/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/scribe/model/Parameter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/scribe/model/ParameterList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    new-instance v5, Lorg/scribe/model/Parameter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/scribe/model/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2e
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    new-instance v1, Lorg/scribe/model/Parameter;

    invoke-direct {v1, p1, p2}, Lorg/scribe/model/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lorg/scribe/model/ParameterList;)V
    .registers 4

    iget-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    iget-object v1, p1, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addQuerystring(Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x1

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3b

    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v3, :cond_3b

    aget-object v5, v0, v1

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-static {v7}, Lorg/scribe/utils/OAuthEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v7, v4

    if-le v7, v9, :cond_38

    aget-object v7, v4, v9

    invoke-static {v7}, Lorg/scribe/utils/OAuthEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2b
    iget-object v7, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    new-instance v8, Lorg/scribe/model/Parameter;

    invoke-direct {v8, v2, v6}, Lorg/scribe/model/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_38
    const-string v6, ""

    goto :goto_2b

    :cond_3b
    return-void
.end method

.method public appendTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3f

    const-string v2, "Cannot append to null URL"

    invoke-static {p1, v2}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/scribe/model/ParameterList;->asFormUrlEncodedString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v1, p1

    :goto_14
    return-object v1

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_42

    const-string v2, "&"

    :goto_27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_14

    :cond_42
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_27
.end method

.method public asFormUrlEncodedString()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_a
    return-object v3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/scribe/model/Parameter;

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/scribe/model/Parameter;->asUrlEncodedPair()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a
.end method

.method public asOauthBaseString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/scribe/model/ParameterList;->asFormUrlEncodedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lorg/scribe/model/Parameter;)Z
    .registers 3

    iget-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sort()Lorg/scribe/model/ParameterList;
    .registers 3

    new-instance v0, Lorg/scribe/model/ParameterList;

    iget-object v1, p0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/scribe/model/ParameterList;-><init>(Ljava/util/List;)V

    iget-object v1, v0, Lorg/scribe/model/ParameterList;->params:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method
