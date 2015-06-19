.class final Lcom/bbm/h/ao;
.super Ljava/lang/Object;
.source "Invite.java"


# instance fields
.field final a:Lcom/bbm/h/ap;

.field final b:J

.field final c:Lcom/bbm/d/a/a;

.field final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bbm/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/h/ap;->d:Lcom/bbm/h/ap;

    iput-object v0, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    iget-wide v0, p1, Lcom/bbm/b/a;->c:J

    iput-wide v0, p0, Lcom/bbm/h/ao;->b:J

    iput-object p1, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AD "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bbm/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/d/fn;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/h/ap;->a:Lcom/bbm/h/ap;

    iput-object v0, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    iget-wide v0, p1, Lcom/bbm/d/fn;->i:J

    iput-wide v0, p0, Lcom/bbm/h/ao;->b:J

    iput-object p1, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PC "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bbm/d/fn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/g/t;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/h/ap;->b:Lcom/bbm/h/ap;

    iput-object v0, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    iget-wide v0, p1, Lcom/bbm/g/t;->o:J

    iput-wide v0, p0, Lcom/bbm/h/ao;->b:J

    iput-object p1, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bbm/g/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/g/v;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/h/ap;->c:Lcom/bbm/h/ap;

    iput-object v0, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    iget-wide v0, p1, Lcom/bbm/g/v;->g:J

    iput-wide v0, p0, Lcom/bbm/h/ao;->b:J

    iput-object p1, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GIS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/bbm/g/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/h/ao;

    iget-object v2, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    iget-object v3, p1, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    if-nez v2, :cond_37

    iget-object v2, p1, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    if-eqz v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    move v0, v1

    goto :goto_4

    :cond_43
    iget-wide v2, p0, Lcom/bbm/h/ao;->b:J

    iget-wide v4, p1, Lcom/bbm/h/ao;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget-object v2, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    iget-object v3, p1, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    if-nez v0, :cond_24

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    if-nez v0, :cond_2b

    move v0, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/bbm/h/ao;->b:J

    iget-wide v4, p0, Lcom/bbm/h/ao;->b:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    if-nez v2, :cond_32

    :goto_22
    add-int/2addr v0, v1

    return v0

    :cond_24
    iget-object v0, p0, Lcom/bbm/h/ao;->c:Lcom/bbm/d/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_2b
    iget-object v0, p0, Lcom/bbm/h/ao;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f

    :cond_32
    iget-object v1, p0, Lcom/bbm/h/ao;->a:Lcom/bbm/h/ap;

    invoke-virtual {v1}, Lcom/bbm/h/ap;->hashCode()I

    move-result v1

    goto :goto_22
.end method
