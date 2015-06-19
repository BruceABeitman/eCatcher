.class public Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvPoint2D32f"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([D)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;-><init>([DII)V

    return-void
.end method

.method public constructor <init>([DII)V
    .registers 5

    div-int/lit8 v0, p3, 0x2

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->put([DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->get([DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public get([DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v1, p3, 0x2

    if-ge v0, v1, :cond_21

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, p1, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v1

    return-object v1
.end method

.method public get()[D
    .registers 3

    iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->capacity:I

    if-nez v1, :cond_b

    const/4 v1, 0x2

    :goto_5
    new-array v0, v1, [D

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    return-object v0

    :cond_b
    iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->capacity:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    return-object v0
.end method

.method public put(DD)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 7

    double-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    double-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 5

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;->x()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;->y()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 4

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public final varargs put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->put([DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v0

    return-object v0
.end method

.method public final put([DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .registers 10

    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v1, p3, 0x2

    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget-wide v2, p1, v2

    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, p1, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->put(DD)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->isNull()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-super {p0}, Lcom/googlecode/javacpp/Pointer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    return-object v2

    :cond_b
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->capacity()I

    move-result v3

    if-nez v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_3d
    const-string v2, ""

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position()I

    move-result v1

    const/4 v0, 0x0

    :goto_44
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_84

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_81

    const-string v3, "("

    :goto_5a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_81
    const-string v3, " ("

    goto :goto_5a

    :cond_84
    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;

    goto :goto_a
.end method

.method public native x()F
.end method

.method public native x(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.end method

.method public native y()F
.end method

.method public native y(F)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.end method
