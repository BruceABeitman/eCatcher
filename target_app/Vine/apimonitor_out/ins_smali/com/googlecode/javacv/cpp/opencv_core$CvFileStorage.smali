.class public Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
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
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public static open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;I)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;ILjava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
move-result-object v0
return-object v0
.end method
.method public static open(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;ILjava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvOpenFileStorage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvMemStorage;ILjava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvFileStorage;->deallocate()V
return-void
.end method