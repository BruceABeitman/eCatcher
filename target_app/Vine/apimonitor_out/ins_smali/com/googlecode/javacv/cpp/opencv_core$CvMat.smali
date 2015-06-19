.class public Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvArr;
.source "opencv_core.java"
.field static final synthetic $assertionsDisabled:Z
.field private byteBuffer:Ljava/nio/ByteBuffer;
.field private doubleBuffer:Ljava/nio/DoubleBuffer;
.field private floatBuffer:Ljava/nio/FloatBuffer;
.field private fullSize:I
.field private intBuffer:Ljava/nio/IntBuffer;
.field private shortBuffer:Ljava/nio/ShortBuffer;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/googlecode/javacv/cpp/opencv_core;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->allocate()V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(I)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->allocateArray(I)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->zero()Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;-><init>(Lcom/googlecode/javacpp/Pointer;)V
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
return-void
.end method
.method private native allocate()V
.end method
.method private native allocateArray(I)V
.end method
.method public static create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 4
const/4 v0, 0x6
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public static create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMat(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I
move-result v1
iput v1, v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_14
return-object v0
.end method
.method public static create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I
move-result v0
invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public static createHeader(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 4
const/4 v0, 0x6
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public static createHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
invoke-static {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateMatHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I
move-result v1
iput v1, v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_14
return-object v0
.end method
.method public static createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I
move-result v0
invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeader(III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public static createHeaderThreadLocal(II)Ljava/lang/ThreadLocal;
.registers 4
const/4 v0, 0x6
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeaderThreadLocal(IIII)Ljava/lang/ThreadLocal;
move-result-object v0
return-object v0
.end method
.method public static createHeaderThreadLocal(III)Ljava/lang/ThreadLocal;
.registers 4
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;
invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$2;-><init>(III)V
return-object v0
.end method
.method public static createHeaderThreadLocal(IIII)Ljava/lang/ThreadLocal;
.registers 5
invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I
move-result v0
invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createHeaderThreadLocal(III)Ljava/lang/ThreadLocal;
move-result-object v0
return-object v0
.end method
.method public static createThreadLocal(II)Ljava/lang/ThreadLocal;
.registers 4
const/4 v0, 0x6
const/4 v1, 0x1
invoke-static {p0, p1, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(IIII)Ljava/lang/ThreadLocal;
move-result-object v0
return-object v0
.end method
.method public static createThreadLocal(III)Ljava/lang/ThreadLocal;
.registers 4
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;
invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$1;-><init>(III)V
return-object v0
.end method
.method public static createThreadLocal(IIII)Ljava/lang/ThreadLocal;
.registers 5
invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I
move-result v0
invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(III)Ljava/lang/ThreadLocal;
move-result-object v0
return-object v0
.end method
.method private fullSize()I
.registers 2
iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
if-lez v0, :cond_7
iget v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
:goto_6
return v0
:cond_7
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->size()I
move-result v0
iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
goto :goto_6
.end method
.method public asIplImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.registers 2
new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
invoke-direct {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;-><init>()V
invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetImage(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
return-object v0
.end method
.method public channels()I
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_CN(I)I
move-result v0
return v0
.end method
.method public clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 3
invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCloneMat(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;
invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
:cond_e
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public native cols()I
.end method
.method public native cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public cvSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
.registers 3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v1
invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
move-result-object v0
return-object v0
.end method
.method public native data_db()Lcom/googlecode/javacpp/DoublePointer;
.end method
.method public native data_db(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native data_fl()Lcom/googlecode/javacpp/FloatPointer;
.end method
.method public native data_fl(Lcom/googlecode/javacpp/FloatPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native data_i()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native data_i(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native data_ptr()Lcom/googlecode/javacpp/BytePointer;
.end method
.method public native data_ptr(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native data_s()Lcom/googlecode/javacpp/ShortPointer;
.end method
.method public native data_s(Lcom/googlecode/javacpp/ShortPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public depth()I
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_DEPTH(I)I
move-result v0
return v0
.end method
.method public elemSize()I
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I
move-result v0
packed-switch v0, :pswitch_data_1c
sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_11
const/4 v0, 0x1
:goto_12
return v0
:pswitch_13
const/4 v0, 0x2
goto :goto_12
:pswitch_15
const/4 v0, 0x4
goto :goto_12
:pswitch_17
const/16 v0, 0x8
goto :goto_12
:cond_1a
const/4 v0, 0x0
goto :goto_12
:pswitch_data_1c
.packed-switch 0x0
:pswitch_11
:pswitch_11
:pswitch_13
:pswitch_13
:pswitch_15
:pswitch_15
:pswitch_17
.end packed-switch
.end method
.method public empty()Z
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->length()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public get(I)D
.registers 4
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I
move-result v0
packed-switch v0, :pswitch_data_60
sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
if-nez v0, :cond_5c
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_11
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B
move-result v0
and-int/lit16 v0, v0, 0xff
int-to-double v0, v0
:goto_1c
return-wide v0
:pswitch_1d
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B
move-result v0
int-to-double v0, v0
goto :goto_1c
:pswitch_27
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S
move-result v0
const v1, 0xffff
and-int/2addr v0, v1
int-to-double v0, v0
goto :goto_1c
:pswitch_35
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ShortBuffer;->get(I)S
move-result v0
int-to-double v0, v0
goto :goto_1c
:pswitch_3f
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I
move-result v0
int-to-double v0, v0
goto :goto_1c
:pswitch_49
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F
move-result v0
float-to-double v0, v0
goto :goto_1c
:pswitch_53
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->get(I)D
move-result-wide v0
goto :goto_1c
:cond_5c
const-wide/high16 v0, 0x7ff8
goto :goto_1c
nop
:pswitch_data_60
.packed-switch 0x0
:pswitch_11
:pswitch_1d
:pswitch_27
:pswitch_35
:pswitch_3f
:pswitch_49
:pswitch_53
.end packed-switch
.end method
.method public get(II)D
.registers 5
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v0
mul-int/2addr v0, p1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v1
div-int/2addr v0, v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v1
mul-int/2addr v1, p2
add-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D
move-result-wide v0
return-wide v0
.end method
.method public get(III)D
.registers 6
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v0
mul-int/2addr v0, p1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v1
div-int/2addr v0, v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v1
mul-int/2addr v1, p2
add-int/2addr v0, v1
add-int/2addr v0, p3
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D
move-result-wide v0
return-wide v0
.end method
.method public get(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
const/4 v0, 0x0
array-length v1, p2
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized get(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 14
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I
move-result v1
packed-switch v1, :pswitch_data_9c
sget-boolean v6, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
if-nez v6, :cond_9a
new-instance v6, Ljava/lang/AssertionError;
invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V
throw v6
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_12
:catchall_12
move-exception v6
monitor-exit p0
throw v6
:pswitch_15
:try_start_15
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_1d
if-ge v3, p4, :cond_9a
if-nez v1, :cond_2f
add-int v6, v3, p3
invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B
move-result v7
and-int/lit16 v7, v7, 0xff
int-to-double v7, v7
aput-wide v7, p2, v6
:goto_2c
add-int/lit8 v3, v3, 0x1
goto :goto_1d
:cond_2f
add-int v6, v3, p3
invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B
move-result v7
int-to-double v7, v7
aput-wide v7, p2, v6
goto :goto_2c
:pswitch_39
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_41
if-ge v3, p4, :cond_9a
const/4 v6, 0x2
if-ne v1, v6, :cond_56
add-int v6, v3, p3
invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S
move-result v7
const v8, 0xffff
and-int/2addr v7, v8
int-to-double v7, v7
aput-wide v7, p2, v6
:goto_53
add-int/lit8 v3, v3, 0x1
goto :goto_41
:cond_56
add-int v6, v3, p3
invoke-virtual {v5}, Ljava/nio/ShortBuffer;->get()S
move-result v7
int-to-double v7, v7
aput-wide v7, p2, v6
goto :goto_53
:pswitch_60
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_68
if-ge v3, p4, :cond_9a
add-int v6, v3, p3
invoke-virtual {v4}, Ljava/nio/IntBuffer;->get()I
move-result v7
int-to-double v7, v7
aput-wide v7, p2, v6
add-int/lit8 v3, v3, 0x1
goto :goto_68
:pswitch_76
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_7e
if-ge v3, p4, :cond_9a
add-int v6, v3, p3
invoke-virtual {v2}, Ljava/nio/FloatBuffer;->get()F
move-result v7
float-to-double v7, v7
aput-wide v7, p2, v6
add-int/lit8 v3, v3, 0x1
goto :goto_7e
:pswitch_8c
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v6
invoke-virtual {v6, p2, p3, p4}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;
:try_end_9a
.catchall {:try_start_15 .. :try_end_9a} :catchall_12
:cond_9a
monitor-exit p0
return-object p0
:pswitch_data_9c
.packed-switch 0x0
:pswitch_15
:pswitch_15
:pswitch_39
:pswitch_39
:pswitch_60
:pswitch_76
:pswitch_8c
.end packed-switch
.end method
.method public get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public get()[D
.registers 4
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v2
div-int/2addr v1, v2
new-array v0, v1, [D
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
return-object v0
.end method
.method public getByteBuffer()Ljava/nio/ByteBuffer;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
if-nez v0, :cond_16
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_ptr()Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
:cond_16
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_db()Lcom/googlecode/javacpp/DoublePointer;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
div-int/lit8 v1, v1, 0x8
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/DoublePointer;->capacity(I)Lcom/googlecode/javacpp/DoublePointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/DoublePointer;->asBuffer()Ljava/nio/DoubleBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
:cond_18
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
return-object v0
.end method
.method public getFloatBuffer()Ljava/nio/FloatBuffer;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_fl()Lcom/googlecode/javacpp/FloatPointer;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
div-int/lit8 v1, v1, 0x4
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/FloatPointer;->capacity(I)Lcom/googlecode/javacpp/FloatPointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/FloatPointer;->asBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
:cond_18
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
return-object v0
.end method
.method public getIntBuffer()Ljava/nio/IntBuffer;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_i()Lcom/googlecode/javacpp/IntPointer;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
div-int/lit8 v1, v1, 0x4
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/IntPointer;->capacity(I)Lcom/googlecode/javacpp/IntPointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/IntPointer;->asBuffer()Ljava/nio/IntBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
:cond_18
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
return-object v0
.end method
.method public getShortBuffer()Ljava/nio/ShortBuffer;
.registers 3
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->data_s()Lcom/googlecode/javacpp/ShortPointer;
move-result-object v0
invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize()I
move-result v1
div-int/lit8 v1, v1, 0x2
invoke-virtual {v0, v1}, Lcom/googlecode/javacpp/ShortPointer;->capacity(I)Lcom/googlecode/javacpp/ShortPointer;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/javacpp/ShortPointer;->asBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
iput-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
:cond_18
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
return-object v0
.end method
.method public native hdr_refcount()I
.end method
.method public native hdr_refcount(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public isContinuous()Z
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_IS_MAT_CONT(I)Z
move-result v0
return v0
.end method
.method public length()I
.registers 3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v1
mul-int/2addr v0, v1
return v0
.end method
.method public nChannels()I
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_CN(I)I
move-result v0
return v0
.end method
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
.registers 3
invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 3
invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvArr;->position(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
return-object v0
.end method
.method public put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 6
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I
move-result v0
packed-switch v0, :pswitch_data_40
sget-boolean v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
if-nez v0, :cond_1a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:pswitch_11
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
double-to-int v1, p2
int-to-byte v1, v1
invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
:goto_1a
:cond_1a
return-object p0
:pswitch_1b
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v0
double-to-int v1, p2
int-to-short v1, v1
invoke-virtual {v0, p1, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;
goto :goto_1a
:pswitch_25
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;
move-result-object v0
double-to-int v1, p2
invoke-virtual {v0, p1, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;
goto :goto_1a
:pswitch_2e
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v0
double-to-float v1, p2
invoke-virtual {v0, p1, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;
goto :goto_1a
:pswitch_37
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;
goto :goto_1a
nop
:pswitch_data_40
.packed-switch 0x0
:pswitch_11
:pswitch_11
:pswitch_1b
:pswitch_1b
:pswitch_25
:pswitch_2e
:pswitch_37
.end packed-switch
.end method
.method public put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 7
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v0
mul-int/2addr v0, p1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v1
div-int/2addr v0, v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v1
mul-int/2addr v1, p2
add-int/2addr v0, v1
invoke-virtual {p0, v0, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public put(IIID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 8
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v0
mul-int/2addr v0, p1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v1
div-int/2addr v0, v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v1
mul-int/2addr v1, p2
add-int/2addr v0, v1
add-int/2addr v0, p3
invoke-virtual {p0, v0, p4, p5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized put(IIILcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 21
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v2
if-ne v1, v2, :cond_50
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v2
if-ne v1, v2, :cond_50
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v2
if-ne v1, v2, :cond_50
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->type()I
move-result v2
if-ne v1, v2, :cond_50
if-nez p1, :cond_50
if-nez p2, :cond_50
if-nez p3, :cond_50
if-nez p5, :cond_50
if-nez p6, :cond_50
if-nez p7, :cond_50
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
:try_end_4e
.catchall {:try_start_1 .. :try_end_4e} :catchall_a6
:cond_4e
monitor-exit p0
return-object p0
:try_start_50
:cond_50
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v1
sub-int/2addr v1, p1
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v2
sub-int v2, v2, p5
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v12
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v1
sub-int/2addr v1, p2
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v2
sub-int v2, v2, p6
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v8
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v1
sub-int v1, v1, p3
invoke-virtual/range {p4 .. p4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v2
sub-int v2, v2, p7
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v7
const/4 v9, 0x0
:goto_7f
if-ge v9, v12, :cond_4e
const/4 v10, 0x0
:goto_82
if-ge v10, v8, :cond_a3
const/4 v11, 0x0
:goto_85
if-ge v11, v7, :cond_a0
add-int v2, v9, p1
add-int v3, v10, p2
add-int v4, v11, p3
add-int v1, v9, p5
add-int v5, v10, p6
add-int v6, v11, p7
move-object/from16 v0, p4
invoke-virtual {v0, v1, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(III)D
move-result-wide v5
move-object v1, p0
invoke-virtual/range {v1 .. v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IIID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
:try_end_9d
.catchall {:try_start_50 .. :try_end_9d} :catchall_a6
add-int/lit8 v11, v11, 0x1
goto :goto_85
:cond_a0
add-int/lit8 v10, v10, 0x1
goto :goto_82
:cond_a3
add-int/lit8 v9, v9, 0x1
goto :goto_7f
:catchall_a6
move-exception v1
monitor-exit p0
throw v1
.end method
.method public varargs put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 5
const/4 v0, 0x0
array-length v1, p2
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized put(I[DII)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 13
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->depth()I
move-result v6
packed-switch v6, :pswitch_data_78
sget-boolean v6, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->$assertionsDisabled:Z
if-nez v6, :cond_75
new-instance v6, Ljava/lang/AssertionError;
invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V
throw v6
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_12
:catchall_12
move-exception v6
monitor-exit p0
throw v6
:pswitch_15
:try_start_15
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_1d
if-ge v3, p4, :cond_75
add-int v6, v3, p3
aget-wide v6, p2, v6
double-to-int v6, v6
int-to-byte v6, v6
invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_1d
:pswitch_2b
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getShortBuffer()Ljava/nio/ShortBuffer;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_33
if-ge v3, p4, :cond_75
add-int v6, v3, p3
aget-wide v6, p2, v6
double-to-int v6, v6
int-to-short v6, v6
invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_33
:pswitch_41
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getIntBuffer()Ljava/nio/IntBuffer;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_49
if-ge v3, p4, :cond_75
add-int v6, v3, p3
aget-wide v6, p2, v6
double-to-int v6, v6
invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_49
:pswitch_56
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getFloatBuffer()Ljava/nio/FloatBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
const/4 v3, 0x0
:goto_5e
if-ge v3, p4, :cond_75
add-int v6, v3, p3
aget-wide v6, p2, v6
double-to-float v6, v6
invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;
add-int/lit8 v3, v3, 0x1
goto :goto_5e
:pswitch_6b
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->getDoubleBuffer()Ljava/nio/DoubleBuffer;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {v1, p2, p3, p4}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;
:try_end_75
.catchall {:try_start_15 .. :try_end_75} :catchall_12
:cond_75
monitor-exit p0
return-object p0
nop
:pswitch_data_78
.packed-switch 0x0
:pswitch_15
:pswitch_15
:pswitch_2b
:pswitch_2b
:pswitch_41
:pswitch_56
:pswitch_6b
.end packed-switch
.end method
.method public put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 10
const/4 v1, 0x0
move-object v0, p0
move v2, v1
move v3, v1
move-object v4, p1
move v5, v1
move v6, v1
move v7, v1
invoke-virtual/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IIILcom/googlecode/javacv/cpp/opencv_core$CvMat;III)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public varargs put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(I[D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
move-result-object v0
return-object v0
.end method
.method public native raw_type()I
.end method
.method public native raw_type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public native refcount()Lcom/googlecode/javacpp/IntPointer;
.end method
.method public native refcount(Lcom/googlecode/javacpp/IntPointer;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public release()V
.registers 1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->deallocate()V
return-void
.end method
.method public reset()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->fullSize:I
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->byteBuffer:Ljava/nio/ByteBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->shortBuffer:Ljava/nio/ShortBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->intBuffer:Ljava/nio/IntBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->floatBuffer:Ljava/nio/FloatBuffer;
iput-object v1, p0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->doubleBuffer:Ljava/nio/DoubleBuffer;
return-void
.end method
.method public native rows()I
.end method
.method public native rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public size()I
.registers 5
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v1
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->elemSize()I
move-result v2
mul-int/2addr v1, v2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v2
mul-int/2addr v2, v1
const/4 v1, 0x1
if-le v0, v1, :cond_1e
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->step()I
move-result v1
add-int/lit8 v3, v0, -0x1
mul-int/2addr v1, v3
:goto_1c
add-int/2addr v1, v2
return v1
:cond_1e
const/4 v1, 0x0
goto :goto_1c
.end method
.method public native step()I
.end method
.method public native step(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method
.method public toString()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString(I)Ljava/lang/String;
.registers 11
const/4 v8, 0x1
new-instance v4, Ljava/lang/StringBuilder;
const-string v6, "[ "
invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->channels()I
move-result v0
const/4 v1, 0x0
:goto_d
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v6
if-ge v1, v6, :cond_6e
const/4 v2, 0x0
:goto_14
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v6
if-ge v2, v6, :cond_53
invoke-static {p0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGet2D(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;II)Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;
move-result-object v5
if-le v0, v8, :cond_25
const-string v6, "("
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_25
const/4 v3, 0x0
:goto_26
if-ge v3, v0, :cond_3c
invoke-virtual {v5, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->val(I)D
move-result-wide v6
double-to-float v6, v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
add-int/lit8 v6, v0, -0x1
if-ge v3, v6, :cond_39
const-string v6, ", "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_39
add-int/lit8 v3, v3, 0x1
goto :goto_26
:cond_3c
if-le v0, v8, :cond_43
const-string v6, ")"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_43
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v6
add-int/lit8 v6, v6, -0x1
if-ge v2, v6, :cond_50
const-string v6, ", "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_50
add-int/lit8 v2, v2, 0x1
goto :goto_14
:cond_53
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v6
add-int/lit8 v6, v6, -0x1
if-ge v1, v6, :cond_6b
const-string v6, "\n  "
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v2, 0x0
:goto_61
if-ge v2, p1, :cond_6b
const/16 v6, 0x20
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_61
:cond_6b
add-int/lit8 v1, v1, 0x1
goto :goto_d
:cond_6e
const-string v6, " ]"
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
return-object v6
.end method
.method public total()I
.registers 3
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows()I
move-result v0
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols()I
move-result v1
mul-int/2addr v0, v1
return v0
.end method
.method public type()I
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->raw_type()I
move-result v0
invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAT_TYPE(I)I
move-result v0
return v0
.end method
.method public type(II)V
.registers 5
invoke-static {p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->CV_MAKETYPE(II)I
move-result v0
const/high16 v1, 0x4242
or-int/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->raw_type(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
return-void
.end method