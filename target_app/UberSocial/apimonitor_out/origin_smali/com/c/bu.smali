.class public Lcom/c/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/c/ap;
.implements Lcom/c/bi;
.implements Ljava/lang/Comparable;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private final b:Lcom/c/bq;

.field private final c:I

.field private final d:J

.field private final e:Lcom/c/ba;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v0, "\u001dH\'"

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

    packed-switch v5, :pswitch_data_42

    const/16 v5, 0x5f

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

    sput-object v0, Lcom/c/bu;->g:Ljava/lang/String;

    return-void

    :pswitch_35
    const/16 v5, 0x70

    goto :goto_19

    :pswitch_38
    const/16 v5, 0x3b

    goto :goto_19

    :pswitch_3b
    const/16 v5, 0x7a

    goto :goto_19

    :pswitch_3e
    const/16 v5, 0x6f

    goto :goto_19

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public constructor <init>(Lcom/c/bq;IJLcom/c/ba;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/bu;->b:Lcom/c/bq;

    iput p2, p0, Lcom/c/bu;->c:I

    iput-wide p3, p0, Lcom/c/bu;->d:J

    iput-object p5, p0, Lcom/c/bu;->e:Lcom/c/ba;

    return-void
.end method


# virtual methods
.method public a(Lcom/c/bu;)I
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/c/bu;->b:Lcom/c/bq;

    iget-object v1, p1, Lcom/c/bu;->b:Lcom/c/bq;

    invoke-virtual {v0, v1}, Lcom/c/bq;->a(Lcom/c/bq;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/c/bu;->e:Lcom/c/ba;

    iget-object v1, p1, Lcom/c/bu;->e:Lcom/c/ba;

    invoke-virtual {v0, v1}, Lcom/c/ba;->c(Lcom/c/ba;)I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/c/bu;->c:I

    iget v1, p1, Lcom/c/bu;->c:I

    sub-int/2addr v0, v1

    goto :goto_3
.end method

.method public b()Lcom/c/bq;
    .registers 2

    iget-object v0, p0, Lcom/c/bu;->b:Lcom/c/bq;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/c/bu;->c:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/c/bu;

    invoke-virtual {p0, p1}, Lcom/c/bu;->a(Lcom/c/bu;)I

    move-result v0

    return v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lcom/c/bu;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    check-cast p1, Lcom/c/bu;

    invoke-virtual {p0, p1}, Lcom/c/bu;->a(Lcom/c/bu;)I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public hashCode()I
    .registers 8

    sget v0, Lcom/c/bq;->a:I

    iget-object v1, p0, Lcom/c/bu;->b:Lcom/c/bq;

    invoke-virtual {v1}, Lcom/c/bq;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x275

    mul-int/lit8 v1, v1, 0x25

    iget-wide v2, p0, Lcom/c/bu;->d:J

    iget-wide v4, p0, Lcom/c/bu;->d:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x25

    iget v2, p0, Lcom/c/bu;->c:I

    add-int/2addr v1, v2

    sget-boolean v2, Lcom/c/bp;->b:Z

    if-eqz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/c/bq;->a:I

    :cond_23
    return v1
.end method

.method public n_()Lcom/c/ba;
    .registers 2

    iget-object v0, p0, Lcom/c/bu;->e:Lcom/c/ba;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/c/bu;->b:Lcom/c/bq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/c/bu;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/c/bu;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/c/bu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
