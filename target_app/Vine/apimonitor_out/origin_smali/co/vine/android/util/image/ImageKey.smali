.class public Lco/vine/android/util/image/ImageKey;
.super Ljava/lang/Object;
.source "ImageKey.java"


# instance fields
.field public final blurRadius:I

.field public final blurred:Z

.field public final circularCropped:Z

.field public desaturated:Z

.field public final height:I

.field public final requestResize:Z

.field public final url:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZIZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    iput p2, p0, Lco/vine/android/util/image/ImageKey;->width:I

    iput p3, p0, Lco/vine/android/util/image/ImageKey;->height:I

    iput-boolean p4, p0, Lco/vine/android/util/image/ImageKey;->circularCropped:Z

    if-lez p2, :cond_22

    if-lez p3, :cond_22

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lco/vine/android/util/image/ImageKey;->requestResize:Z

    iput-boolean p5, p0, Lco/vine/android/util/image/ImageKey;->blurred:Z

    iput p6, p0, Lco/vine/android/util/image/ImageKey;->blurRadius:I

    iput-boolean p7, p0, Lco/vine/android/util/image/ImageKey;->desaturated:Z

    if-nez p1, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to create Image key with null url."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_10

    :cond_24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, p2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIZ)V
    .registers 13

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZZIZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_6

    move v2, v1

    :cond_5
    :goto_5
    return v2

    :cond_6
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    move-object v0, p1

    check-cast v0, Lco/vine/android/util/image/ImageKey;

    iget v3, p0, Lco/vine/android/util/image/ImageKey;->height:I

    iget v4, v0, Lco/vine/android/util/image/ImageKey;->height:I

    if-ne v3, v4, :cond_5

    iget v3, p0, Lco/vine/android/util/image/ImageKey;->width:I

    iget v4, v0, Lco/vine/android/util/image/ImageKey;->width:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lco/vine/android/util/image/ImageKey;->blurred:Z

    iget-boolean v4, v0, Lco/vine/android/util/image/ImageKey;->blurred:Z

    if-ne v3, v4, :cond_5

    iget v3, p0, Lco/vine/android/util/image/ImageKey;->blurRadius:I

    iget v4, v0, Lco/vine/android/util/image/ImageKey;->blurRadius:I

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lco/vine/android/util/image/ImageKey;->circularCropped:Z

    iget-boolean v4, v0, Lco/vine/android/util/image/ImageKey;->circularCropped:Z

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lco/vine/android/util/image/ImageKey;->desaturated:Z

    iget-boolean v4, v0, Lco/vine/android/util/image/ImageKey;->desaturated:Z

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-eqz v3, :cond_46

    iget-object v1, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    iget-object v2, v0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5

    :cond_46
    iget-object v3, v0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-nez v3, :cond_4c

    :goto_4a
    move v2, v1

    goto :goto_5

    :cond_4c
    move v1, v2

    goto :goto_4a
.end method

.method public hashCode()I
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lco/vine/android/util/image/ImageKey;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lco/vine/android/util/image/ImageKey;->width:I

    add-int v0, v2, v4

    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lco/vine/android/util/image/ImageKey;->height:I

    add-int v0, v2, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lco/vine/android/util/image/ImageKey;->circularCropped:Z

    if-eqz v2, :cond_3b

    move v2, v3

    :goto_1f
    add-int v0, v4, v2

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v2, p0, Lco/vine/android/util/image/ImageKey;->blurred:Z

    if-eqz v2, :cond_3d

    move v2, v3

    :goto_28
    add-int v0, v4, v2

    mul-int/lit8 v2, v0, 0x1f

    iget v4, p0, Lco/vine/android/util/image/ImageKey;->blurRadius:I

    add-int v0, v2, v4

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v4, p0, Lco/vine/android/util/image/ImageKey;->desaturated:Z

    if-eqz v4, :cond_3f

    :goto_36
    add-int v0, v2, v3

    return v0

    :cond_39
    move v0, v1

    goto :goto_c

    :cond_3b
    move v2, v1

    goto :goto_1f

    :cond_3d
    move v2, v1

    goto :goto_28

    :cond_3f
    move v3, v1

    goto :goto_36
.end method
