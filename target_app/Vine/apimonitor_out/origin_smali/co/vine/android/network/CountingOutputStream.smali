.class Lco/vine/android/network/CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private final mChunk:J

.field private final mLength:J

.field private final mListener:Lco/vine/android/network/ProgressListener;

.field private mNext:J

.field private mTransferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;JLco/vine/android/network/ProgressListener;)V
    .registers 9

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p4, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    const-wide/16 v0, 0x2

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_29

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    iget-wide v1, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lco/vine/android/network/ProgressListener;->onProgress(JJ)V

    :cond_22
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    :cond_29
    return-void
.end method

.method public write([BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_28

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lco/vine/android/network/CountingOutputStream;->mListener:Lco/vine/android/network/ProgressListener;

    iget-wide v1, p0, Lco/vine/android/network/CountingOutputStream;->mTransferred:J

    iget-wide v3, p0, Lco/vine/android/network/CountingOutputStream;->mLength:J

    invoke-interface {v0, v1, v2, v3, v4}, Lco/vine/android/network/ProgressListener;->onProgress(JJ)V

    :cond_21
    iget-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    iget-wide v2, p0, Lco/vine/android/network/CountingOutputStream;->mChunk:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lco/vine/android/network/CountingOutputStream;->mNext:J

    :cond_28
    return-void
.end method
