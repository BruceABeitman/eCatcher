.class public final Lcom/userzoom/ci;
.super Lcom/userzoom/bz;


# instance fields
.field private c:Lcom/userzoom/ci;

.field private d:Ljava/lang/String;

.field private e:Lcom/userzoom/ci;


# direct methods
.method private constructor <init>(ILcom/userzoom/ci;)V
    .registers 4

    invoke-direct {p0}, Lcom/userzoom/bz;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/userzoom/ci;->e:Lcom/userzoom/ci;

    iput p1, p0, Lcom/userzoom/ci;->a:I

    iput-object p2, p0, Lcom/userzoom/ci;->c:Lcom/userzoom/ci;

    const/4 v0, -0x1

    iput v0, p0, Lcom/userzoom/ci;->b:I

    return-void
.end method

.method private a(I)Lcom/userzoom/ci;
    .registers 3

    iput p1, p0, Lcom/userzoom/ci;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/userzoom/ci;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static e()Lcom/userzoom/ci;
    .registers 3

    new-instance v0, Lcom/userzoom/ci;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/userzoom/ci;-><init>(ILcom/userzoom/ci;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x4

    iget v1, p0, Lcom/userzoom/ci;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iput-object p1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    iget v0, p0, Lcom/userzoom/ci;->b:I

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final f()Lcom/userzoom/ci;
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/userzoom/ci;->e:Lcom/userzoom/ci;

    if-nez v0, :cond_d

    new-instance v0, Lcom/userzoom/ci;

    invoke-direct {v0, v1, p0}, Lcom/userzoom/ci;-><init>(ILcom/userzoom/ci;)V

    iput-object v0, p0, Lcom/userzoom/ci;->e:Lcom/userzoom/ci;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lcom/userzoom/ci;->a(I)Lcom/userzoom/ci;

    move-result-object v0

    goto :goto_c
.end method

.method public final g()Lcom/userzoom/ci;
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/userzoom/ci;->e:Lcom/userzoom/ci;

    if-nez v0, :cond_d

    new-instance v0, Lcom/userzoom/ci;

    invoke-direct {v0, v1, p0}, Lcom/userzoom/ci;-><init>(ILcom/userzoom/ci;)V

    iput-object v0, p0, Lcom/userzoom/ci;->e:Lcom/userzoom/ci;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lcom/userzoom/ci;->a(I)Lcom/userzoom/ci;

    move-result-object v0

    goto :goto_c
.end method

.method public final h()Lcom/userzoom/ci;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/ci;->c:Lcom/userzoom/ci;

    return-object v0
.end method

.method public final i()I
    .registers 5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/userzoom/ci;->a:I

    if-ne v3, v0, :cond_17

    iget-object v1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    if-nez v1, :cond_d

    const/4 v0, 0x5

    :goto_c
    return v0

    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    iget v1, p0, Lcom/userzoom/ci;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/userzoom/ci;->b:I

    goto :goto_c

    :cond_17
    iget v0, p0, Lcom/userzoom/ci;->a:I

    if-ne v0, v2, :cond_29

    iget v0, p0, Lcom/userzoom/ci;->b:I

    iget v3, p0, Lcom/userzoom/ci;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/userzoom/ci;->b:I

    if-gez v0, :cond_27

    move v0, v1

    goto :goto_c

    :cond_27
    move v0, v2

    goto :goto_c

    :cond_29
    iget v0, p0, Lcom/userzoom/ci;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/userzoom/ci;->b:I

    iget v0, p0, Lcom/userzoom/ci;->b:I

    if-nez v0, :cond_35

    move v0, v1

    goto :goto_c

    :cond_35
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/userzoom/ci;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/userzoom/ci;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_32
    iget v1, p0, Lcom/userzoom/ci;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_49

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/userzoom/ci;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_49
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method
