.class public Lco/vine/android/util/PipingInputStream;
.super Ljava/io/FilterInputStream;
.source "PipingInputStream.java"


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_12
    return v0
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

    invoke-virtual {p0, p1, v0, v1}, Lco/vine/android/util/PipingInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lco/vine/android/util/PipingInputStream;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_12
    return v0
.end method
