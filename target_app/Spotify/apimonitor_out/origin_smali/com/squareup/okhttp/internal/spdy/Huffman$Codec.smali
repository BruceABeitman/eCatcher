.class final enum Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

.field public static final enum b:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

.field private static final synthetic c:[Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;


# instance fields
.field private final codes:[I

.field private final lengths:[B

.field private final root:Lcom/squareup/okhttp/internal/spdy/l;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    const-string v1, "REQUEST"

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->a()[I

    move-result-object v2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->b()[B

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;-><init>(Ljava/lang/String;I[I[B)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->a:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    const-string v1, "RESPONSE"

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->c()[I

    move-result-object v2

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->d()[B

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;-><init>(Ljava/lang/String;I[I[B)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->b:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->a:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->b:Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    aput-object v1, v0, v5

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->c:[Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/l;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/l;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/squareup/okhttp/internal/spdy/l;

    invoke-direct {p0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->a([I[B)V

    iput-object p3, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->codes:[I

    iput-object p4, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->lengths:[B

    return-void
.end method

.method private a([I[B)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_5f

    aget v4, p1, v0

    aget-byte v2, p2, v0

    new-instance v5, Lcom/squareup/okhttp/internal/spdy/l;

    invoke-direct {v5, v0, v2}, Lcom/squareup/okhttp/internal/spdy/l;-><init>(II)V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/squareup/okhttp/internal/spdy/l;

    move-object v3, v1

    move v1, v2

    :goto_11
    const/16 v2, 0x8

    if-le v1, v2, :cond_46

    add-int/lit8 v1, v1, -0x8

    int-to-byte v2, v1

    ushr-int v1, v4, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v6

    if-nez v6, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid dictionary: prefix not unique"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v6

    aget-object v6, v6, v1

    if-nez v6, :cond_3d

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v6

    new-instance v7, Lcom/squareup/okhttp/internal/spdy/l;

    invoke-direct {v7}, Lcom/squareup/okhttp/internal/spdy/l;-><init>()V

    aput-object v7, v6, v1

    :cond_3d
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v3

    aget-object v1, v3, v1

    move-object v3, v1

    move v1, v2

    goto :goto_11

    :cond_46
    rsub-int/lit8 v1, v1, 0x8

    shl-int v2, v4, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x1

    shl-int/2addr v4, v1

    move v1, v2

    :goto_4f
    add-int v6, v2, v4

    if-ge v1, v6, :cond_5c

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v6

    aput-object v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5f
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;
    .registers 2

    const-class v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    return-object v0
.end method

.method public static values()[Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;
    .registers 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->c:[Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    invoke-virtual {v0}, [Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;

    return-object v0
.end method


# virtual methods
.method final a([B)[B
    .registers 8

    const/4 v0, 0x0

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/squareup/okhttp/internal/spdy/l;

    move v2, v0

    move-object v3, v1

    move v1, v0

    :goto_b
    array-length v5, p1

    if-ge v0, v5, :cond_42

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x8

    :goto_17
    const/16 v5, 0x8

    if-lt v1, v5, :cond_3f

    add-int/lit8 v5, v1, -0x8

    ushr-int v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v5

    if-nez v5, :cond_3c

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->b(Lcom/squareup/okhttp/internal/spdy/l;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->c(Lcom/squareup/okhttp/internal/spdy/l;)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/squareup/okhttp/internal/spdy/l;

    goto :goto_17

    :cond_3c
    add-int/lit8 v1, v1, -0x8

    goto :goto_17

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_42
    :goto_42
    if-lez v1, :cond_6b

    rsub-int/lit8 v0, v1, 0x8

    shl-int v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/l;->a(Lcom/squareup/okhttp/internal/spdy/l;)[Lcom/squareup/okhttp/internal/spdy/l;

    move-result-object v3

    if-nez v3, :cond_6b

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/l;->c(Lcom/squareup/okhttp/internal/spdy/l;)I

    move-result v3

    if-gt v3, v1, :cond_6b

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/l;->b(Lcom/squareup/okhttp/internal/spdy/l;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/l;->c(Lcom/squareup/okhttp/internal/spdy/l;)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Huffman$Codec;->root:Lcom/squareup/okhttp/internal/spdy/l;

    goto :goto_42

    :cond_6b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
