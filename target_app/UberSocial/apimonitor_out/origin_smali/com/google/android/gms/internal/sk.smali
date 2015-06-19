.class public final Lcom/google/android/gms/internal/sk;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/sk;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/sk;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/sk;->b:I

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/sk;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/sk;->a([BII)Lcom/google/android/gms/internal/sk;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/sk;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/sk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/sk;-><init>([BII)V

    return-object v0
.end method

.method public static b(F)I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public static b(I)I
    .registers 2

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->f(I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public static b(IF)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/sk;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(II)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/sk;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/ss;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/sk;->b(Lcom/google/android/gms/internal/ss;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/sk;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IZ)I
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/sk;->b(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/google/android/gms/internal/ss;)I
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ss;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/sk;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/sk;->f(I)I

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

.method public static b(Z)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static c(IJ)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/sk;->c(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(J)I
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/sk;->f(J)I

    move-result v0

    return v0
.end method

.method public static d(I)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/sv;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/sk;->f(I)I

    move-result v0

    return v0
.end method

.method public static d(IJ)I
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/sk;->d(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/sk;->d(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static d(J)I
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/sk;->g(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/sk;->f(J)I

    move-result v0

    return v0
.end method

.method public static f(I)I
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

.method public static f(J)I
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

.method public static g(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/sk;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(B)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/sk;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/sk;->b:I

    if-ne v0, v1, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/sl;

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/sk;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/sl;-><init>(II)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/sk;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->g(I)V

    return-void
.end method

.method public a(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sk;->e(I)V

    :goto_5
    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/sk;->e(J)V

    goto :goto_5
.end method

.method public a(IF)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/sk;->a(F)V

    return-void
.end method

.method public a(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/sk;->a(I)V

    return-void
.end method

.method public a(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/sk;->a(J)V

    return-void
.end method

.method public a(ILcom/google/android/gms/internal/ss;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/sk;->a(Lcom/google/android/gms/internal/ss;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/sk;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/sk;->a(Z)V

    return-void
.end method

.method public a(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/sk;->e(J)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ss;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ss;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->e(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ss;->a(Lcom/google/android/gms/internal/sk;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sk;->e(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->b([B)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sk;->a()I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public b(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/sk;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/sk;->b(J)V

    return-void
.end method

.method public b(J)V
    .registers 5

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/sk;->g(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/sk;->e(J)V

    return-void
.end method

.method public b([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/sk;->b([BII)V

    return-void
.end method

.method public b([BII)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/sk;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/sk;->a:[B

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/gms/internal/sk;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/internal/sk;->c:I

    return-void

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/sl;

    iget v1, p0, Lcom/google/android/gms/internal/sk;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/sk;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/sl;-><init>(II)V

    throw v0
.end method

.method public c(I)V
    .registers 3

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->a(B)V

    return-void
.end method

.method public c(II)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/sv;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->e(I)V

    return-void
.end method

.method public e(I)V
    .registers 3

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/sk;->c(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public e(J)V
    .registers 7

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public g(I)V
    .registers 3

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sk;->c(I)V

    return-void
.end method
