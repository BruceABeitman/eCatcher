.class public final Lcom/userzoom/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/userzoom/g;

    const-string v1, "N/A"

    invoke-direct {v0, v1}, Lcom/userzoom/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 5

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    iput-wide v1, p0, Lcom/userzoom/g;->a:J

    iput-wide v1, p0, Lcom/userzoom/g;->b:J

    iput v0, p0, Lcom/userzoom/g;->c:I

    iput v0, p0, Lcom/userzoom/g;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lcom/userzoom/g;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_4

    :cond_f
    check-cast p1, Lcom/userzoom/g;

    iget-object v2, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/userzoom/g;->e:Ljava/lang/Object;

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    iget-object v3, p1, Lcom/userzoom/g;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget v2, p0, Lcom/userzoom/g;->c:I

    iget v3, p1, Lcom/userzoom/g;->c:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/userzoom/g;->d:I

    iget v3, p1, Lcom/userzoom/g;->d:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lcom/userzoom/g;->b:J

    iget-wide v4, p1, Lcom/userzoom/g;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_43

    iget-wide v2, p0, Lcom/userzoom/g;->a:J

    iget-wide v4, p1, Lcom/userzoom/g;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_43
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lcom/userzoom/g;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/userzoom/g;->d:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/userzoom/g;->b:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lcom/userzoom/g;->a:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    if-nez v1, :cond_33

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/userzoom/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/userzoom/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    iget-object v1, p0, Lcom/userzoom/g;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
