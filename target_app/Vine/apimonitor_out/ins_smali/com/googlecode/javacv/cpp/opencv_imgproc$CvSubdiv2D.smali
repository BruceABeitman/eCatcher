.class public Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.source "opencv_imgproc.java"
.method static constructor <clinit>()V
.registers 0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public native bottomright()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.end method
.method public native bottomright(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method
.method public native is_geometry_valid()I
.end method
.method public native is_geometry_valid(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSeq;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSet;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraph;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
return-object v0
.end method
.method public native quad_edges()I
.end method
.method public native quad_edges(I)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method
.method public native recent_edge()J
.end method
.method public native recent_edge(J)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method
.method public native topleft()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.end method
.method public native topleft(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_imgproc$CvSubdiv2D;
.end method