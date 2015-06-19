.class public Lco/vine/android/recorder/AudioArray;
.super Ljava/lang/Object;
.source "AudioArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/AudioArray$AudioArrayType;
    }
.end annotation


# instance fields
.field public final length:I

.field private final mDataByte:[B

.field private final mDataShort:[S

.field private final mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;


# direct methods
.method public constructor <init>(ILco/vine/android/recorder/AudioArray$AudioArrayType;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_17

    iput-object v2, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    :goto_14
    iput p1, p0, Lco/vine/android/recorder/AudioArray;->length:I

    return-void

    :cond_17
    iput-object v2, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    new-array v0, p1, [S

    iput-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    goto :goto_14
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "audioData == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    instance-of v0, p1, [B

    if-eqz v0, :cond_24

    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iput-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iput-object v1, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    check-cast p1, [B

    check-cast p1, [B

    iput-object p1, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    array-length v0, v0

    iput v0, p0, Lco/vine/android/recorder/AudioArray;->length:I

    :goto_23
    return-void

    :cond_24
    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iput-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iput-object v1, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    check-cast p1, [S

    check-cast p1, [S

    iput-object p1, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    array-length v0, v0

    iput v0, p0, Lco/vine/android/recorder/AudioArray;->length:I

    goto :goto_23
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    goto :goto_8
.end method

.method public getDataByte()[B
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Data type for this is byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataShort()[S
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Data type for this is byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFrom(Ljava/nio/Buffer;)V
    .registers 4

    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    :goto_d
    return-void

    :cond_e
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_d

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid buffer type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lco/vine/android/recorder/AudioArray$AudioArrayType;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    return-object v0
.end method

.method public putInto(Lco/vine/android/recorder/AudioArray;II)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    iget-object v1, p1, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-eq v0, v1, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incompatible types."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    invoke-static {v0, v2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p1, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    invoke-static {v0, v2, p3}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v1, p1, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    goto :goto_20
.end method

.method public putInto(Ljava/nio/Buffer;II)V
    .registers 5

    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :cond_d
    :goto_d
    return-void

    :cond_e
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_d
.end method

.method public readFrom(Landroid/media/AudioRecord;I)I
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mType:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataByte:[B

    invoke-virtual {p1, v0, v2, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lco/vine/android/recorder/AudioArray;->mDataShort:[S

    invoke-virtual {p1, v0, v2, p2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    goto :goto_d
.end method
