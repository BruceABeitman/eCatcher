.class public Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.field public static final ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;-><init>()V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
sput-object v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->allocate()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->allocate()V
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
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
.method public native height()I
.end method
.method public native height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->isNull()Z
move-result v3
if-eqz v3, :cond_b
invoke-super {p0}, Lcom/googlecode/javacpp/Pointer;->toString()Ljava/lang/String;
move-result-object v2
:goto_a
return-object v2
:cond_b
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->capacity()I
move-result v3
if-nez v3, :cond_3d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_a
:cond_3d
const-string v2, ""
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->position()I
move-result v1
const/4 v0, 0x0
:goto_44
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->capacity()I
move-result v3
if-ge v0, v3, :cond_84
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-nez v0, :cond_81
const-string v3, "("
:goto_5a
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->width()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->height()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
add-int/lit8 v0, v0, 0x1
goto :goto_44
:cond_81
const-string v3, " ("
goto :goto_5a
:cond_84
invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
goto :goto_a
.end method
.method public native width()I
.end method
.method public native width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.end method