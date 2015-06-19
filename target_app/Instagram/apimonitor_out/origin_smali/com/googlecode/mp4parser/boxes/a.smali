.class public final Lcom/googlecode/mp4parser/boxes/a;
.super Ljava/lang/Object;
.source "AbstractSampleEncryptionBox.java"


# instance fields
.field public a:[B

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;)V
    .registers 3

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/a;->c:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 4

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->c:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isOverrideTrackEncryptionBoxParameters()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->c:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    iget v0, v0, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->ivSize:I

    :goto_c
    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/a;->c:Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox;->isSubSampleEncryption()Z

    move-result v1

    if-eqz v1, :cond_2c

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x6

    goto :goto_1c

    :cond_28
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    array-length v0, v0

    goto :goto_c

    :cond_2c
    return v0
.end method

.method public final a(IJ)Lcom/googlecode/mp4parser/boxes/b;
    .registers 5

    new-instance v0, Lcom/googlecode/mp4parser/boxes/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/googlecode/mp4parser/boxes/b;-><init>(Lcom/googlecode/mp4parser/boxes/a;IJ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

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
    check-cast p1, Lcom/googlecode/mp4parser/boxes/a;

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p1, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_39
    move v0, v1

    goto :goto_4

    :cond_3b
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    if-eqz v2, :cond_4

    goto :goto_39
.end method

.method public final hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v1

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{iv="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/a;->a:[B

    invoke-static {v1}, Lcom/coremedia/iso/d;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/boxes/a;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
