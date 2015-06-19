.class final Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;
.super Ljava/lang/ThreadLocal;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeaderThreadLocal(III)Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cols:I

.field final synthetic val$rows:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    iput p1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$rows:I

    iput p2, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$cols:I

    iput p3, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .registers 4

    iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$rows:I

    iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$cols:I

    iget v2, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->val$type:I

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;->initialValue()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method
