.class public Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"
.field static final synthetic $assertionsDisabled:Z
.field public static final gamma22:[B
.field public static final gamma22inv:[B
.method static constructor <clinit>()V
.registers 9
const/16 v8, 0x100
const-wide v6, 0x406fe00000000000L
const-class v1, Lcom/googlecode/javacv/cpp/opencv_core;
invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v1
if-nez v1, :cond_4c
const/4 v1, 0x1
:goto_10
sput-boolean v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
new-array v1, v8, [B
sput-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B
new-array v1, v8, [B
sput-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B
const/4 v0, 0x0
:goto_1b
if-ge v0, v8, :cond_4e
sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B
int-to-double v2, v0
div-double/2addr v2, v6
const-wide v4, 0x400199999999999aL
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
mul-double/2addr v2, v6
invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
move-result-wide v2
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v1, v0
sget-object v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B
int-to-double v2, v0
div-double/2addr v2, v6
const-wide v4, 0x3fdd1745d1745d17L
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
mul-double/2addr v2, v6
invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
move-result-wide v2
long-to-int v2, v2
int-to-byte v2, v2
aput-byte v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_1b
:cond_4c
const/4 v1, 0x0
goto :goto_10
:cond_4e
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 2
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public static create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
return-object v0
.end method
.method public static create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:cond_9
return-object v0
.end method
.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImage(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public static create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;III)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:cond_9
return-object v0
.end method
.method public static createCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 2
const/4 v0, 0x0
invoke-static {v0, p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
return-object v0
.end method
.method public static createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
return-object v0
.end method
.method public static createHeader(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:cond_9
return-object v0
.end method
.method public static createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImageHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$HeaderReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public static createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;III)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_9
invoke-virtual {v0, p3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
:cond_9
return-object v0
.end method
.method public static createIfNotCompatible(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 7
if-eqz p0, :cond_2a
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v1
if-ne v0, v1, :cond_2a
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
if-ne v0, v1, :cond_2a
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v1
if-ne v0, v1, :cond_2a
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I
move-result v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I
move-result v1
if-eq v0, v1, :cond_42
:cond_2a
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v0
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v2
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I
move-result v3
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I
move-result v4
invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object p0
:cond_42
invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin()I
move-result v0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
return-object p0
.end method
.method public static decodeGamma22(I)I
.registers 3
sget-object v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B
and-int/lit16 v1, p0, 0xff
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method public static encodeGamma22(I)I
.registers 3
sget-object v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B
and-int/lit16 v1, p0, 0xff
aget-byte v0, v0, v1
and-int/lit16 v0, v0, 0xff
return v0
.end method
.method public static flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V
.registers 23
sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v10, :cond_e
move-object/from16 v0, p2
if-ne p0, v0, :cond_e
new-instance v10, Ljava/lang/AssertionError;
invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V
throw v10
:cond_e
move/from16 v0, p3
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v7
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I
move-result v6
invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I
move-result v3
move/from16 v0, p8
new-array v2, v0, [B
:goto_20
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I
move-result v10
if-ge v6, v10, :cond_183
invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->capacity()I
move-result v10
if-ge v3, v10, :cond_183
if-eqz p7, :cond_6b
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I
move-result v10
sub-int/2addr v10, v6
sub-int/2addr v10, p1
invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
:goto_37
move-object/from16 v0, p2
invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v10
invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
move-result v10
invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v7
if-eqz p4, :cond_ca
const/4 v10, 0x1
move/from16 v0, p8
if-le v0, v10, :cond_9a
const/4 v8, 0x0
:goto_54
if-ge v8, v7, :cond_17e
const/4 v9, 0x0
:goto_57
move/from16 v0, p8
if-ge v9, v0, :cond_89
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_6f
int-to-byte v5, v4
:goto_66
aput-byte v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_57
:cond_6b
invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
goto :goto_37
:cond_6f
int-to-double v10, v4
const-wide v12, 0x405fc00000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x405fc00000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-byte v5, v10
goto :goto_66
:cond_89
add-int/lit8 v9, p8, -0x1
:goto_8b
if-ltz v9, :cond_97
aget-byte v10, v2, v9
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_8b
:cond_97
add-int v8, v8, p8
goto :goto_54
:cond_9a
const/4 v8, 0x0
:goto_9b
if-ge v8, v7, :cond_17e
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_b0
int-to-byte v5, v4
:goto_a8
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_9b
:cond_b0
int-to-double v10, v4
const-wide v12, 0x405fc00000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x405fc00000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-byte v5, v10
goto :goto_a8
:cond_ca
const/4 v10, 0x1
move/from16 v0, p8
if-le v0, v10, :cond_130
const/4 v8, 0x0
:goto_d0
if-ge v8, v7, :cond_17e
const/4 v9, 0x0
:goto_d3
move/from16 v0, p8
if-ge v9, v0, :cond_11f
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v10
and-int/lit16 v4, v10, 0xff
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_e9
int-to-byte v5, v4
:goto_e4
aput-byte v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_d3
:cond_e9
const-wide v10, 0x400199999999999aL
cmpl-double v10, p5, v10
if-nez v10, :cond_f7
sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B
aget-byte v5, v10, v4
goto :goto_e4
:cond_f7
const-wide v10, 0x3fdd1745d1745d17L
cmpl-double v10, p5, v10
if-nez v10, :cond_105
sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B
aget-byte v5, v10, v4
goto :goto_e4
:cond_105
int-to-double v10, v4
const-wide v12, 0x406fe00000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x406fe00000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-byte v5, v10
goto :goto_e4
:cond_11f
add-int/lit8 v9, p8, -0x1
:goto_121
if-ltz v9, :cond_12d
aget-byte v10, v2, v9
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_121
:cond_12d
add-int v8, v8, p8
goto :goto_d0
:cond_130
const/4 v8, 0x0
:goto_131
if-ge v8, v7, :cond_17e
invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B
move-result v10
and-int/lit16 v4, v10, 0xff
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_148
int-to-byte v5, v4
:goto_140
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_131
:cond_148
const-wide v10, 0x400199999999999aL
cmpl-double v10, p5, v10
if-nez v10, :cond_156
sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22:[B
aget-byte v5, v10, v4
goto :goto_140
:cond_156
const-wide v10, 0x3fdd1745d1745d17L
cmpl-double v10, p5, v10
if-nez v10, :cond_164
sget-object v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->gamma22inv:[B
aget-byte v5, v10, v4
goto :goto_140
:cond_164
int-to-double v10, v4
const-wide v12, 0x406fe00000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x406fe00000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-byte v5, v10
goto :goto_140
:cond_17e
add-int/2addr v6, p1
add-int v3, v3, p3
goto/16 :goto_20
:cond_183
return-void
.end method
.method public static flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V
.registers 22
sget-boolean v12, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v12, :cond_e
move-object/from16 v0, p2
if-ne p0, v0, :cond_e
new-instance v12, Ljava/lang/AssertionError;
invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V
throw v12
:cond_e
move/from16 v0, p3
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v9
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I
move-result v8
invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->position()I
move-result v3
move/from16 v0, p7
new-array v2, v0, [D
:goto_20
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I
move-result v12
if-ge v8, v12, :cond_a7
invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->capacity()I
move-result v12
if-ge v3, v12, :cond_a7
if-eqz p6, :cond_69
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I
move-result v12
sub-int/2addr v12, v8
sub-int/2addr v12, p1
invoke-virtual {p0, v12}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
:goto_37
move-object/from16 v0, p2
invoke-virtual {v0, v3}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I
move-result v12
invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I
move-result v12
invoke-virtual/range {p2 .. p2}, Ljava/nio/DoubleBuffer;->remaining()I
move-result v13
invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I
move-result v9
const/4 v12, 0x1
move/from16 v0, p7
if-le v0, v12, :cond_85
const/4 v10, 0x0
:goto_52
if-ge v10, v9, :cond_a2
const/4 v11, 0x0
:goto_55
move/from16 v0, p7
if-ge v11, v0, :cond_74
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D
move-result-wide v4
const-wide/high16 v12, 0x3ff0
cmpl-double v12, p4, v12
if-nez v12, :cond_6d
move-wide v6, v4
:goto_64
aput-wide v6, v2, v11
add-int/lit8 v11, v11, 0x1
goto :goto_55
:cond_69
invoke-virtual {p0, v8}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
goto :goto_37
:cond_6d
move-wide/from16 v0, p4
invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v6
goto :goto_64
:cond_74
add-int/lit8 v11, p7, -0x1
:goto_76
if-ltz v11, :cond_82
aget-wide v12, v2, v11
move-object/from16 v0, p2
invoke-virtual {v0, v12, v13}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;
add-int/lit8 v11, v11, -0x1
goto :goto_76
:cond_82
add-int v10, v10, p7
goto :goto_52
:cond_85
const/4 v10, 0x0
:goto_86
if-ge v10, v9, :cond_a2
invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D
move-result-wide v4
const-wide/high16 v12, 0x3ff0
cmpl-double v12, p4, v12
if-nez v12, :cond_9b
move-wide v6, v4
:goto_93
move-object/from16 v0, p2
invoke-virtual {v0, v6, v7}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;
add-int/lit8 v10, v10, 0x1
goto :goto_86
:cond_9b
move-wide/from16 v0, p4
invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v6
goto :goto_93
:cond_a2
add-int/2addr v8, p1
add-int v3, v3, p3
goto/16 :goto_20
:cond_a7
return-void
.end method
.method public static flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V
.registers 20
sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v10, :cond_c
if-ne p0, p2, :cond_c
new-instance v10, Ljava/lang/AssertionError;
invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V
throw v10
:cond_c
invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I
move-result v7
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I
move-result v6
invoke-virtual {p2}, Ljava/nio/FloatBuffer;->position()I
move-result v3
move/from16 v0, p7
new-array v2, v0, [F
:goto_1c
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I
move-result v10
if-ge v6, v10, :cond_a0
invoke-virtual {p2}, Ljava/nio/FloatBuffer;->capacity()I
move-result v10
if-ge v3, v10, :cond_a0
if-eqz p6, :cond_63
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I
move-result v10
sub-int/2addr v10, v6
sub-int/2addr v10, p1
invoke-virtual {p0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
:goto_33
invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I
move-result v10
invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
move-result v10
invoke-virtual {p2}, Ljava/nio/FloatBuffer;->remaining()I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v7
const/4 v10, 0x1
move/from16 v0, p7
if-le v0, v10, :cond_7f
const/4 v8, 0x0
:goto_4c
if-ge v8, v7, :cond_9c
const/4 v9, 0x0
:goto_4f
move/from16 v0, p7
if-ge v9, v0, :cond_70
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p4, v10
if-nez v10, :cond_67
move v5, v4
:goto_5e
aput v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_4f
:cond_63
invoke-virtual {p0, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
goto :goto_33
:cond_67
float-to-double v10, v4
move-wide/from16 v0, p4
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
double-to-float v5, v10
goto :goto_5e
:cond_70
add-int/lit8 v9, p7, -0x1
:goto_72
if-ltz v9, :cond_7c
aget v10, v2, v9
invoke-virtual {p2, v10}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_72
:cond_7c
add-int v8, v8, p7
goto :goto_4c
:cond_7f
const/4 v8, 0x0
:goto_80
if-ge v8, v7, :cond_9c
invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p4, v10
if-nez v10, :cond_93
move v5, v4
:goto_8d
invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_80
:cond_93
float-to-double v10, v4
move-wide/from16 v0, p4
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
double-to-float v5, v10
goto :goto_8d
:cond_9c
add-int/2addr v6, p1
add-int/2addr v3, p3
goto/16 :goto_1c
:cond_a0
return-void
.end method
.method public static flipCopyWithGamma(Ljava/nio/IntBuffer;ILjava/nio/IntBuffer;IDZI)V
.registers 22
sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v10, :cond_e
move-object/from16 v0, p2
if-ne p0, v0, :cond_e
new-instance v10, Ljava/lang/AssertionError;
invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V
throw v10
:cond_e
move/from16 v0, p3
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v7
invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I
move-result v6
invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->position()I
move-result v3
move/from16 v0, p7
new-array v2, v0, [I
:goto_20
invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I
move-result v10
if-ge v6, v10, :cond_cb
invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->capacity()I
move-result v10
if-ge v3, v10, :cond_cb
if-eqz p6, :cond_69
invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I
move-result v10
sub-int/2addr v10, v6
sub-int/2addr v10, p1
invoke-virtual {p0, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
:goto_37
move-object/from16 v0, p2
invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I
move-result v10
invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
move-result v10
invoke-virtual/range {p2 .. p2}, Ljava/nio/IntBuffer;->remaining()I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v7
const/4 v10, 0x1
move/from16 v0, p7
if-le v0, v10, :cond_97
const/4 v8, 0x0
:goto_52
if-ge v8, v7, :cond_c6
const/4 v9, 0x0
:goto_55
move/from16 v0, p7
if-ge v9, v0, :cond_86
invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p4, v10
if-nez v10, :cond_6d
move v5, v4
:goto_64
aput v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_55
:cond_69
invoke-virtual {p0, v6}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
goto :goto_37
:cond_6d
int-to-double v10, v4
const-wide v12, 0x41dfffffffc00000L
div-double/2addr v10, v12
move-wide/from16 v0, p4
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x41dfffffffc00000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v5, v10
goto :goto_64
:cond_86
add-int/lit8 v9, p7, -0x1
:goto_88
if-ltz v9, :cond_94
aget v10, v2, v9
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_88
:cond_94
add-int v8, v8, p7
goto :goto_52
:cond_97
const/4 v8, 0x0
:goto_98
if-ge v8, v7, :cond_c6
invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p4, v10
if-nez v10, :cond_ad
move v5, v4
:goto_a5
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_98
:cond_ad
int-to-double v10, v4
const-wide v12, 0x41dfffffffc00000L
div-double/2addr v10, v12
move-wide/from16 v0, p4
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x41dfffffffc00000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v5, v10
goto :goto_a5
:cond_c6
add-int/2addr v6, p1
add-int v3, v3, p3
goto/16 :goto_20
:cond_cb
return-void
.end method
.method public static flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V
.registers 23
sget-boolean v10, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v10, :cond_e
move-object/from16 v0, p2
if-ne p0, v0, :cond_e
new-instance v10, Ljava/lang/AssertionError;
invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V
throw v10
:cond_e
move/from16 v0, p3
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v7
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I
move-result v6
invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->position()I
move-result v3
move/from16 v0, p8
new-array v2, v0, [S
:goto_20
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I
move-result v10
if-ge v6, v10, :cond_14c
invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->capacity()I
move-result v10
if-ge v3, v10, :cond_14c
if-eqz p7, :cond_6b
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I
move-result v10
sub-int/2addr v10, v6
sub-int/2addr v10, p1
invoke-virtual {p0, v10}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
:goto_37
move-object/from16 v0, p2
invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I
move-result v10
invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I
move-result v10
invoke-virtual/range {p2 .. p2}, Ljava/nio/ShortBuffer;->remaining()I
move-result v11
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v7
if-eqz p4, :cond_ca
const/4 v10, 0x1
move/from16 v0, p8
if-le v0, v10, :cond_9a
const/4 v8, 0x0
:goto_54
if-ge v8, v7, :cond_147
const/4 v9, 0x0
:goto_57
move/from16 v0, p8
if-ge v9, v0, :cond_89
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_6f
int-to-short v5, v4
:goto_66
aput-short v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_57
:cond_6b
invoke-virtual {p0, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
goto :goto_37
:cond_6f
int-to-double v10, v4
const-wide v12, 0x40dfffc000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x40dfffc000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-short v5, v10
goto :goto_66
:cond_89
add-int/lit8 v9, p8, -0x1
:goto_8b
if-ltz v9, :cond_97
aget-short v10, v2, v9
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_8b
:cond_97
add-int v8, v8, p8
goto :goto_54
:cond_9a
const/4 v8, 0x0
:goto_9b
if-ge v8, v7, :cond_147
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_b0
int-to-short v5, v4
:goto_a8
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_9b
:cond_b0
int-to-double v10, v4
const-wide v12, 0x40dfffc000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x40dfffc000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-short v5, v10
goto :goto_a8
:cond_ca
const/4 v10, 0x1
move/from16 v0, p8
if-le v0, v10, :cond_112
const/4 v8, 0x0
:goto_d0
if-ge v8, v7, :cond_147
const/4 v9, 0x0
:goto_d3
move/from16 v0, p8
if-ge v9, v0, :cond_101
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S
move-result v4
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_e7
int-to-short v5, v4
:goto_e2
aput-short v5, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_d3
:cond_e7
int-to-double v10, v4
const-wide v12, 0x40efffe000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x40efffe000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-short v5, v10
goto :goto_e2
:cond_101
add-int/lit8 v9, p8, -0x1
:goto_103
if-ltz v9, :cond_10f
aget-short v10, v2, v9
move-object/from16 v0, p2
invoke-virtual {v0, v10}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;
add-int/lit8 v9, v9, -0x1
goto :goto_103
:cond_10f
add-int v8, v8, p8
goto :goto_d0
:cond_112
const/4 v8, 0x0
:goto_113
if-ge v8, v7, :cond_147
invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S
move-result v10
const v11, 0xffff
and-int v4, v10, v11
const-wide/high16 v10, 0x3ff0
cmpl-double v10, p5, v10
if-nez v10, :cond_12d
int-to-short v5, v4
:goto_125
move-object/from16 v0, p2
invoke-virtual {v0, v5}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;
add-int/lit8 v8, v8, 0x1
goto :goto_113
:cond_12d
int-to-double v10, v4
const-wide v12, 0x40efffe000000000L
div-double/2addr v10, v12
move-wide/from16 v0, p5
invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
const-wide v12, 0x40efffe000000000L
mul-double/2addr v10, v12
invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J
move-result-wide v10
long-to-int v10, v10
int-to-short v5, v10
goto :goto_125
:cond_147
add-int/2addr v6, p1
add-int v3, v3, p3
goto/16 :goto_20
:cond_14c
return-void
.end method
.method public native BorderConst(I)I
.end method
.method public native BorderConst(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native BorderMode(I)I
.end method
.method public native BorderMode(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native ID()I
.end method
.method public native ID(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native align()I
.end method
.method public native align(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native alphaChannel()I
.end method
.method public native alphaChannel(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public applyGamma(D)V
.registers 12
const-wide/high16 v0, 0x3ff0
cmpl-double v0, p1, v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v0
sparse-switch v0, :sswitch_data_d4
sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v0, :cond_6
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:sswitch_18
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
const/4 v4, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
move-wide v5, p1
invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V
goto :goto_6
:sswitch_30
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
const/4 v4, 0x1
const/4 v7, 0x0
const/4 v8, 0x0
move-wide v5, p1
invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IZDZI)V
goto :goto_6
:sswitch_48
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
div-int/lit8 v3, v3, 0x2
const/4 v4, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
move-wide v5, p1
invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V
goto :goto_6
:sswitch_64
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
div-int/lit8 v3, v3, 0x2
const/4 v4, 0x1
const/4 v7, 0x0
const/4 v8, 0x0
move-wide v5, p1
invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;IZDZI)V
goto :goto_6
:sswitch_80
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
div-int/lit8 v1, v1, 0x4
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
div-int/lit8 v3, v3, 0x4
const/4 v6, 0x0
const/4 v7, 0x0
move-wide v4, p1
invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V
goto/16 :goto_6
:sswitch_9c
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
div-int/lit8 v1, v1, 0x4
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
div-int/lit8 v3, v3, 0x4
const/4 v6, 0x0
const/4 v7, 0x0
move-wide v4, p1
invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/FloatBuffer;ILjava/nio/FloatBuffer;IDZI)V
goto/16 :goto_6
:sswitch_b8
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v1
div-int/lit8 v1, v1, 0x8
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I
move-result v3
div-int/lit8 v3, v3, 0x8
const/4 v6, 0x0
const/4 v7, 0x0
move-wide v4, p1
invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->flipCopyWithGamma(Ljava/nio/DoubleBuffer;ILjava/nio/DoubleBuffer;IDZI)V
goto/16 :goto_6
:sswitch_data_d4
.sparse-switch
-0x7ffffff8 -> :sswitch_30
-0x7ffffff0 -> :sswitch_64
-0x7fffffe0 -> :sswitch_80
0x8 -> :sswitch_18
0x10 -> :sswitch_48
0x20 -> :sswitch_9c
0x40 -> :sswitch_b8
.end sparse-switch
.end method
.method public asCvMat()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 4
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;-><init>()V
const/4 v1, 0x0
const/4 v2, 0x0
invoke-static {p0, v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetMat(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
return-object v0
.end method
.method public native channelSeq(I)I
.end method
.method public native channelSeq(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 3
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->clone()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
return-object v0
.end method
.method public native colorModel(I)I
.end method
.method public native colorModel(II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public cvSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.registers 3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
return-object v0
.end method
.method public native dataOrder()I
.end method
.method public native dataOrder(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native depth()I
.end method
.method public native depth(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public getByteBuffer()Ljava/nio/ByteBuffer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public getByteBuffer(I)Ljava/nio/ByteBuffer;
.registers 4
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize()I
move-result v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getDoubleBuffer(I)Ljava/nio/DoubleBuffer;
move-result-object v0
return-object v0
.end method
.method public getDoubleBuffer(I)Ljava/nio/DoubleBuffer;
.registers 3
mul-int/lit8 v0, p1, 0x8
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v0
return-object v0
.end method
.method public getFloatBuffer()Ljava/nio/FloatBuffer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getFloatBuffer(I)Ljava/nio/FloatBuffer;
move-result-object v0
return-object v0
.end method
.method public getFloatBuffer(I)Ljava/nio/FloatBuffer;
.registers 3
mul-int/lit8 v0, p1, 0x4
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
return-object v0
.end method
.method public getIntBuffer()Ljava/nio/IntBuffer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getIntBuffer(I)Ljava/nio/IntBuffer;
move-result-object v0
return-object v0
.end method
.method public getIntBuffer(I)Ljava/nio/IntBuffer;
.registers 3
mul-int/lit8 v0, p1, 0x4
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;
move-result-object v0
return-object v0
.end method
.method public getShortBuffer()Ljava/nio/ShortBuffer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getShortBuffer(I)Ljava/nio/ShortBuffer;
move-result-object v0
return-object v0
.end method
.method public getShortBuffer(I)Ljava/nio/ShortBuffer;
.registers 3
mul-int/lit8 v0, p1, 0x2
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
return-object v0
.end method
.method public native height()I
.end method
.method public native height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public highValue()D
.registers 4
const-wide/16 v0, 0x0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v2
sparse-switch v2, :sswitch_data_34
sget-boolean v2, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->$assertionsDisabled:Z
if-nez v2, :cond_18
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
:sswitch_13
const-wide v0, 0x406fe00000000000L
:cond_18
:goto_18
return-wide v0
:sswitch_19
const-wide v0, 0x40efffe000000000L
goto :goto_18
:sswitch_1f
const-wide v0, 0x405fc00000000000L
goto :goto_18
:sswitch_25
const-wide v0, 0x40dfffc000000000L
goto :goto_18
:sswitch_2b
const-wide v0, 0x41dfffffffc00000L
goto :goto_18
:sswitch_31
const-wide/high16 v0, 0x3ff0
goto :goto_18
:sswitch_data_34
.sparse-switch
-0x7ffffff8 -> :sswitch_1f
-0x7ffffff0 -> :sswitch_25
-0x7fffffe0 -> :sswitch_2b
0x1 -> :sswitch_31
0x8 -> :sswitch_13
0x10 -> :sswitch_19
0x20 -> :sswitch_31
0x40 -> :sswitch_31
.end sparse-switch
.end method
.method public native imageData()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native imageData(Ljava/nio/ByteBuffer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.parameter
.end parameter
.end method
.method public native imageDataOrigin()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native imageDataOrigin(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native imageId()Lcom/googlecode/javacpp/Pointer;
.end method
.method public native imageId(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native imageSize()I
.end method
.method public native imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native maskROI()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native maskROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native nChannels()I
.end method
.method public native nChannels(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native nSize()I
.end method
.method public native nSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native origin()I
.end method
.method public native origin(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
return-object v0
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->deallocate()V
return-void
.end method
.method public native roi(Lcom/googlecode/javacv/cpp/opencv_core$IplROI;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
.end method
.method public native tileInfo(Lcom/googlecode/javacv/cpp/opencv_core$IplTileInfo;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native tileInfo()Lcom/googlecode/javacv/cpp/opencv_core$IplTileInfo;
.end method
.method public toString()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->isNull()Z
move-result v0
if-eqz v0, :cond_b
invoke-super {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->toString()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "IplImage[width="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",height="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",depth="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",nChannels="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public native width()I
.end method
.method public native width(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method
.method public native widthStep()I
.end method
.method public native widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method