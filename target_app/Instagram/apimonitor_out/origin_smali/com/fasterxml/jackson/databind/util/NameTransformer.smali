.class public abstract Lcom/fasterxml/jackson/databind/util/NameTransformer;
.super Ljava/lang/Object;
.source "NameTransformer.java"


# static fields
.field public static final NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$1;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chainedTransformer(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$Chained;-><init>(Lcom/fasterxml/jackson/databind/util/NameTransformer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method

.method public static simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    move v2, v0

    :goto_b
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    :goto_13
    if-eqz v2, :cond_27

    if-eqz v0, :cond_21

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-object v0

    :cond_1d
    move v2, v1

    goto :goto_b

    :cond_1f
    move v0, v1

    goto :goto_13

    :cond_21
    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/NameTransformer$3;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_27
    if-eqz v0, :cond_2f

    new-instance v0, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/NameTransformer$4;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :cond_2f
    sget-object v0, Lcom/fasterxml/jackson/databind/util/NameTransformer;->NOP:Lcom/fasterxml/jackson/databind/util/NameTransformer;

    goto :goto_1c
.end method


# virtual methods
.method public abstract reverse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract transform(Ljava/lang/String;)Ljava/lang/String;
.end method
