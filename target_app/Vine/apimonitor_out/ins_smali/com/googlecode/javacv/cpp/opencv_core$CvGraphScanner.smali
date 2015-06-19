.class public Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
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
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->zero()Lcom/googlecode/javacpp/Pointer;
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
.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateGraphScanner(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public native dst(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native dst()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.end method
.method public native edge()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;
.end method
.method public native edge(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphEdge;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native graph()Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.end method
.method public native graph(Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native index()I
.end method
.method public native index(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native mask()I
.end method
.method public native mask(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
return-object v0
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;->deallocate()V
return-void
.end method
.method public native stack(Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native stack()Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.end method
.method public native vtx(Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphScanner;
.end method
.method public native vtx()Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.end method