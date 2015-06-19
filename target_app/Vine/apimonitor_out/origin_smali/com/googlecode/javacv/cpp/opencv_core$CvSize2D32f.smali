.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSize2D32f"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->allocate()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 4

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->allocate()V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->width(F)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->height(F)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native height()F
.end method

.method public native height(F)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->isNull()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-super {p0}, Lcom/googlecode/javacpp/Pointer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    return-object v2

    :cond_b
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->capacity()I

    move-result v3

    if-nez v3, :cond_3d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->height()F

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

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->position()I

    move-result v1

    const/4 v0, 0x0

    :goto_44
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_84

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_81

    const-string v3, "("

    :goto_5a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->height()F

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
    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;

    goto :goto_a
.end method

.method public native width()F
.end method

.method public native width(F)Lcom/googlecode/javacv/cpp/opencv_core$CvSize2D32f;
.end method
