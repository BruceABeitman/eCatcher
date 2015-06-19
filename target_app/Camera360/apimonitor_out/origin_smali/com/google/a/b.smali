.class public final Lcom/google/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/a/b;


# instance fields
.field private final b:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/a/b;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/a/b;-><init>([B)V

    sput-object v0, Lcom/google/a/b;->a:Lcom/google/a/b;

    return-void
.end method

.method protected constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/b;->c:I

    iput-object p1, p0, Lcom/google/a/b;->b:[B

    return-void
.end method

.method private a(I)B
    .registers 3

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/a/b;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/a/b;

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/b;-><init>([B)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UTF-8 not supported?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/a/b;
    .registers 4

    new-instance v0, Lcom/google/a/b;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/b;-><init>([B)V

    return-object v0
.end method

.method public static a([B)Lcom/google/a/b;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/a/b;->a([BII)Lcom/google/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/a/b;
    .registers 5

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/google/a/b;

    invoke-direct {v1, v0}, Lcom/google/a/b;-><init>([B)V

    return-object v1
.end method

.method private a([BI)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/a/b;->b:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private a([BIII)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/b;->b:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Standard character set not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;)Lcom/google/a/b;
    .registers 4

    :try_start_0
    const-string/jumbo v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/a/b;->a([BII)Lcom/google/a/b;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    return-object v0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Standard character set not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private e()Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/a/b;->b:[B

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "UTF-8 not supported?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/a/b;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final b()[B
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/google/a/b;->b:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final c()Lcom/google/a/c;
    .registers 4

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/a/c;->a([BII)Lcom/google/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/a/b;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/a/b;

    iget-object v2, p0, Lcom/google/a/b;->b:[B

    array-length v3, v2

    iget-object v2, p1, Lcom/google/a/b;->b:[B

    array-length v2, v2

    if-eq v3, v2, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v4, p0, Lcom/google/a/b;->b:[B

    iget-object v5, p1, Lcom/google/a/b;->b:[B

    move v2, v1

    :goto_1c
    if-ge v2, v3, :cond_4

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_26

    move v0, v1

    goto :goto_4

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public final hashCode()I
    .registers 6

    iget v0, p0, Lcom/google/a/b;->c:I

    if-nez v0, :cond_13

    iget-object v4, p0, Lcom/google/a/b;->b:[B

    iget-object v0, p0, Lcom/google/a/b;->b:[B

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_c
    if-lt v1, v2, :cond_14

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput v0, p0, Lcom/google/a/b;->c:I

    :cond_13
    return v0

    :cond_14
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_c
.end method
