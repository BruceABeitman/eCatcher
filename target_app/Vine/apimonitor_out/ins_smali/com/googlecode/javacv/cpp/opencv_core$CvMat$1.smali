.class final Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;
.super Ljava/lang/ThreadLocal;
.source "opencv_core.java"
.field final synthetic val$cols:I
.field final synthetic val$rows:I
.field final synthetic val$type:I
.method constructor <init>(III)V
.registers 4
iput p1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$rows:I
iput p2, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$cols:I
iput p3, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$type:I
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected initialValue()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 4
iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$rows:I
iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$cols:I
iget v2, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->val$type:I
invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;->initialValue()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method