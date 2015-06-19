.class public Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core$KDTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .registers 5

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;->allocate(IIIF)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIF)V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native boundary()F
.end method

.method public native boundary(F)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.end method

.method public native idx()I
.end method

.method public native idx(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.end method

.method public native left()I
.end method

.method public native left(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;

    return-object v0
.end method

.method public native right()I
.end method

.method public native right(I)Lcom/googlecode/javacv/cpp/opencv_core$KDTree$Node;
.end method
