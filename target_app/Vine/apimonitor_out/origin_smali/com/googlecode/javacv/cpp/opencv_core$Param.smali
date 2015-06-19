.class public Lcom/googlecode/javacv/cpp/opencv_core$Param;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# static fields
.field public static final ALGORITHM:I = 0x6

.field public static final BOOLEAN:I = 0x1

.field public static final FLOAT:I = 0x7

.field public static final INT:I = 0x0

.field public static final MAT:I = 0x4

.field public static final MAT_VECTOR:I = 0x5

.field public static final REAL:I = 0x2

.field public static final SHORT:I = 0xa

.field public static final STRING:I = 0x3

.field public static final UCHAR:I = 0xb

.field public static final UINT64:I = 0x9

.field public static final UNSIGNED_INT:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Param;->allocate()V

    return-void
.end method

.method public constructor <init>(IZILcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;Ljava/lang/String;)V
    .registers 7
    .parameter
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_core$Param;->allocate(IZILcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IZILcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;Ljava/lang/String;)V
    .parameter
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method


# virtual methods
.method public native getter()Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;
.end method

.method public native getter(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method

.method public native help(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method

.method public native help()Ljava/lang/String;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native offset()I
.end method

.method public native offset(I)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method

.method public native readonly(Z)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method

.method public native readonly()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native setter()Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;
.end method

.method public native setter(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method

.method public native type()I
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/opencv_core$Param;
.end method
