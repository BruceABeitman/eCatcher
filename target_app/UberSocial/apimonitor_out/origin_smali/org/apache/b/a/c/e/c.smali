.class public Lorg/apache/b/a/c/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/b/a/c/e/b;


# static fields
.field static final c:[J

.field static final d:[I

.field public static final e:[Ljava/lang/String;

.field public static final s:[Ljava/lang/String;

.field public static final t:[I

.field static final u:[J

.field static final v:[J

.field static final w:[J

.field static final x:[J


# instance fields
.field A:I

.field B:I

.field protected C:C

.field D:I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:I

.field private final J:[I

.field private final K:[I

.field a:I

.field public b:Ljava/io/PrintStream;

.field protected y:Lorg/apache/b/a/c/e/e;

.field z:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_a8

    sput-object v0, Lorg/apache/b/a/c/e/c;->c:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/b/a/c/e/c;->d:[I

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/b/a/c/e/c;->e:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/b/a/c/e/c;->s:[Ljava/lang/String;

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_bc

    sput-object v0, Lorg/apache/b/a/c/e/c;->t:[I

    new-array v0, v5, [J

    const-wide/32 v1, 0x70007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/b/a/c/e/c;->u:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/b/a/c/e/c;->v:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/b/a/c/e/c;->w:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/b/a/c/e/c;->x:[J

    return-void

    nop

    :array_a8
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_bc
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/b/a/c/e/e;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->b:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->J:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iput v1, p0, Lorg/apache/b/a/c/e/c;->D:I

    iput v1, p0, Lorg/apache/b/a/c/e/c;->E:I

    iput-object p1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    return-void
.end method

.method public constructor <init>(Lorg/apache/b/a/c/e/e;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/b/a/c/e/c;-><init>(Lorg/apache/b/a/c/e/e;)V

    invoke-virtual {p0, p2}, Lorg/apache/b/a/c/e/c;->a(I)V

    return-void
.end method

.method private final a(II)I
    .registers 4

    iput p2, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p1, p0, Lorg/apache/b/a/c/e/c;->H:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final a(III)I
    .registers 5

    iput p2, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p1, p0, Lorg/apache/b/a/c/e/c;->H:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/b/a/c/e/c;->e(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final a(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final b(III)I
    .registers 5

    iput p2, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p1, p0, Lorg/apache/b/a/c/e/c;->H:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/b/a/c/e/c;->f(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final b(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/e/c;->a(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/b/a/c/e/c;->e(II)I

    move-result v0

    return v0
.end method

.method private final b(I)V
    .registers 5

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->J:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/b/a/c/e/c;->G:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iget v1, p0, Lorg/apache/b/a/c/e/c;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->J:[I

    iget v1, p0, Lorg/apache/b/a/c/e/c;->G:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final b(II)V
    .registers 6

    :goto_0
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iget v1, p0, Lorg/apache/b/a/c/e/c;->F:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    sget-object v2, Lorg/apache/b/a/c/e/c;->d:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    move p1, v0

    goto :goto_0
.end method

.method private final c(III)I
    .registers 5

    iput p2, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p1, p0, Lorg/apache/b/a/c/e/c;->H:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/b/a/c/e/c;->g(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final c(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final c(I)V
    .registers 4

    sget-object v0, Lorg/apache/b/a/c/e/c;->d:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/c;->b(I)V

    sget-object v0, Lorg/apache/b/a/c/e/c;->d:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/c;->b(I)V

    return-void
.end method

.method private final c(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/b/a/c/e/c;->b(I)V

    invoke-direct {p0, p2}, Lorg/apache/b/a/c/e/c;->b(I)V

    return-void
.end method

.method private final d()I
    .registers 4

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C

    sparse-switch v0, :sswitch_data_2c

    invoke-direct {p0, v2, v1}, Lorg/apache/b/a/c/e/c;->e(II)I

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    invoke-direct {p0, v1, v2, v1}, Lorg/apache/b/a/c/e/c;->a(III)I

    move-result v0

    goto :goto_b

    :sswitch_11
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lorg/apache/b/a/c/e/c;->a(III)I

    move-result v0

    goto :goto_b

    :sswitch_17
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_b

    :sswitch_1e
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_b

    :sswitch_24
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_b

    nop

    :sswitch_data_2c
    .sparse-switch
        0xa -> :sswitch_c
        0xd -> :sswitch_11
        0x22 -> :sswitch_17
        0x28 -> :sswitch_1e
        0x2e -> :sswitch_24
    .end sparse-switch
.end method

.method private final d(III)I
    .registers 5

    iput p2, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p1, p0, Lorg/apache/b/a/c/e/c;->H:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/b/a/c/e/c;->h(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final d(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/e/c;->c(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/b/a/c/e/c;->f(II)I

    move-result v0

    return v0
.end method

.method private final d(II)V
    .registers 4

    :goto_0
    sget-object v0, Lorg/apache/b/a/c/e/c;->d:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/b/a/c/e/c;->b(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final e()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C

    packed-switch v0, :pswitch_data_18

    invoke-direct {p0, v1, v1}, Lorg/apache/b/a/c/e/c;->f(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_a

    :pswitch_11
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_18
    .packed-switch 0x28
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private final e(II)I
    .registers 16

    const/4 v6, 0x3

    const/4 v3, 0x1

    const-wide/16 v11, 0x0

    const v1, 0x7fffffff

    const/4 v5, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/b/a/c/e/c;->F:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    aput p1, v0, v5

    move v0, v1

    move v2, v3

    move v4, v5

    :goto_12
    iget v7, p0, Lorg/apache/b/a/c/e/c;->G:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/b/a/c/e/c;->G:I

    if-ne v7, v1, :cond_1d

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->h()V

    :cond_1d
    iget-char v7, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_83

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/b/a/c/e/c;->C:C

    shl-long/2addr v7, v9

    :cond_28
    iget-object v9, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v2, v2, -0x1

    aget v9, v9, v2

    packed-switch v9, :pswitch_data_bc

    :cond_31
    :goto_31
    if-ne v2, v4, :cond_28

    :goto_33
    if-eq v0, v1, :cond_3a

    iput v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p2, p0, Lorg/apache/b/a/c/e/c;->H:I

    move v0, v1

    :cond_3a
    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    iput v4, p0, Lorg/apache/b/a/c/e/c;->F:I

    rsub-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_af

    :goto_44
    return p2

    :pswitch_45
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_56

    const/16 v9, 0x11

    if-le v0, v9, :cond_52

    const/16 v0, 0x11

    :cond_52
    invoke-direct {p0, v3}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_31

    :cond_56
    const-wide v9, 0x100002600L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_31

    if-le v0, v6, :cond_63

    move v0, v6

    :cond_63
    invoke-direct {p0, v5}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_31

    :pswitch_67
    const-wide v9, 0x100002600L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_31

    invoke-direct {p0, v5}, Lorg/apache/b/a/c/e/c;->b(I)V

    move v0, v6

    goto :goto_31

    :pswitch_76
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_31

    const/16 v0, 0x11

    invoke-direct {p0, v3}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_31

    :cond_83
    iget-char v7, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_99

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_90
    iget-object v7, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    if-ne v2, v4, :cond_90

    goto :goto_33

    :cond_99
    iget-char v7, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_a6
    iget-object v7, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v2, v2, -0x1

    aget v7, v7, v2

    if-ne v2, v4, :cond_a6

    goto :goto_33

    :cond_af
    :try_start_af
    iget-object v7, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v7}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v7

    iput-char v7, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b7} :catch_b9

    goto/16 :goto_12

    :catch_b9
    move-exception v0

    goto :goto_44

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_67
        :pswitch_76
        :pswitch_45
    .end packed-switch
.end method

.method private final e(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final f()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/b/a/c/e/c;->g(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x22
        :pswitch_b
    .end packed-switch
.end method

.method private final f(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->h()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_54

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_da

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p2, p0, Lorg/apache/b/a/c/e/c;->H:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/b/a/c/e/c;->F:I

    iput v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_cc

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0x8

    if-le v0, v3, :cond_2f

    const/16 v0, 0x8

    goto :goto_2f

    :pswitch_4f
    const/4 v3, 0x6

    if-le v0, v3, :cond_2f

    const/4 v0, 0x6

    goto :goto_2f

    :cond_54
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_91

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_61
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e2

    :cond_6a
    :goto_6a
    if-ne v1, v2, :cond_61

    goto :goto_31

    :pswitch_6d
    const/16 v3, 0x8

    if-le v0, v3, :cond_73

    const/16 v0, 0x8

    :cond_73
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iget v4, p0, Lorg/apache/b/a/c/e/c;->F:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6a

    :pswitch_85
    const/4 v3, 0x6

    if-le v0, v3, :cond_6a

    const/4 v0, 0x6

    goto :goto_6a

    :pswitch_8a
    const/16 v3, 0x8

    if-le v0, v3, :cond_6a

    const/16 v0, 0x8

    goto :goto_6a

    :cond_91
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_9e
    iget-object v6, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_ec

    :cond_a7
    :goto_a7
    if-ne v1, v2, :cond_9e

    goto :goto_31

    :pswitch_aa
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a7

    const/16 v6, 0x8

    if-le v0, v6, :cond_a7

    const/16 v0, 0x8

    goto :goto_a7

    :pswitch_bc
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a7

    const/4 v6, 0x6

    if-le v0, v6, :cond_a7

    const/4 v0, 0x6

    goto :goto_a7

    :cond_cc
    :try_start_cc
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v3}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v3

    iput-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_d6

    goto/16 :goto_d

    :catch_d6
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_85
        :pswitch_8a
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_bc
    .end packed-switch
.end method

.method private final f(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/e/c;->e(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/b/a/c/e/c;->g(II)I

    move-result v0

    return v0
.end method

.method private final g()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/b/a/c/e/c;->h(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/b/a/c/e/c;->a(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method private final g(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->h()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_66

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_112

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p2, p0, Lorg/apache/b/a/c/e/c;->H:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/b/a/c/e/c;->F:I

    iput v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_104

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x400000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0xf

    if-le v0, v5, :cond_5a

    const/16 v0, 0xf

    :cond_5a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_2f

    :pswitch_5f
    const/16 v5, 0xe

    if-le v0, v5, :cond_2f

    const/16 v0, 0xe

    goto :goto_2f

    :cond_66
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_c2

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_73
    iget-object v5, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_11c

    :cond_7c
    :goto_7c
    if-ne v1, v2, :cond_73

    goto :goto_31

    :pswitch_7f
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_94

    const/16 v5, 0xf

    if-le v0, v5, :cond_8f

    const/16 v0, 0xf

    :cond_8f
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_7c

    :cond_94
    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7c

    iget-object v5, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iget v6, p0, Lorg/apache/b/a/c/e/c;->F:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_7c

    :pswitch_a6
    const/16 v5, 0xe

    if-le v0, v5, :cond_7c

    const/16 v0, 0xe

    goto :goto_7c

    :pswitch_ad
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7c

    const/16 v5, 0xf

    if-le v0, v5, :cond_bd

    const/16 v0, 0xf

    :cond_bd
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_7c

    :cond_c2
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_cf
    iget-object v6, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_126

    :cond_d8
    :goto_d8
    if-ne v1, v2, :cond_cf

    goto/16 :goto_31

    :pswitch_dc
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0xf

    if-le v0, v6, :cond_ed

    const/16 v0, 0xf

    :cond_ed
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/b/a/c/e/c;->b(I)V

    goto :goto_d8

    :pswitch_f2
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0xe

    if-le v0, v6, :cond_d8

    const/16 v0, 0xe

    goto :goto_d8

    :cond_104
    :try_start_104
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v3}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v3

    iput-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10c} :catch_10e

    goto/16 :goto_d

    :catch_10e
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5f
        :pswitch_48
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_a6
        :pswitch_ad
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_f2
        :pswitch_dc
    .end packed-switch
.end method

.method private final g(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final h(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->K:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/b/a/c/e/c;->G:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->h()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput p2, p0, Lorg/apache/b/a/c/e/c;->H:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/b/a/c/e/c;->F:I

    iput v2, p0, Lorg/apache/b/a/c/e/c;->F:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0xc

    if-le v0, v3, :cond_2f

    const/16 v0, 0xc

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0x9

    if-le v0, v3, :cond_2f

    const/16 v0, 0x9

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0xc

    if-le v0, v3, :cond_75

    const/16 v0, 0xc

    :cond_75
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->K:[I

    iget v4, p0, Lorg/apache/b/a/c/e/c;->F:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/b/a/c/e/c;->F:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0x9

    if-le v0, v3, :cond_6c

    const/16 v0, 0x9

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0xc

    if-le v0, v3, :cond_6c

    const/16 v0, 0xc

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/b/a/c/e/c;->C:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/b/a/c/e/c;->K:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0xc

    if-le v0, v6, :cond_ab

    const/16 v0, 0xc

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/b/a/c/e/c;->c:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x9

    if-le v0, v6, :cond_ab

    const/16 v0, 0x9

    goto :goto_ab

    :cond_d2
    :try_start_d2
    iget-object v3, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v3}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v3

    iput-char v3, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_da} :catch_dc

    goto/16 :goto_d

    :catch_dc
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_87
        :pswitch_8e
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_c0
    .end packed-switch
.end method

.method private final h(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/b/a/c/e/c;->g(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/b/a/c/e/c;->h(II)I

    move-result v0

    return v0
.end method

.method private final h()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/b/a/c/e/c;->G:I

    const/4 v0, 0x3

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->J:[I

    const/high16 v2, -0x8000

    aput v2, v0, v1

    move v0, v1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method protected a()Lorg/apache/b/a/c/e/f;
    .registers 4

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    invoke-static {v0}, Lorg/apache/b/a/c/e/f;->a(I)Lorg/apache/b/a/c/e/f;

    move-result-object v1

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput v0, v1, Lorg/apache/b/a/c/e/f;->a:I

    sget-object v0, Lorg/apache/b/a/c/e/c;->e:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->j()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lorg/apache/b/a/c/e/f;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->i()I

    move-result v0

    iput v0, v1, Lorg/apache/b/a/c/e/f;->b:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->h()I

    move-result v0

    iput v0, v1, Lorg/apache/b/a/c/e/f;->c:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->g()I

    move-result v0

    iput v0, v1, Lorg/apache/b/a/c/e/f;->d:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->f()I

    move-result v0

    iput v0, v1, Lorg/apache/b/a/c/e/f;->e:I

    return-object v1
.end method

.method public a(I)V
    .registers 5

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/b/a/c/e/g;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/b/a/c/e/g;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/b/a/c/e/c;->D:I

    return-void
.end method

.method public a(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/b/a/c/e/c;->b:Ljava/io/PrintStream;

    return-void
.end method

.method public a(Lorg/apache/b/a/c/e/e;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/c/e/c;->F:I

    iput v0, p0, Lorg/apache/b/a/c/e/c;->H:I

    iget v0, p0, Lorg/apache/b/a/c/e/c;->E:I

    iput v0, p0, Lorg/apache/b/a/c/e/c;->D:I

    iput-object p1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->h()V

    return-void
.end method

.method public a(Lorg/apache/b/a/c/e/e;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/b/a/c/e/c;->a(Lorg/apache/b/a/c/e/e;)V

    invoke-virtual {p0, p2}, Lorg/apache/b/a/c/e/c;->a(I)V

    return-void
.end method

.method a(Lorg/apache/b/a/c/e/f;)V
    .registers 6

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget v3, p0, Lorg/apache/b/a/c/e/c;->H:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/b/a/c/e/c;->B:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/b/a/c/e/f;->f:Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch 0x10
        :pswitch_6
    .end packed-switch
.end method

.method public b()Lorg/apache/b/a/c/e/f;
    .registers 13

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v6, 0x1

    const v10, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    move-object v1, v5

    :goto_9
    :try_start_9
    iget-object v2, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v2}, Lorg/apache/b/a/c/e/e;->b()C

    move-result v2

    iput-char v2, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_60

    iput-object v5, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/b/a/c/e/c;->A:I

    :goto_15
    iget v2, p0, Lorg/apache/b/a/c/e/c;->D:I

    packed-switch v2, :pswitch_data_15e

    move v2, v0

    :goto_1b
    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    if-eq v0, v10, :cond_ff

    iget v0, p0, Lorg/apache/b/a/c/e/c;->H:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_30

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v3, p0, Lorg/apache/b/a/c/e/c;->H:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/b/a/c/e/e;->c(I)V

    :cond_30
    sget-object v0, Lorg/apache/b/a/c/e/c;->u:[J

    iget v3, p0, Lorg/apache/b/a/c/e/c;->I:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Lorg/apache/b/a/c/e/c;->a()Lorg/apache/b/a/c/e/f;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/b/a/c/e/f;->h:Lorg/apache/b/a/c/e/f;

    invoke-virtual {p0, v0}, Lorg/apache/b/a/c/e/c;->a(Lorg/apache/b/a/c/e/f;)V

    sget-object v1, Lorg/apache/b/a/c/e/c;->t:[I

    iget v2, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_5f

    sget-object v1, Lorg/apache/b/a/c/e/c;->t:[I

    iget v2, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/b/a/c/e/c;->D:I

    :cond_5f
    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    iput v7, p0, Lorg/apache/b/a/c/e/c;->I:I

    invoke-virtual {p0}, Lorg/apache/b/a/c/e/c;->a()Lorg/apache/b/a/c/e/f;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/b/a/c/e/f;->h:Lorg/apache/b/a/c/e/f;

    goto :goto_5f

    :pswitch_6a
    iput v10, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput v7, p0, Lorg/apache/b/a/c/e/c;->H:I

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->d()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_74
    iput v10, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput v7, p0, Lorg/apache/b/a/c/e/c;->H:I

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->e()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_7e
    iput v10, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput v7, p0, Lorg/apache/b/a/c/e/c;->H:I

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->g()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_88
    iput v10, p0, Lorg/apache/b/a/c/e/c;->I:I

    iput v7, p0, Lorg/apache/b/a/c/e/c;->H:I

    invoke-direct {p0}, Lorg/apache/b/a/c/e/c;->f()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :cond_92
    sget-object v0, Lorg/apache/b/a/c/e/c;->v:[J

    iget v3, p0, Lorg/apache/b/a/c/e/c;->I:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_dd

    sget-object v0, Lorg/apache/b/a/c/e/c;->w:[J

    iget v3, p0, Lorg/apache/b/a/c/e/c;->I:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_157

    invoke-virtual {p0}, Lorg/apache/b/a/c/e/c;->a()Lorg/apache/b/a/c/e/f;

    move-result-object v0

    if-nez v1, :cond_d8

    :goto_c4
    sget-object v1, Lorg/apache/b/a/c/e/c;->t:[I

    iget v3, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_15a

    sget-object v1, Lorg/apache/b/a/c/e/c;->t:[I

    iget v3, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v1, v1, v3

    iput v1, p0, Lorg/apache/b/a/c/e/c;->D:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :cond_d8
    iput-object v1, v0, Lorg/apache/b/a/c/e/f;->h:Lorg/apache/b/a/c/e/f;

    iput-object v0, v1, Lorg/apache/b/a/c/e/f;->g:Lorg/apache/b/a/c/e/f;

    goto :goto_c4

    :cond_dd
    invoke-virtual {p0}, Lorg/apache/b/a/c/e/c;->c()V

    sget-object v0, Lorg/apache/b/a/c/e/c;->t:[I

    iget v2, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_f0

    sget-object v0, Lorg/apache/b/a/c/e/c;->t:[I

    iget v2, p0, Lorg/apache/b/a/c/e/c;->I:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/b/a/c/e/c;->D:I

    :cond_f0
    iput v10, p0, Lorg/apache/b/a/c/e/c;->I:I

    :try_start_f2
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    move-result v0

    iput-char v0, p0, Lorg/apache/b/a/c/e/c;->C:C
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fd

    move v0, v7

    goto/16 :goto_15

    :catch_fd
    move-exception v0

    move v2, v7

    :cond_ff
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->g()I

    move-result v3

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->f()I

    move-result v4

    :try_start_10b
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->c()C

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/b/a/c/e/e;->c(I)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_116} :catch_12d

    move v1, v7

    :goto_117
    if-nez v1, :cond_123

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0, v6}, Lorg/apache/b/a/c/e/e;->c(I)V

    if-gt v2, v6, :cond_150

    const-string v0, ""

    :goto_122
    move-object v5, v0

    :cond_123
    new-instance v0, Lorg/apache/b/a/c/e/g;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->D:I

    iget-char v6, p0, Lorg/apache/b/a/c/e/c;->C:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/b/a/c/e/g;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_12d
    move-exception v0

    if-gt v2, v6, :cond_144

    const-string v0, ""

    :goto_132
    iget-char v1, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_13e

    iget-char v1, p0, Lorg/apache/b/a/c/e/c;->C:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_14b

    :cond_13e
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_117

    :cond_144
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_14b
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_117

    :cond_150
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    invoke-virtual {v0}, Lorg/apache/b/a/c/e/e;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_122

    :cond_157
    move-object v0, v1

    goto/16 :goto_c4

    :cond_15a
    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_74
        :pswitch_7e
        :pswitch_88
    .end packed-switch
.end method

.method c()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget v1, p0, Lorg/apache/b/a/c/e/c;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/b/a/c/e/c;->B:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget v0, p0, Lorg/apache/b/a/c/e/c;->I:I

    packed-switch v0, :pswitch_data_11e

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_3b
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_46
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iput v4, p0, Lorg/apache/b/a/c/e/c;->a:I

    goto :goto_12

    :pswitch_58
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_63
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_80
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_8b
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget v0, p0, Lorg/apache/b/a/c/e/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/c/e/c;->a:I

    goto/16 :goto_12

    :pswitch_a2
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_ad
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget v0, p0, Lorg/apache/b/a/c/e/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/b/a/c/e/c;->a:I

    iget v0, p0, Lorg/apache/b/a/c/e/c;->a:I

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lorg/apache/b/a/c/e/c;->a(I)V

    goto/16 :goto_12

    :pswitch_cb
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_d6
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    :pswitch_f4
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ff

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    :cond_ff
    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->y:Lorg/apache/b/a/c/e/e;

    iget v2, p0, Lorg/apache/b/a/c/e/c;->A:I

    invoke-virtual {v1, v2}, Lorg/apache/b/a/c/e/e;->d(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/b/a/c/e/c;->A:I

    iget-object v0, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/b/a/c/e/c;->z:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    nop

    :pswitch_data_11e
    .packed-switch 0x6
        :pswitch_13
        :pswitch_3b
        :pswitch_12
        :pswitch_58
        :pswitch_80
        :pswitch_a2
        :pswitch_12
        :pswitch_cb
        :pswitch_f4
    .end packed-switch
.end method