.class public Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->allocateArray(I)V
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
.method public native clone()Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;
.end method
.method public native clone(Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvCloneFunc;
move-result-object v0
return-object v0
.end method
.method public native flags()I
.end method
.method public native flags(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native header_size()I
.end method
.method public native header_size(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native is_instance()Lcom/googlecode/javacv/cpp/opencv_core$CvIsInstanceFunc;
.end method
.method public native is_instance(Lcom/googlecode/javacv/cpp/opencv_core$CvIsInstanceFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native next()Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native next(Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
return-object v0
.end method
.method public native prev()Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native prev(Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native read()Lcom/googlecode/javacv/cpp/opencv_core$CvReadFunc;
.end method
.method public native read(Lcom/googlecode/javacv/cpp/opencv_core$CvReadFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native release()Lcom/googlecode/javacv/cpp/opencv_core$CvReleaseFunc;
.end method
.method public native release(Lcom/googlecode/javacv/cpp/opencv_core$CvReleaseFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native type_name()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native type_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native write(Lcom/googlecode/javacv/cpp/opencv_core$CvWriteFunc;)Lcom/googlecode/javacv/cpp/opencv_core$CvTypeInfo;
.end method
.method public native write()Lcom/googlecode/javacv/cpp/opencv_core$CvWriteFunc;
.end method