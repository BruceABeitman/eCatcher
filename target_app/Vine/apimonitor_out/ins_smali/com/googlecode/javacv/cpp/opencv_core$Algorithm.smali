.class public Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;->allocate()V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public static native _create(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;
.end method
.method private native allocate()V
.end method
.method public static native getList(Lcom/googlecode/javacv/cpp/opencv_core$StringVector;)V
.parameter
.end parameter
.end method
.method public native getAlgorithm(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;
.end method
.method public native getBool(Ljava/lang/String;)Z
.end method
.method public native getDouble(Ljava/lang/String;)D
.end method
.method public native getInt(Ljava/lang/String;)I
.end method
.method public native getMat(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native getMatVector(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$MatVector;
.end method
.method public native getParams(Lcom/googlecode/javacv/cpp/opencv_core$StringVector;)V
.parameter
.end parameter
.end method
.method public native getString(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public native info()Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.end method
.method public native name()Ljava/lang/String;
.end method
.method public native paramHelp(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public native paramType(Ljava/lang/String;)I
.end method
.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native set(Ljava/lang/String;D)V
.end method
.method public native set(Ljava/lang/String;I)V
.end method
.method public native set(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native set(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method
.method public native set(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$MatVector;)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native set(Ljava/lang/String;Ljava/lang/String;)V
.end method
.method public native set(Ljava/lang/String;Z)V
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
.parameter
.end parameter
.end method