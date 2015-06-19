.class public Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_core.java"
.field public static final ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>()V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
sput-object v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->allocate()V
return-void
.end method
.method public varargs constructor <init>(B[D)V
.registers 5
const/4 v0, 0x0
array-length v1, p2
invoke-direct {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(B[DII)V
return-void
.end method
.method public constructor <init>(B[DII)V
.registers 6
div-int/lit8 v0, p4, 0x2
invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->allocateArray(I)V
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method public varargs constructor <init>([I)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-direct {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>([III)V
return-void
.end method
.method public constructor <init>([III)V
.registers 5
div-int/lit8 v0, p3, 0x2
invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;-><init>(I)V
invoke-virtual {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public get([I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->get([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public get([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 7
const/4 v0, 0x0
:goto_1
div-int/lit8 v1, p3, 0x2
if-ge v0, v1, :cond_1f
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
mul-int/lit8 v1, v0, 0x2
add-int/2addr v1, p2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x()I
move-result v2
aput v2, p1, v1
mul-int/lit8 v1, v0, 0x2
add-int/2addr v1, p2
add-int/lit8 v1, v1, 0x1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y()I
move-result v2
aput v2, p1, v1
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1f
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v1
return-object v1
.end method
.method public get()[I
.registers 3
iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->capacity:I
if-nez v1, :cond_b
const/4 v1, 0x2
:goto_5
new-array v0, v1, [I
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->get([I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-object v0
:cond_b
iget v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->capacity:I
mul-int/lit8 v1, v1, 0x2
goto :goto_5
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-object v0
.end method
.method public put(BLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 6
const/4 v2, 0x1
invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->x()F
move-result v0
shl-int v1, v2, p1
int-to-float v1, v1
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;->y()F
move-result v0
shl-int v1, v2, p1
int-to-float v1, v1
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-object p0
.end method
.method public put(BLcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 8
const/4 v4, 0x1
invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;->x()D
move-result-wide v0
shl-int v2, v4, p1
int-to-double v2, v2
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D64f;->y()D
move-result-wide v0
shl-int v2, v4, p1
int-to-double v2, v2
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
return-object p0
.end method
.method public final varargs put(B[D)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 5
const/4 v0, 0x0
array-length v1, p2
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(B[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public final put(B[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 11
new-array v0, p4, [I
const/4 v1, 0x0
:goto_3
if-ge v1, p4, :cond_17
add-int v2, p3, v1
aget-wide v2, p2, v2
const/4 v4, 0x1
shl-int/2addr v4, p1
int-to-double v4, v4
mul-double/2addr v2, v4
invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
move-result-wide v2
long-to-int v2, v2
aput v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_17
const/4 v2, 0x0
invoke-virtual {p0, v0, v2, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v2
return-object v2
.end method
.method public put(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 4
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 4
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x()I
move-result v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y()I
move-result v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public final varargs put([I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v0
return-object v0
.end method
.method public final put([III)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.registers 8
const/4 v0, 0x0
:goto_1
div-int/lit8 v1, p3, 0x2
if-ge v0, v1, :cond_1b
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v1
mul-int/lit8 v2, v0, 0x2
add-int/2addr v2, p2
aget v2, p1, v2
mul-int/lit8 v3, v0, 0x2
add-int/2addr v3, p2
add-int/lit8 v3, v3, 0x1
aget v3, p1, v3
invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->put(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_1b
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
move-result-object v1
return-object v1
.end method
.method public toString()Ljava/lang/String;
.registers 6
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->isNull()Z
move-result v3
if-eqz v3, :cond_b
invoke-super {p0}, Lcom/googlecode/javacpp/Pointer;->toString()Ljava/lang/String;
move-result-object v2
:goto_a
return-object v2
:cond_b
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->capacity()I
move-result v3
if-nez v3, :cond_3d
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y()I
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
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position()I
move-result v1
const/4 v0, 0x0
:goto_44
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->capacity()I
move-result v3
if-ge v0, v3, :cond_84
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-nez v0, :cond_81
const-string v3, "("
:goto_5a
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->x()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->y()I
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
invoke-virtual {p0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
goto :goto_a
.end method
.method public native x()I
.end method
.method public native x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.end method
.method public native y()I
.end method
.method public native y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;
.end method