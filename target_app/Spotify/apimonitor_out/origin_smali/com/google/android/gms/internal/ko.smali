.class public final Lcom/google/android/gms/internal/ko;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ko;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ko;->c:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ko;->b:I

    return-void
.end method

.method public static a(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->c(I)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ko;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(J)I
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    :cond_40
    const-wide/high16 v0, -0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    :cond_49
    const-wide/high16 v0, -0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    :cond_53
    const-wide/high16 v0, -0x8000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ko;->e(I)I

    move-result v1

    array-length v0, v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    add-int/2addr v0, v1

    return v0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([B)Lcom/google/android/gms/internal/ko;
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ko;->a([BI)Lcom/google/android/gms/internal/ko;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Lcom/google/android/gms/internal/ko;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ko;-><init>([BI)V

    return-object v0
.end method

.method public static b(I)I
    .registers 2

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/ko;->e(I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public static b(ILcom/google/android/gms/internal/ld;)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/ko;->c(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ld;->a()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ko;->e(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/ko;->c(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ko;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b(II)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/lg;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ko;->d(I)V

    return-void
.end method

.method private b(J)V
    .registers 7

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ko;->f(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ko;->f(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static c(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/lg;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ko;->e(I)I

    move-result v0

    return v0
.end method

.method public static c(IJ)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/ko;->c(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ko;->c(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ko;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static c(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    :cond_c
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    :cond_13
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method private f(I)V
    .registers 6

    int-to-byte v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ko;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ko;->b:I

    if-ne v1, v2, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/ko$a;

    iget v1, p0, Lcom/google/android/gms/internal/ko;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ko;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ko$a;-><init>(II)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ko;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ko;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ko;->c:I

    aput-byte v0, v1, v2

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ko;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/ko;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    if-ltz p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ko;->d(I)V

    :goto_9
    return-void

    :cond_a
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ko;->b(J)V

    goto :goto_9
.end method

.method public final a(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ko;->b(J)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/ld;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ld;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ko;->d(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ld;->a(Lcom/google/android/gms/internal/ko;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ko;->d(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ko;->b([B)V

    return-void
.end method

.method public final a(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ko;->f(I)V

    return-void
.end method

.method public final b(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ko;->b(II)V

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ko;->c(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ko;->b(J)V

    return-void
.end method

.method public final b([B)V
    .registers 6

    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ko;->b:I

    iget v2, p0, Lcom/google/android/gms/internal/ko;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_16

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ko;->a:[B

    iget v3, p0, Lcom/google/android/gms/internal/ko;->c:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ko;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ko;->c:I

    return-void

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ko$a;

    iget v1, p0, Lcom/google/android/gms/internal/ko;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ko;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ko$a;-><init>(II)V

    throw v0
.end method

.method public final d(I)V
    .registers 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ko;->f(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ko;->f(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
