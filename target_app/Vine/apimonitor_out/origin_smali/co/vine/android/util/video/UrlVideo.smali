.class public Lco/vine/android/util/video/UrlVideo;
.super Lco/vine/android/util/UrlResource;
.source "UrlVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResource",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final LONG_HIGH_BITS:J = -0x80000000L


# instance fields
.field private mFile:Ljava/io/File;

.field private mSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/util/UrlResource;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    if-eqz p2, :cond_9

    iput-object p2, p0, Lco/vine/android/util/video/UrlVideo;->mFile:Ljava/io/File;

    :cond_9
    return-void
.end method

.method private getSize()I
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_22

    :cond_c
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lco/vine/android/util/video/UrlVideo;->safeLongToInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    :cond_22
    :goto_22
    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mSize:Ljava/lang/Integer;

    goto :goto_22
.end method

.method private static safeLongToInt(J)I
    .registers 8

    const-wide/32 v4, -0x80000000

    and-long v0, p0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_13

    :cond_11
    long-to-int v0, p0

    return v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File is too large to store in cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/util/video/UrlVideo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public originalSize()I
    .registers 2

    invoke-direct {p0}, Lco/vine/android/util/video/UrlVideo;->getSize()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    invoke-direct {p0}, Lco/vine/android/util/video/UrlVideo;->getSize()I

    move-result v0

    return v0
.end method
