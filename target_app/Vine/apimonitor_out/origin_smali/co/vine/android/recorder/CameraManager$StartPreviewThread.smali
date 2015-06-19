.class Lco/vine/android/recorder/CameraManager$StartPreviewThread;
.super Ljava/lang/Thread;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewThread"
.end annotation


# instance fields
.field private final config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

.field private final currentDuration:J

.field private final frameRate:I

.field final synthetic this$0:Lco/vine/android/recorder/CameraManager;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/CameraManager;IJ)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    const-string v0, "StartPreviewThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->frameRate:I

    iput-wide p3, p0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->currentDuration:J

    #getter for: Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
    invoke-static {p1}, Lco/vine/android/recorder/CameraManager;->access$400(Lco/vine/android/recorder/CameraManager;)Lco/vine/android/recorder/RecordController;

    move-result-object v0

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    new-instance v2, Lco/vine/android/recorder/CameraManager$AddBufferThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    invoke-direct {v2, v15}, Lco/vine/android/recorder/CameraManager$AddBufferThread;-><init>(Lco/vine/android/recorder/CameraManager;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$400(Lco/vine/android/recorder/CameraManager;)Lco/vine/android/recorder/RecordController;

    move-result-object v15

    if-eqz v15, :cond_294

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v9, v15, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget v15, v15, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->frameRate:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    move/from16 v17, v0

    div-int v16, v16, v17

    mul-int v15, v15, v16

    int-to-float v15, v15

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->currentDuration:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v16, v16, v17

    mul-float v15, v15, v16

    float-to-int v15, v15

    const/16 v16, 0x1e

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    div-int/lit8 v4, v15, 0xa

    const-string v15, "Buffer count: {}."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mAddedBufferArray:Ljava/util/Set;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$500(Lco/vine/android/recorder/CameraManager;)Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_77
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_91

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_77

    :cond_91
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$300(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v15, v3}, Lco/vine/android/recorder/CameraManager;->addCallbackBuffer([B)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_9d

    :cond_b3
    const-string v15, "After reused buffer count: {}."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$400(Lco/vine/android/recorder/CameraManager;)Lco/vine/android/recorder/RecordController;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mController:Lco/vine/android/recorder/RecordController;
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$400(Lco/vine/android/recorder/CameraManager;)Lco/vine/android/recorder/RecordController;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    #setter for: Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lco/vine/android/recorder/CameraManager;->access$602(Lco/vine/android/recorder/CameraManager;Ljava/lang/String;)Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current camera callback: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mControllerId:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$600(Lco/vine/android/recorder/CameraManager;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-boolean v15, v15, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocateBuffer:Z

    if-eqz v15, :cond_1aa

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->access$700()Z

    move-result v15

    if-nez v15, :cond_1aa

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mFrameSize:I
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$800(Lco/vine/android/recorder/CameraManager;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mBufferArray:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$300(Lco/vine/android/recorder/CameraManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v16

    sub-int v16, v4, v16

    mul-int v15, v15, v16

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-int v10, v15

    const-string v15, "Pre-allocate buffer {}: {}."

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v15, 0x1

    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$702(Z)Z

    :try_start_17f
    new-array v14, v10, [B
    :try_end_181
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17f .. :try_end_181} :catch_22e

    :goto_181
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mFrameSize:I
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$800(Lco/vine/android/recorder/CameraManager;)I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    #setter for: Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static/range {v15 .. v16}, Lco/vine/android/recorder/CameraManager;->access$902(Lco/vine/android/recorder/CameraManager;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    if-eqz v14, :cond_1a3

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput-byte v16, v14, v15

    :cond_1a3
    const/4 v15, 0x0

    new-array v14, v15, [B

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1aa
    if-eqz v11, :cond_1be

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    iget-wide v15, v15, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    const-wide/high16 v17, 0x3ff0

    cmpg-double v15, v15, v17

    if-gtz v15, :cond_1be

    int-to-double v15, v4

    const-wide/high16 v17, 0x3fe0

    mul-double v15, v15, v17

    double-to-int v4, v15

    :cond_1be
    const/4 v15, 0x0

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$900(Lco/vine/android/recorder/CameraManager;)Ljava/nio/ByteBuffer;

    move-result-object v15

    if-nez v15, :cond_254

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v16, v0

    #getter for: Lco/vine/android/recorder/CameraManager;->mFrameSize:I
    invoke-static/range {v16 .. v16}, Lco/vine/android/recorder/CameraManager;->access$800(Lco/vine/android/recorder/CameraManager;)I

    move-result v16

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    aget-object v16, v5, v4

    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    #setter for: Lco/vine/android/recorder/CameraManager;->mSharedByteBuffer:Ljava/nio/ByteBuffer;
    invoke-static/range {v15 .. v16}, Lco/vine/android/recorder/CameraManager;->access$902(Lco/vine/android/recorder/CameraManager;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_1f4
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    const/16 v16, 0x1

    #setter for: Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
    invoke-static/range {v15 .. v16}, Lco/vine/android/recorder/CameraManager;->access$002(Lco/vine/android/recorder/CameraManager;Z)Z

    invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager$AddBufferThread;->start()V

    const/4 v7, 0x0

    :goto_201
    if-ge v7, v4, :cond_26b

    rem-int/lit8 v15, v7, 0xf

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_220

    const-string v15, "Add buffer {}."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_220
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    aget-object v16, v5, v7

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_201

    :catch_22e
    move-exception v6

    const/4 v14, 0x0

    const/4 v11, 0x1

    const-string v15, "Pre-allocation failed with ratio {}, ignore pre-allocation step."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->config:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->preAllocRatio:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_181

    :cond_254
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mFrameSize:I
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$800(Lco/vine/android/recorder/CameraManager;)I

    move-result v15

    filled-new-array {v4, v15}, [I

    move-result-object v15

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    goto :goto_1f4

    :cond_26b
    const-string v15, "Waiting for adding to be done."

    invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    const/16 v16, 0x0

    #setter for: Lco/vine/android/recorder/CameraManager;->mRunAddBufferThread:Z
    invoke-static/range {v15 .. v16}, Lco/vine/android/recorder/CameraManager;->access$002(Lco/vine/android/recorder/CameraManager;Z)Z

    const-string v15, "Making buffer took {} ms."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_294
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mLOCK:[I
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$1000(Lco/vine/android/recorder/CameraManager;)[I

    move-result-object v16

    monitor-enter v16

    :try_start_29d
    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;

    move-result-object v15

    if-eqz v15, :cond_2d5

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    #setter for: Lco/vine/android/recorder/CameraManager;->mLastPreviewFrameTimestamp:J
    invoke-static {v15, v0, v1}, Lco/vine/android/recorder/CameraManager;->access$1102(Lco/vine/android/recorder/CameraManager;J)J

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    #setter for: Lco/vine/android/recorder/CameraManager;->mFramesReceived:J
    invoke-static {v15, v0, v1}, Lco/vine/android/recorder/CameraManager;->access$1202(Lco/vine/android/recorder/CameraManager;J)J

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    #setter for: Lco/vine/android/recorder/CameraManager;->mPreviewStartTime:J
    invoke-static {v15, v0, v1}, Lco/vine/android/recorder/CameraManager;->access$1302(Lco/vine/android/recorder/CameraManager;J)J

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/CameraManager$StartPreviewThread;->this$0:Lco/vine/android/recorder/CameraManager;

    #getter for: Lco/vine/android/recorder/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v15}, Lco/vine/android/recorder/CameraManager;->access$100(Lco/vine/android/recorder/CameraManager;)Landroid/hardware/Camera;

    move-result-object v15

    invoke-virtual {v15}, Landroid/hardware/Camera;->startPreview()V

    :cond_2d5
    monitor-exit v16
    :try_end_2d6
    .catchall {:try_start_29d .. :try_end_2d6} :catchall_2da

    :try_start_2d6
    invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager$AddBufferThread;->join()V
    :try_end_2d9
    .catch Ljava/lang/InterruptedException; {:try_start_2d6 .. :try_end_2d9} :catch_2dd

    :goto_2d9
    return-void

    :catchall_2da
    move-exception v15

    :try_start_2db
    monitor-exit v16
    :try_end_2dc
    .catchall {:try_start_2db .. :try_end_2dc} :catchall_2da

    throw v15

    :catch_2dd
    move-exception v6

    const-string v15, "Couldn\'t wait for add thread to join."

    invoke-static {v15}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto :goto_2d9
.end method
