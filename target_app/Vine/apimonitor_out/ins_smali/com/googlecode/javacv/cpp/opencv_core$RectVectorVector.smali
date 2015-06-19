.class public Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;->allocate()V
return-void
.end method
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;->allocate(J)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocate(J)V
.parameter
.end parameter
.end method
.method public native get(JJ)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native put(JJLcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_core$RectVectorVector;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native resize(J)V
.parameter
.end parameter
.end method
.method public native resize(JJ)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native size()J
.end method
.method public native size(J)J
.parameter
.end parameter
.end method