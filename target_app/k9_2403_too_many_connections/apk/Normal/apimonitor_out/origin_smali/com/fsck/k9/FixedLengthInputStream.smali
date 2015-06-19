.class public Lcom/fsck/k9/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private mCount:I

.field private mIn:Ljava/io/InputStream;

.field private mLength:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    iput p2, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    iget v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    iget v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    if-ge v0, v1, :cond_13

    iget v0, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    iget-object v0, p0, Lcom/fsck/k9/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fsck/k9/FixedLengthInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    iget v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    iget v2, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    iget v2, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    iget v3, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    sub-int/2addr v2, v3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v4, :cond_1a

    move v1, v4

    :goto_19
    return v1

    :cond_1a
    iget v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fsck/k9/FixedLengthInputStream;->mCount:I

    move v1, v0

    goto :goto_19

    :cond_21
    move v1, v4

    goto :goto_19
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "FixedLengthInputStream(in=%s, length=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/FixedLengthInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fsck/k9/FixedLengthInputStream;->mLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
