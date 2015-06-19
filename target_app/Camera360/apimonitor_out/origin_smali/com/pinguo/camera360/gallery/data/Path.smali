.class public Lcom/pinguo/camera360/gallery/data/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pinguo/camera360/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Path"


# instance fields
.field private mObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pinguo/camera360/gallery/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPath:Ljava/lang/String;

.field private mTockenDate:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/camera360/gallery/data/Path$1;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/data/Path$1;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/gallery/data/Path;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pinguo/camera360/gallery/data/Path;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/data/Path;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lcom/pinguo/camera360/gallery/data/Path;

    iget-wide v3, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    iget-wide v5, v0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    move v1, v2

    goto :goto_4

    :cond_20
    iget v3, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    iget v4, v0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    if-eq v3, v4, :cond_28

    move v1, v2

    goto :goto_4

    :cond_28
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_36
    move v1, v2

    goto :goto_4

    :cond_38
    iget-object v3, v0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_36
.end method

.method public getObject()Lcom/pinguo/camera360/gallery/data/MediaObject;
    .registers 3

    const-class v1, Lcom/pinguo/camera360/gallery/data/Path;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit v1

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/data/MediaObject;

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getPathId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenMills()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int v0, v2, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    iget-wide v4, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    return v0

    :cond_1e
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setObject(Lcom/pinguo/camera360/gallery/data/MediaObject;)V
    .registers 4

    const-class v1, Lcom/pinguo/camera360/gallery/data/Path;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mObject:Ljava/lang/ref/WeakReference;

    monitor-exit v1

    return-void

    :cond_1c
    const/4 v0, 0x1

    goto :goto_10

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public setPathId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setTokenMills(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "media-type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " media-path-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/pinguo/camera360/gallery/data/Path;->mTockenDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
