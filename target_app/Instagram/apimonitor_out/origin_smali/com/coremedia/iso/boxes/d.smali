.class public final Lcom/coremedia/iso/boxes/d;
.super Ljava/lang/Object;
.source "ItemLocationBox.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field final synthetic d:Lcom/coremedia/iso/boxes/ItemLocationBox;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;JJJ)V
    .registers 8

    iput-object p1, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/coremedia/iso/boxes/d;->a:J

    iput-wide p4, p0, Lcom/coremedia/iso/boxes/d;->b:J

    iput-wide p6, p0, Lcom/coremedia/iso/boxes/d;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/coremedia/iso/boxes/ItemLocationBox;Ljava/nio/ByteBuffer;)V
    .registers 5

    iput-object p1, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_18

    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/d;->c:J

    :cond_18
    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/d;->a:J

    iget v0, p1, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    invoke-static {p2, v0}, Lcom/coremedia/iso/f;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/d;->b:J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    :goto_a
    iget-object v1, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v1, v1, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v1, v1, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    add-int/2addr v0, v1

    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 5

    iget-object v0, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/ItemLocationBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v0, v0, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    if-lez v0, :cond_18

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/d;->c:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->indexSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V

    :cond_18
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/d;->a:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->offsetSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/d;->b:J

    iget-object v2, p0, Lcom/coremedia/iso/boxes/d;->d:Lcom/coremedia/iso/boxes/ItemLocationBox;

    iget v2, v2, Lcom/coremedia/iso/boxes/ItemLocationBox;->lengthSize:I

    invoke-static {v0, v1, p1, v2}, Lcom/coremedia/iso/h;->a(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/coremedia/iso/boxes/d;

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->c:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/d;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->b:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/d;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->a:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/d;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 7

    const/16 v5, 0x20

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/d;->a:J

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->a:J

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/d;->b:J

    iget-wide v3, p0, Lcom/coremedia/iso/boxes/d;->b:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/d;->c:J

    iget-wide v3, p0, Lcom/coremedia/iso/boxes/d;->c:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{extentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extentIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/d;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
