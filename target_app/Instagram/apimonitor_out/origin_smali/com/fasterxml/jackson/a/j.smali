.class public Lcom/fasterxml/jackson/a/j;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/j;


# instance fields
.field final b:J

.field final c:J

.field final d:I

.field final e:I

.field final transient f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    new-instance v0, Lcom/fasterxml/jackson/a/j;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lcom/fasterxml/jackson/a/j;->a:Lcom/fasterxml/jackson/a/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .registers 14

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JJII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/fasterxml/jackson/a/j;->b:J

    iput-wide p4, p0, Lcom/fasterxml/jackson/a/j;->c:J

    iput p6, p0, Lcom/fasterxml/jackson/a/j;->d:I

    iput p7, p0, Lcom/fasterxml/jackson/a/j;->e:I

    return-void
.end method

.method private a()J
    .registers 3

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/j;->b:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
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
    instance-of v2, p1, Lcom/fasterxml/jackson/a/j;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_4

    :cond_f
    check-cast p1, Lcom/fasterxml/jackson/a/j;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-eqz v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-object v2, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    iget-object v3, p1, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget v2, p0, Lcom/fasterxml/jackson/a/j;->d:I

    iget v3, p1, Lcom/fasterxml/jackson/a/j;->d:I

    if-ne v2, v3, :cond_47

    iget v2, p0, Lcom/fasterxml/jackson/a/j;->e:I

    iget v3, p1, Lcom/fasterxml/jackson/a/j;->e:I

    if-ne v2, v3, :cond_47

    iget-wide v2, p0, Lcom/fasterxml/jackson/a/j;->c:J

    iget-wide v4, p1, Lcom/fasterxml/jackson/a/j;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_47

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/j;->a()J

    move-result-wide v2

    invoke-direct {p1}, Lcom/fasterxml/jackson/a/j;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_47
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lcom/fasterxml/jackson/a/j;->d:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/fasterxml/jackson/a/j;->e:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/fasterxml/jackson/a/j;->c:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget-wide v1, p0, Lcom/fasterxml/jackson/a/j;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_14
    iget-object v0, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    if-nez v1, :cond_33

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/jackson/a/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/fasterxml/jackson/a/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    iget-object v1, p0, Lcom/fasterxml/jackson/a/j;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method
