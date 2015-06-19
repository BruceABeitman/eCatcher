.class public final Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field public static final TOKENS_PER_SEGMENT:I = 0x10

.field private static final TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field protected _nativeIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    const/16 v2, 0xf

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    return-void
.end method

.method private final _objectIdIndex(I)I
    .registers 3

    add-int v0, p1, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final _typeIdIndex(I)I
    .registers 3

    add-int v0, p1, p1

    return v0
.end method

.method private final assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    :cond_b
    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_objectIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p3, :cond_29

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_typeIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method private set(IILjava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v0, p1

    int-to-long v0, p2

    if-lez p1, :cond_a

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_a
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    return-void
.end method

.method private set(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v0, p1

    int-to-long v0, p2

    if-lez p1, :cond_a

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_a
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    invoke-direct {p0, p1, p4, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;)V
    .registers 7

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    int-to-long v0, v0

    if-lez p1, :cond_a

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_a
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v0, p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    int-to-long v0, v0

    if-lez p1, :cond_e

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_e
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    int-to-long v0, v0

    if-lez p1, :cond_a

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_a
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    invoke-direct {p0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v0, p1

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    int-to-long v0, v0

    if-lez p1, :cond_e

    shl-int/lit8 v2, p1, 0x2

    shl-long/2addr v0, v2

    :cond_e
    iget-wide v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    invoke-direct {p0, p1, p4, p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->assignNativeIds(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public append(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 5

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 6

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 7

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 12

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public appendRaw(IILjava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 6

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(IILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public appendRaw(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 12

    const/16 v0, 0x10

    if-ge p1, v0, :cond_9

    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    const/4 v1, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->set(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    goto :goto_8
.end method

.method public findObjectId(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_objectIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public findTypeId(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_typeIdIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hasIds()Z
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_nativeIds:Ljava/util/TreeMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_next:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public rawType(I)I
    .registers 5

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    if-lez p1, :cond_7

    shl-int/lit8 v2, p1, 0x2

    shr-long/2addr v0, v2

    :cond_7
    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public type(I)Lcom/fasterxml/jackson/core/JsonToken;
    .registers 5

    iget-wide v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->_tokenTypes:J

    if-lez p1, :cond_7

    shl-int/lit8 v2, p1, 0x2

    shr-long/2addr v0, v2

    :cond_7
    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/fasterxml/jackson/core/JsonToken;

    aget-object v0, v1, v0

    return-object v0
.end method
