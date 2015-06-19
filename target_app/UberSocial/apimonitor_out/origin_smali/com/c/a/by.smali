.class Lcom/c/a/by;
.super Ljava/lang/Object;


# static fields
.field private static final a:D

.field private static final r:Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/a/u;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:D

.field private final q:D


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, ":j\u001ehw"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_27

    :cond_b
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_10
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_4a

    const/16 v5, 0x4f

    :goto_19
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_25

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_10

    :cond_25
    move v1, v0

    move-object v0, v3

    :cond_27
    if-gt v1, v2, :cond_b

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/by;->r:Ljava/lang/String;

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/c/a/by;->a:D

    return-void

    :pswitch_3d
    const/16 v5, 0x6f

    goto :goto_19

    :pswitch_40
    const/16 v5, 0x3e

    goto :goto_19

    :pswitch_43
    const/16 v5, 0x58

    goto :goto_19

    :pswitch_46
    const/16 v5, 0x45

    goto :goto_19

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method

.method constructor <init>(Lcom/c/a/z;Ljava/lang/String;I)V
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v8, 0x5

    const-wide/high16 v6, 0x4000

    const/4 v5, 0x3

    sget-boolean v0, Lcom/c/a/be;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/c/a/by;->c:Ljava/lang/String;

    iput p3, p0, Lcom/c/a/by;->e:I

    new-instance v1, Lcom/c/a/u;

    invoke-direct {v1, p1}, Lcom/c/a/u;-><init>(Lcom/c/a/z;)V

    iput-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1, v5}, Lcom/c/a/u;->b(I)I

    move-result v1

    if-nez v1, :cond_24

    new-instance v0, Lcom/c/a/ae;

    invoke-direct {v0}, Lcom/c/a/ae;-><init>()V

    throw v0

    :cond_24
    add-int/lit8 v1, v1, 0xb

    neg-int v2, v1

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/a/by;->p:D

    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    const-wide v3, 0x4066800000000000L

    invoke-static {v3, v4, v1}, Lcom/c/a/by;->a(DI)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/c/a/u;->a(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/c/a/by;->i:J

    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    const-wide v3, 0x4076800000000000L

    invoke-static {v3, v4, v1}, Lcom/c/a/by;->a(DI)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/c/a/u;->a(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/c/a/by;->j:J

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1, v8}, Lcom/c/a/u;->b(I)I

    move-result v1

    iput v1, p0, Lcom/c/a/by;->k:I

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1, v8}, Lcom/c/a/u;->b(I)I

    move-result v1

    iput v1, p0, Lcom/c/a/by;->l:I

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1, v5}, Lcom/c/a/u;->b(I)I

    move-result v1

    iput v1, p0, Lcom/c/a/by;->m:I

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1, v5}, Lcom/c/a/u;->b(I)I

    move-result v1

    iput v1, p0, Lcom/c/a/by;->n:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/c/a/by;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/c/a/by;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/by;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/c/a/by;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/c/a/by;->d:[B

    iget v1, p0, Lcom/c/a/by;->k:I

    iget v2, p0, Lcom/c/a/by;->l:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/c/a/by;->m:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/c/a/by;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/c/a/by;->o:I

    iget-wide v1, p0, Lcom/c/a/by;->p:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_cc

    iget-wide v1, p0, Lcom/c/a/by;->i:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_cc

    iget-wide v1, p0, Lcom/c/a/by;->j:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_cc

    iget v1, p0, Lcom/c/a/by;->k:I

    if-eqz v1, :cond_cc

    iget v1, p0, Lcom/c/a/by;->l:I

    if-eqz v1, :cond_cc

    iget v1, p0, Lcom/c/a/by;->m:I

    if-eqz v1, :cond_cc

    iget v1, p0, Lcom/c/a/by;->k:I

    if-nez v1, :cond_d2

    :cond_cc
    new-instance v0, Lcom/c/a/ae;

    invoke-direct {v0}, Lcom/c/a/ae;-><init>()V

    throw v0

    :cond_d2
    const-wide/high16 v1, 0x4008

    iget v3, p0, Lcom/c/a/by;->n:I

    int-to-double v3, v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lcom/c/a/by;->q:D

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->d()V

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->e()J

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->e()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lcom/c/a/by;->h:I

    iget v1, p0, Lcom/c/a/by;->h:I

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/c/a/by;->g:I

    invoke-virtual {p1}, Lcom/c/a/z;->a()I

    move-result v1

    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v2}, Lcom/c/a/u;->available()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/c/a/by;->f:I

    sget-boolean v1, Lcom/c/bp;->b:Z

    if-eqz v1, :cond_114

    if-eqz v0, :cond_115

    const/4 v0, 0x0

    :goto_112
    sput-boolean v0, Lcom/c/a/be;->b:Z

    :cond_114
    return-void

    :cond_115
    const/4 v0, 0x1

    goto :goto_112
.end method

.method private static a(DI)I
    .registers 10

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    cmpl-double v1, p0, v5

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget-wide v3, Lcom/c/a/by;->a:D

    div-double/2addr v1, v3

    int-to-double v3, p2

    add-double/2addr v1, v3

    cmpl-double v3, v1, v5

    if-lez v3, :cond_7

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_7
.end method

.method private b(Lcom/c/bq;)J
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/c/a/by;->c:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/c/a/by;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    invoke-virtual {p1}, Lcom/c/bq;->a()J

    move-result-wide v0

    :goto_11
    return-wide v0

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/c/bq;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/c/a/by;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_22} :catch_73

    move-result-object v0

    new-instance v1, Lcom/c/a/au;

    invoke-direct {v1}, Lcom/c/a/au;-><init>()V

    invoke-virtual {v1, v0}, Lcom/c/a/au;->a([B)V

    iget-object v0, p0, Lcom/c/a/by;->d:[B

    invoke-virtual {v1, v0}, Lcom/c/a/au;->a([B)V

    invoke-virtual {v1}, Lcom/c/a/au;->a()[B

    move-result-object v0

    aget-byte v1, v0, v3

    int-to-long v1, v1

    const/16 v3, 0x28

    shl-long/2addr v1, v3

    const-wide v3, 0xff0000000000L

    and-long/2addr v1, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v5, 0xff00000000L

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    int-to-long v3, v3

    const/16 v5, 0x18

    shl-long/2addr v3, v5

    const-wide v5, 0xff000000L

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    int-to-long v3, v0

    const/16 v0, 0x10

    shl-long/2addr v3, v0

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    or-long v0, v1, v3

    invoke-virtual {p1}, Lcom/c/bq;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_11

    :catch_73
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/c/a/by;->e:I

    return v0
.end method

.method a(Lcom/c/bq;)Lcom/c/a/cc;
    .registers 16

    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    sget-boolean v8, Lcom/c/a/be;->b:Z

    invoke-direct {p0, p1}, Lcom/c/a/by;->b(Lcom/c/bq;)J

    move-result-wide v9

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->reset()V

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v2, p0, Lcom/c/a/by;->f:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/c/a/u;->skip(J)J

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->c()J

    move-result-wide v3

    iget v1, p0, Lcom/c/a/by;->f:I

    iget v2, p0, Lcom/c/a/by;->g:I

    add-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x8

    iget v1, p0, Lcom/c/a/by;->h:I

    if-ne v1, v0, :cond_36

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->available()I

    move-result v1

    :goto_30
    cmp-long v5, v3, v9

    if-lez v5, :cond_39

    move-object v0, v7

    :goto_35
    return-object v0

    :cond_36
    const/4 v1, 0x0

    goto :goto_30

    :cond_38
    move-wide v3, v5

    :cond_39
    iget v5, p0, Lcom/c/a/by;->h:I

    if-ge v0, v5, :cond_4d

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->c()J

    move-result-wide v5

    iget-object v1, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v1}, Lcom/c/a/u;->b()I

    move-result v1

    cmp-long v11, v5, v9

    if-lez v11, :cond_57

    :cond_4d
    :goto_4d
    iget v5, p0, Lcom/c/a/by;->h:I

    if-ne v0, v5, :cond_68

    cmp-long v0, v3, v9

    if-gez v0, :cond_68

    move-object v0, v7

    goto :goto_35

    :cond_57
    add-int/2addr v2, v1

    cmp-long v3, v5, v9

    if-nez v3, :cond_62

    iget v1, p0, Lcom/c/a/by;->o:I

    add-int/lit8 v1, v1, 0x8

    if-eqz v8, :cond_66

    :cond_62
    add-int/lit8 v0, v0, 0x1

    if-eqz v8, :cond_38

    :cond_66
    move-wide v3, v5

    goto :goto_4d

    :cond_68
    iget-object v0, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v0}, Lcom/c/a/u;->reset()V

    iget-object v0, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Lcom/c/a/u;->skip(J)J

    sub-long v2, v9, v3

    iget-object v0, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v0}, Lcom/c/a/u;->available()I

    move-result v0

    sub-int v4, v0, v1

    move-wide v0, v2

    :cond_7e
    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v2}, Lcom/c/a/u;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v12

    if-lez v2, :cond_93

    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v3, p0, Lcom/c/a/by;->o:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lcom/c/a/u;->skip(J)J

    if-eqz v8, :cond_dd

    :cond_93
    cmp-long v0, v0, v12

    if-gez v0, :cond_99

    move-object v0, v7

    goto :goto_35

    :cond_99
    iget-wide v0, p0, Lcom/c/a/by;->i:J

    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v3, p0, Lcom/c/a/by;->k:I

    invoke-virtual {v2, v3}, Lcom/c/a/u;->b(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/c/a/by;->p:D

    mul-double/2addr v2, v0

    iget-wide v0, p0, Lcom/c/a/by;->j:J

    iget-object v4, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v5, p0, Lcom/c/a/by;->l:I

    invoke-virtual {v4, v5}, Lcom/c/a/u;->b(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    long-to-double v0, v0

    iget-wide v4, p0, Lcom/c/a/by;->p:D

    mul-double/2addr v4, v0

    iget-object v0, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v1, p0, Lcom/c/a/by;->m:I

    invoke-virtual {v0, v1}, Lcom/c/a/u;->b(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x12

    const-wide v0, 0x3fc5555555555555L

    iget-object v7, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    iget v8, p0, Lcom/c/a/by;->n:I

    invoke-virtual {v7, v8}, Lcom/c/a/u;->b(I)I

    move-result v7

    int-to-double v7, v7

    iget-wide v9, p0, Lcom/c/a/by;->q:D

    div-double/2addr v7, v9

    add-double/2addr v7, v0

    new-instance v0, Lcom/c/a/cc;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/c/a/cc;-><init>(Lcom/c/bq;DDID)V

    goto/16 :goto_35

    :cond_dd
    iget-object v2, p0, Lcom/c/a/by;->b:Lcom/c/a/u;

    invoke-virtual {v2}, Lcom/c/a/u;->available()I

    move-result v2

    if-gt v2, v4, :cond_7e

    move-object v0, v7

    goto/16 :goto_35
.end method
