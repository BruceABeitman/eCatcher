.class public Lco/vine/android/recorder/VideoData;
.super Ljava/lang/Object;
.source "VideoData.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x773635a4cd84a345L

.field private static final version:J = -0x2L


# instance fields
.field data:[B

.field public keyFrame:Z

.field segment:Lco/vine/android/recorder/RecordSegment;

.field size:I

.field public start:I

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J[B)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lco/vine/android/recorder/VideoData;->timestamp:J

    iput-object p3, p0, Lco/vine/android/recorder/VideoData;->data:[B

    iput v0, p0, Lco/vine/android/recorder/VideoData;->start:I

    iput v0, p0, Lco/vine/android/recorder/VideoData;->size:I

    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/VideoData;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lco/vine/android/recorder/VideoData;->timestamp:J

    iput-wide v0, p0, Lco/vine/android/recorder/VideoData;->timestamp:J

    iget-object v0, p1, Lco/vine/android/recorder/VideoData;->data:[B

    iput-object v0, p0, Lco/vine/android/recorder/VideoData;->data:[B

    iget v0, p1, Lco/vine/android/recorder/VideoData;->size:I

    iput v0, p0, Lco/vine/android/recorder/VideoData;->size:I

    iget v0, p1, Lco/vine/android/recorder/VideoData;->start:I

    iput v0, p0, Lco/vine/android/recorder/VideoData;->start:I

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1b

    const-wide/16 v2, -0x2

    iput-wide v2, p0, Lco/vine/android/recorder/VideoData;->timestamp:J

    :goto_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lco/vine/android/recorder/VideoData;->start:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    iput v2, p0, Lco/vine/android/recorder/VideoData;->size:I

    return-void

    :cond_1b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lco/vine/android/recorder/VideoData;->keyFrame:Z

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/recorder/VideoData;->timestamp:J

    goto :goto_e
.end method

.method public setSegment(Lco/vine/android/recorder/RecordSegment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x2

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-boolean v0, p0, Lco/vine/android/recorder/VideoData;->keyFrame:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-wide v0, p0, Lco/vine/android/recorder/VideoData;->timestamp:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget v0, p0, Lco/vine/android/recorder/VideoData;->start:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    iget v0, p0, Lco/vine/android/recorder/VideoData;->size:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
