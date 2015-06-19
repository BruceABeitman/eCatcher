.class public Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Constructor;)V
.registers 3
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$AlgorithmInfo;->allocate(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Constructor;)V
return-void
.end method
.method private native allocate(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Constructor;)V
.end method
.method public native addParam_(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;Ljava/lang/String;ILcom/googlecode/javacpp/Pointer;ZLcom/googlecode/javacv/cpp/opencv_core$Algorithm$Getter;Lcom/googlecode/javacv/cpp/opencv_core$Algorithm$Setter;Ljava/lang/String;)V
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
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native get(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;Ljava/lang/String;ILcom/googlecode/javacpp/Pointer;)V
.end method
.method public native getParams(Lcom/googlecode/javacv/cpp/opencv_core$StringVector;)V
.parameter
.end parameter
.end method
.method public native name()Ljava/lang/String;
.end method
.method public native paramHelp(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public native paramType(Ljava/lang/String;)I
.end method
.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;Lcom/googlecode/javacv/cpp/opencv_core$CvFileNode;)V
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$Algorithm;Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
.parameter
.end parameter
.parameter
.end parameter
.end method