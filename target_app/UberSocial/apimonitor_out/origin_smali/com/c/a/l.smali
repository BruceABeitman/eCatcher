.class public final Lcom/c/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x3a8ff807fec43eedL

.field private static final g:Ljava/lang/String;


# instance fields
.field private b:D

.field private c:D

.field private d:I

.field private e:Lcom/c/a/n;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "\t%"

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

    packed-switch v5, :pswitch_data_40

    const/16 v5, 0x7b

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

    sput-object v0, Lcom/c/a/l;->g:Ljava/lang/String;

    return-void

    :pswitch_35
    const/16 v5, 0x25

    goto :goto_19

    :pswitch_38
    const/4 v5, 0x5

    goto :goto_19

    :pswitch_3a
    const/16 v5, 0x60

    goto :goto_19

    :pswitch_3d
    const/16 v5, 0x65

    goto :goto_19

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDILcom/c/a/n;J)V
    .registers 12

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/c/a/l;->b:D

    iput-wide p3, p0, Lcom/c/a/l;->c:D

    invoke-static {}, Lcom/c/a/ci;->ax()I

    move-result v2

    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/c/a/l;->d:I

    iput-object p6, p0, Lcom/c/a/l;->e:Lcom/c/a/n;

    cmp-long v2, p7, v0

    if-nez v2, :cond_1c

    :goto_19
    iput-wide v0, p0, Lcom/c/a/l;->f:J

    return-void

    :cond_1c
    invoke-static {}, Lcom/c/a/ci;->ay()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p7, p8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_19
.end method


# virtual methods
.method public a()D
    .registers 3

    iget-wide v0, p0, Lcom/c/a/l;->b:D

    return-wide v0
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, Lcom/c/a/l;->c:D

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/c/a/l;->d:I

    return v0
.end method

.method public d()Lcom/c/a/n;
    .registers 2

    iget-object v0, p0, Lcom/c/a/l;->e:Lcom/c/a/n;

    return-object v0
.end method

.method public e()J
    .registers 3

    iget-wide v0, p0, Lcom/c/a/l;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/c/a/l;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/a/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/c/a/l;->c:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/a/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/c/a/l;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/a/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/l;->e:Lcom/c/a/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/c/a/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/c/a/l;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
