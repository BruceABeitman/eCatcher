.class public Landroid/support/v8/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"
.field static final DEBUG:Z = false
.field static final LOG_ENABLED:Z = false
.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"
.field static isNative:Z
.field static lock:Ljava/lang/Object;
.field static mCachePath:Ljava/lang/String;
.field static sInitialized:Z
.field private static thunk:I
.field private mApplicationContext:Landroid/content/Context;
.field  mContext:I
.field  mDev:I
.field  mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;
.field  mElement_A_8:Landroid/support/v8/renderscript/Element;
.field  mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;
.field  mElement_CHAR_2:Landroid/support/v8/renderscript/Element;
.field  mElement_CHAR_3:Landroid/support/v8/renderscript/Element;
.field  mElement_CHAR_4:Landroid/support/v8/renderscript/Element;
.field  mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;
.field  mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;
.field  mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;
.field  mElement_ELEMENT:Landroid/support/v8/renderscript/Element;
.field  mElement_F32:Landroid/support/v8/renderscript/Element;
.field  mElement_F64:Landroid/support/v8/renderscript/Element;
.field  mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;
.field  mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;
.field  mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;
.field  mElement_I16:Landroid/support/v8/renderscript/Element;
.field  mElement_I32:Landroid/support/v8/renderscript/Element;
.field  mElement_I64:Landroid/support/v8/renderscript/Element;
.field  mElement_I8:Landroid/support/v8/renderscript/Element;
.field  mElement_INT_2:Landroid/support/v8/renderscript/Element;
.field  mElement_INT_3:Landroid/support/v8/renderscript/Element;
.field  mElement_INT_4:Landroid/support/v8/renderscript/Element;
.field  mElement_LONG_2:Landroid/support/v8/renderscript/Element;
.field  mElement_LONG_3:Landroid/support/v8/renderscript/Element;
.field  mElement_LONG_4:Landroid/support/v8/renderscript/Element;
.field  mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;
.field  mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;
.field  mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;
.field  mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;
.field  mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;
.field  mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;
.field  mElement_RGB_565:Landroid/support/v8/renderscript/Element;
.field  mElement_RGB_888:Landroid/support/v8/renderscript/Element;
.field  mElement_SAMPLER:Landroid/support/v8/renderscript/Element;
.field  mElement_SCRIPT:Landroid/support/v8/renderscript/Element;
.field  mElement_SHORT_2:Landroid/support/v8/renderscript/Element;
.field  mElement_SHORT_3:Landroid/support/v8/renderscript/Element;
.field  mElement_SHORT_4:Landroid/support/v8/renderscript/Element;
.field  mElement_TYPE:Landroid/support/v8/renderscript/Element;
.field  mElement_U16:Landroid/support/v8/renderscript/Element;
.field  mElement_U32:Landroid/support/v8/renderscript/Element;
.field  mElement_U64:Landroid/support/v8/renderscript/Element;
.field  mElement_U8:Landroid/support/v8/renderscript/Element;
.field  mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;
.field  mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;
.field  mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;
.field  mElement_UINT_2:Landroid/support/v8/renderscript/Element;
.field  mElement_UINT_3:Landroid/support/v8/renderscript/Element;
.field  mElement_UINT_4:Landroid/support/v8/renderscript/Element;
.field  mElement_ULONG_2:Landroid/support/v8/renderscript/Element;
.field  mElement_ULONG_3:Landroid/support/v8/renderscript/Element;
.field  mElement_ULONG_4:Landroid/support/v8/renderscript/Element;
.field  mElement_USHORT_2:Landroid/support/v8/renderscript/Element;
.field  mElement_USHORT_3:Landroid/support/v8/renderscript/Element;
.field  mElement_USHORT_4:Landroid/support/v8/renderscript/Element;
.field  mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
.field  mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
.field  mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;
.field  mSampler_CLAMP_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_CLAMP_NEAREST:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_MIRRORED_REPEAT_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_MIRRORED_REPEAT_NEAREST:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_WRAP_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler;
.field  mSampler_WRAP_NEAREST:Landroid/support/v8/renderscript/Sampler;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;
sput-boolean v1, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
sput v1, Landroid/support/v8/renderscript/RenderScript;->thunk:I
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
if-eqz p1, :cond_10
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;
:cond_10
return-void
.end method
.method public static create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;
.registers 2
sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;
invoke-static {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
move-result-object v0
return-object v0
.end method
.method public static create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
.registers 3
sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;
invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
move-result-object v0
return-object v0
.end method
.method public static create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
.registers 9
new-instance v1, Landroid/support/v8/renderscript/RenderScript;
invoke-direct {v1, p0}, Landroid/support/v8/renderscript/RenderScript;-><init>(Landroid/content/Context;)V
invoke-static {}, Landroid/support/v8/renderscript/RenderScript;->shouldThunk()Z
move-result v2
if-eqz v2, :cond_17
const-string v2, "RenderScript_jni"
const-string v3, "RS native mode"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p0, p1}, Landroid/support/v8/renderscript/RenderScriptThunker;->create(Landroid/content/Context;I)Landroid/support/v8/renderscript/RenderScript;
move-result-object v1
:goto_16
return-object v1
:cond_17
sget-object v3, Landroid/support/v8/renderscript/RenderScript;->lock:Ljava/lang/Object;
monitor-enter v3
:try_start_1a
sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
:try_end_1c
.catchall {:try_start_1a .. :try_end_1c} :catchall_82
if-nez v2, :cond_2b
:try_start_1e
const-string v2, "RSSupport"
invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v2, "rsjni"
invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const/4 v2, 0x1
sput-boolean v2, Landroid/support/v8/renderscript/RenderScript;->sInitialized:Z
:try_start_2b
:try_end_2b
.catchall {:try_start_1e .. :try_end_2b} :catchall_82
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1e .. :try_end_2b} :catch_50
:cond_2b
monitor-exit v3
:try_end_2c
.catchall {:try_start_2b .. :try_end_2c} :catchall_82
const-string v2, "RenderScript_jni"
const-string v3, "RS compat mode"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->nDeviceCreate()I
move-result v2
iput v2, v1, Landroid/support/v8/renderscript/RenderScript;->mDev:I
iget v2, v1, Landroid/support/v8/renderscript/RenderScript;->mDev:I
const/4 v3, 0x0
iget v4, p2, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I
invoke-virtual {v1, v2, v3, p1, v4}, Landroid/support/v8/renderscript/RenderScript;->nContextCreate(IIII)I
move-result v2
iput v2, v1, Landroid/support/v8/renderscript/RenderScript;->mContext:I
iget v2, v1, Landroid/support/v8/renderscript/RenderScript;->mContext:I
if-nez v2, :cond_85
new-instance v2, Landroid/support/v8/renderscript/RSDriverException;
const-string v3, "Failed to create RS context."
invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V
throw v2
:catch_50
move-exception v0
:try_start_51
const-string v2, "RenderScript_jni"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error loading RS jni library: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error loading RS jni library: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_82
move-exception v2
monitor-exit v3
:try_end_84
.catchall {:try_start_51 .. :try_end_84} :catchall_82
throw v2
:cond_85
new-instance v2, Landroid/support/v8/renderscript/RenderScript$MessageThread;
invoke-direct {v2, v1}, Landroid/support/v8/renderscript/RenderScript$MessageThread;-><init>(Landroid/support/v8/renderscript/RenderScript;)V
iput-object v2, v1, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;
invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->start()V
goto :goto_16
.end method
.method public static create(Landroid/content/Context;Landroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/support/v8/renderscript/RenderScript$ContextType;)Landroid/support/v8/renderscript/RenderScript;
move-result-object v1
return-object v1
.end method
.method public static setupDiskCache(Ljava/io/File;)V
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "com.android.renderscript.cache"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
sput-object v1, Landroid/support/v8/renderscript/RenderScript;->mCachePath:Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
return-void
.end method
.method static shouldThunk()Z
.registers 4
const/4 v1, 0x0
const/4 v0, 0x1
sget v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I
if-nez v2, :cond_16
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x12
if-lt v2, v3, :cond_1b
const-string v2, "debug.rs.forcecompat"
invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
move-result v2
if-nez v2, :cond_1b
sput v0, Landroid/support/v8/renderscript/RenderScript;->thunk:I
:goto_16
:cond_16
sget v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I
if-ne v2, v0, :cond_1f
:goto_1a
return v0
:cond_1b
const/4 v2, -0x1
sput v2, Landroid/support/v8/renderscript/RenderScript;->thunk:I
goto :goto_16
:cond_1f
move v0, v1
goto :goto_1a
.end method
.method public contextDump()V
.registers 2
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDump(I)V
return-void
.end method
.method public destroy()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextDeinitToClient(I)V
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;
iput-boolean v1, v0, Landroid/support/v8/renderscript/RenderScript$MessageThread;->mRun:Z
:try_start_d
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageThread:Landroid/support/v8/renderscript/RenderScript$MessageThread;
invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$MessageThread;->join()V
:goto_12
:try_end_12
.catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1f
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextDestroy()V
iput v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mDev:I
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nDeviceDestroy(I)V
iput v1, p0, Landroid/support/v8/renderscript/RenderScript;->mDev:I
return-void
:catch_1f
move-exception v0
goto :goto_12
.end method
.method public finish()V
.registers 1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->nContextFinish()V
return-void
.end method
.method public final getApplicationContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;
return-object v0
.end method
.method public getErrorHandler()Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
return-object v0
.end method
.method public getMessageHandler()Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
.registers 2
iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
return-object v0
.end method
.method  isAlive()Z
.registers 2
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCreateFromAssetStream(III)I
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCreateTyped(IIII)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData1D(IIII[BI)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData1D(IIII[FI)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData1D(IIII[II)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData1D(IIII[SI)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
.registers 27
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move/from16 v3, p2
move/from16 v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move/from16 v10, p9
move/from16 v11, p10
move/from16 v12, p11
move/from16 v13, p12
invoke-virtual/range {v0 .. v13}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
:try_end_21
.catchall {:try_start_1 .. :try_end_21} :catchall_23
monitor-exit p0
return-void
:catchall_23
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
.registers 21
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move-object/from16 v9, p8
move/from16 v10, p9
invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1a
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
.registers 21
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move-object/from16 v9, p8
move/from16 v10, p9
invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1a
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIIII[II)V
.registers 21
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move-object/from16 v9, p8
move/from16 v10, p9
invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1a
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
.registers 21
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move-object/from16 v9, p8
move/from16 v10, p9
invoke-virtual/range {v0 .. v10}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_1a
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
move-object v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData3D(IIIIIIIIIIIII)V
.registers 29
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move/from16 v2, p1
move/from16 v3, p2
move/from16 v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move/from16 v10, p9
move/from16 v11, p10
move/from16 v12, p11
move/from16 v13, p12
move/from16 v14, p13
invoke-virtual/range {v0 .. v14}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIIIIIIII)V
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_26
monitor-exit p0
return-void
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData3D(IIIIIIII[BI)V
.registers 23
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move-object/from16 v10, p9
move/from16 v11, p10
invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[BI)V
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData3D(IIIIIIII[FI)V
.registers 23
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move-object/from16 v10, p9
move/from16 v11, p10
invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[FI)V
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData3D(IIIIIIII[II)V
.registers 23
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move-object/from16 v10, p9
move/from16 v11, p10
invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[II)V
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationData3D(IIIIIIII[SI)V
.registers 23
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move/from16 v5, p4
move/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move-object/from16 v10, p9
move/from16 v11, p10
invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[SI)V
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_1d
monitor-exit p0
return-void
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationElementData1D(IIII[BI)V
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_12
monitor-exit p0
return-void
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationGenerateMipmaps(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationGetType(I)I
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationGetType(II)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationIoReceive(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoReceive(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationIoSend(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationIoSend(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationRead(I[B)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[B)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationRead(I[F)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[F)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationRead(I[I)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationRead(I[S)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationRead(II[S)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationResize1D(II)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize1D(III)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationResize2D(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationResize2D(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nAllocationSyncAll(II)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nContextCreate(IIII)I
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->rsnContextCreate(IIII)I
:try_end_4
.catchall {:try_start_1 .. :try_end_4} :catchall_7
move-result v0
monitor-exit p0
return v0
:catchall_7
move-exception v0
monitor-exit p0
throw v0
.end method
.method native nContextDeinitToClient(I)V
.end method
.method declared-synchronized nContextDestroy()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDestroy(I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nContextDump(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextDump(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nContextFinish()V
.registers 2
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->rsnContextFinish(I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method
.method native nContextGetUserMessage(I[I)I
.end method
.method native nContextInitToClient(I)V
.end method
.method native nContextPeekMessage(I[I)I
.end method
.method declared-synchronized nContextSendMessage(I[I)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSendMessage(II[I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nContextSetPriority(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnContextSetPriority(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method native nDeviceCreate()I
.end method
.method native nDeviceDestroy(I)V
.end method
.method native nDeviceSetConfig(III)V
.end method
.method declared-synchronized nElementCreate(IIZI)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nElementGetNativeData(I[I)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nObjDestroy(I)V
.registers 3
monitor-enter p0
:try_start_1
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
if-eqz v0, :cond_a
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnObjDestroy(II)V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nSamplerCreate(IIIIIF)I
.registers 15
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
invoke-virtual/range {v0 .. v7}, Landroid/support/v8/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_13
move-result v0
monitor-exit p0
return v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptBindAllocation(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptFieldIDCreate(II)I
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptFieldIDCreate(III)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptForEach(IIII[B)V
.registers 13
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
if-nez p5, :cond_12
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
:goto_10
:try_end_10
.catchall {:try_start_1 .. :try_end_10} :catchall_1e
monitor-exit p0
return-void
:cond_12
:try_start_12
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_1e
goto :goto_10
:catchall_1e
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptForEachClipped(IIII[BIIIIII)V
.registers 25
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
if-nez p5, :cond_20
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move/from16 v4, p3
move/from16 v5, p4
move/from16 v6, p6
move/from16 v7, p7
move/from16 v8, p8
move/from16 v9, p9
move/from16 v10, p10
move/from16 v11, p11
invoke-virtual/range {v0 .. v11}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(IIIIIIIIIII)V
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_3b
:goto_1e
monitor-exit p0
return-void
:cond_20
:try_start_20
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move/from16 v4, p3
move/from16 v5, p4
move-object/from16 v6, p5
move/from16 v7, p6
move/from16 v8, p7
move/from16 v9, p8
move/from16 v10, p9
move/from16 v11, p10
move/from16 v12, p11
invoke-virtual/range {v0 .. v12}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptForEachClipped(IIIII[BIIIIII)V
:try_end_3a
.catchall {:try_start_20 .. :try_end_3a} :catchall_3b
goto :goto_1e
:catchall_3b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptGroupCreate([I[I[I[I[I)I
.registers 13
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupCreate(I[I[I[I[I[I)I
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_12
move-result v0
monitor-exit p0
return v0
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptGroupExecute(I)V
.registers 3
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupExecute(II)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptGroupSetInput(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetInput(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptGroupSetOutput(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptGroupSetOutput(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptIntrinsicCreate(II)I
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptInvoke(II)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvoke(III)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptInvokeV(II[B)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptKernelIDCreate(III)I
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptKernelIDCreate(IIII)I
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result v0
monitor-exit p0
return v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetTimeZone(I[B)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarD(IID)V
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarF(IIF)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarI(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarJ(IIJ)V
.registers 11
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-wide v4, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarObj(III)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarV(II[B)V
.registers 5
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nScriptSetVarVE(II[BI[I)V
.registers 13
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move-object v4, p3
move v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->rsnScriptSetVarVE(III[BI[I)V
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
monitor-exit p0
return-void
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nTypeCreate(IIIIZZI)I
.registers 17
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v1, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
move-object v0, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move v6, p5
move v7, p6
move/from16 v8, p7
invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_15
move-result v0
monitor-exit p0
return v0
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized nTypeGetNativeData(I[I)V
.registers 4
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-void
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method
.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method
.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method
.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method
.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method
.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method
.method native rsnAllocationCreateTyped(IIIII)I
.end method
.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method
.method native rsnAllocationData1D(IIIII[BI)V
.end method
.method native rsnAllocationData1D(IIIII[FI)V
.end method
.method native rsnAllocationData1D(IIIII[II)V
.end method
.method native rsnAllocationData1D(IIIII[SI)V
.end method
.method native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method
.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method
.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method
.method native rsnAllocationData2D(IIIIIIII[II)V
.end method
.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method
.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method
.method native rsnAllocationData3D(IIIIIIIIIIIIII)V
.end method
.method native rsnAllocationData3D(IIIIIIIII[BI)V
.end method
.method native rsnAllocationData3D(IIIIIIIII[FI)V
.end method
.method native rsnAllocationData3D(IIIIIIIII[II)V
.end method
.method native rsnAllocationData3D(IIIIIIIII[SI)V
.end method
.method native rsnAllocationElementData1D(IIIII[BI)V
.end method
.method native rsnAllocationGenerateMipmaps(II)V
.end method
.method native rsnAllocationGetType(II)I
.end method
.method native rsnAllocationIoReceive(II)V
.end method
.method native rsnAllocationIoSend(II)V
.end method
.method native rsnAllocationRead(II[B)V
.end method
.method native rsnAllocationRead(II[F)V
.end method
.method native rsnAllocationRead(II[I)V
.end method
.method native rsnAllocationRead(II[S)V
.end method
.method native rsnAllocationResize1D(III)V
.end method
.method native rsnAllocationResize2D(IIII)V
.end method
.method native rsnAllocationSyncAll(III)V
.end method
.method native rsnContextCreate(IIII)I
.end method
.method native rsnContextDestroy(I)V
.end method
.method native rsnContextDump(II)V
.end method
.method native rsnContextFinish(I)V
.end method
.method native rsnContextSendMessage(II[I)V
.end method
.method native rsnContextSetPriority(II)V
.end method
.method native rsnElementCreate(IIIZI)I
.end method
.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method
.method native rsnElementGetNativeData(II[I)V
.end method
.method native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method
.method native rsnObjDestroy(II)V
.end method
.method native rsnSamplerCreate(IIIIIIF)I
.end method
.method native rsnScriptBindAllocation(IIII)V
.end method
.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method
.method native rsnScriptFieldIDCreate(III)I
.end method
.method native rsnScriptForEach(IIIII)V
.end method
.method native rsnScriptForEach(IIIII[B)V
.end method
.method native rsnScriptForEachClipped(IIIIIIIIIII)V
.end method
.method native rsnScriptForEachClipped(IIIII[BIIIIII)V
.end method
.method native rsnScriptGroupCreate(I[I[I[I[I[I)I
.end method
.method native rsnScriptGroupExecute(II)V
.end method
.method native rsnScriptGroupSetInput(IIII)V
.end method
.method native rsnScriptGroupSetOutput(IIII)V
.end method
.method native rsnScriptIntrinsicCreate(III)I
.end method
.method native rsnScriptInvoke(III)V
.end method
.method native rsnScriptInvokeV(III[B)V
.end method
.method native rsnScriptKernelIDCreate(IIII)I
.end method
.method native rsnScriptSetTimeZone(II[B)V
.end method
.method native rsnScriptSetVarD(IIID)V
.end method
.method native rsnScriptSetVarF(IIIF)V
.end method
.method native rsnScriptSetVarI(IIII)V
.end method
.method native rsnScriptSetVarJ(IIIJ)V
.end method
.method native rsnScriptSetVarObj(IIII)V
.end method
.method native rsnScriptSetVarV(III[B)V
.end method
.method native rsnScriptSetVarVE(III[BI[I)V
.end method
.method native rsnTypeCreate(IIIIIZZI)I
.end method
.method native rsnTypeGetNativeData(II[I)V
.end method
.method  safeID(Landroid/support/v8/renderscript/BaseObj;)I
.registers 3
if-eqz p1, :cond_7
invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)I
move-result v0
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public sendMessage(I[I)V
.registers 3
invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nContextSendMessage(I[I)V
return-void
.end method
.method public setErrorHandler(Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;)V
.registers 5
iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mErrorCallback:Landroid/support/v8/renderscript/RenderScript$RSErrorHandler;
sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v2, :cond_13
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
new-instance v0, Landroid/support/v8/renderscript/RenderScript$2;
invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RenderScript$2;-><init>(Landroid/support/v8/renderscript/RenderScript;)V
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v2, v0}, Landroid/renderscript/RenderScript;->setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
:cond_13
return-void
.end method
.method public setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
.registers 5
iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;
sget-boolean v2, Landroid/support/v8/renderscript/RenderScript;->isNative:Z
if-eqz v2, :cond_13
move-object v1, p0
check-cast v1, Landroid/support/v8/renderscript/RenderScriptThunker;
new-instance v0, Landroid/support/v8/renderscript/RenderScript$1;
invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RenderScript$1;-><init>(Landroid/support/v8/renderscript/RenderScript;)V
iget-object v2, v1, Landroid/support/v8/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;
invoke-virtual {v2, v0}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
:cond_13
return-void
.end method
.method public setPriority(Landroid/support/v8/renderscript/RenderScript$Priority;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V
iget v0, p1, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I
invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/RenderScript;->nContextSetPriority(I)V
return-void
.end method
.method  validate()V
.registers 3
iget v0, p0, Landroid/support/v8/renderscript/RenderScript;->mContext:I
if-nez v0, :cond_c
new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;
const-string v1, "Calling RS with no Context active."
invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method