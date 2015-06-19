.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_imgproc.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_imgproc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterEngine"
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

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;IIIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .registers 10
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct/range {p0 .. p9}, Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;->allocate(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;IIIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;IIIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native anchor()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native anchor(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native apply(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native borderElemSize()I
.end method

.method public native borderElemSize(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native borderTab()Lcom/googlecode/javacpp/IntPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native borderTab(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native bufStep()I
.end method

.method public native bufStep(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native bufType()I
.end method

.method public native bufType(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native columnBorderType()I
.end method

.method public native columnBorderType(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native columnFilter()Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native columnFilter(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native constBorderRow()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native constBorderRow(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native constBorderValue()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native constBorderValue(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native dstType()I
.end method

.method public native dstType(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native dstY()I
.end method

.method public native dstY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native dx1()I
.end method

.method public native dx1(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native dx2()I
.end method

.method public native dx2(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native endY()I
.end method

.method public native endY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native filter2D()Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native filter2D(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native init(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseColumnFilter;IIIIILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public native isSeparable()Z
.end method

.method public native ksize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native ksize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native maxWidth()I
.end method

.method public native maxWidth(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native proceed(Lcom/googlecode/javacpp/BytePointer;IILcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uchar*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native remainingInputRows()I
.end method

.method public native remainingOutputRows()I
.end method

.method public native ringBuf()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native ringBuf(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native roi()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native roi(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native rowBorderType()I
.end method

.method public native rowBorderType(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native rowCount()I
.end method

.method public native rowCount(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native rowFilter()Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native rowFilter(Lcom/googlecode/javacv/cpp/opencv_imgproc$BaseRowFilter;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native rows()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar**"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native rows(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native srcRow()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uchar*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
    .end annotation
.end method

.method public native srcRow(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native srcType()I
.end method

.method public native srcType(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native start(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ZI)I
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native start(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public native startY()I
.end method

.method public native startY(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native startY0()I
.end method

.method public native startY0(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method

.method public native wholeSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native wholeSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_imgproc$FilterEngine;
.end method
