.class public final Lcom/megvii/api/FaceDetection;
.super Ljava/lang/Object;
.source "FaceDetection.java"
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "megvii"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string/jumbo v0, "megviijni"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createHandle(Landroid/content/Context;)Lcom/megvii/api/FaceDetection$DTHandle;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/megvii/api/FaceDetection;->nativeCreateHandle(Landroid/content/Context;)I
move-result v0
if-nez v0, :cond_8
:goto_7
return-object v1
:cond_8
new-instance v2, Lcom/megvii/api/FaceDetection$DTHandle;
invoke-direct {v2, v0, v1}, Lcom/megvii/api/FaceDetection$DTHandle;-><init>(ILcom/megvii/api/FaceDetection$DTHandle;)V
move-object v1, v2
goto :goto_7
.end method
.method public static createResult(Landroid/content/Context;)Lcom/megvii/api/FaceDetection$DTResult;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/megvii/api/FaceDetection;->nativeCreateResult(Landroid/content/Context;)I
move-result v0
if-nez v0, :cond_8
:goto_7
return-object v1
:cond_8
new-instance v2, Lcom/megvii/api/FaceDetection$DTResult;
invoke-direct {v2, v0, v1}, Lcom/megvii/api/FaceDetection$DTResult;-><init>(ILcom/megvii/api/FaceDetection$DTResult;)V
move-object v1, v2
goto :goto_7
.end method
.method public static detect(Lcom/megvii/api/FaceDetection$DTHandle;[BIILcom/megvii/api/FaceDetection$DTResult;)V
.registers 8
iget v1, p0, Lcom/megvii/api/FaceDetection$DTHandle;->dtHandle:I
iget v2, p4, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I
invoke-static {v1, p1, p2, p3, v2}, Lcom/megvii/api/FaceDetection;->nativeDetect(I[BIII)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static getFaceCount(Lcom/megvii/api/FaceDetection$DTResult;)I
.registers 4
iget v2, p0, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I
invoke-static {v2}, Lcom/megvii/api/FaceDetection;->nativeGetFaceCount(I)I
move-result v1
const v2, 0xffff
and-int v0, v1, v2
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
shr-int/lit8 v2, v1, 0x10
return v2
.end method
.method public static getFaceInfo(Lcom/megvii/api/FaceDetection$DTResult;I)Lcom/megvii/api/FaceDetection$FaceInfo;
.registers 9
iget v1, p0, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I
invoke-static {v1, p1}, Lcom/megvii/api/FaceDetection;->nativeGetFaceInfo(II)[I
move-result-object v6
const/4 v1, 0x0
aget v1, v6, v1
invoke-static {v1}, Lcom/megvii/api/Common;->handleException(I)V
new-instance v0, Lcom/megvii/api/FaceDetection$FaceInfo;
const/4 v1, 0x1
aget v1, v6, v1
const/4 v2, 0x2
aget v2, v6, v2
const/4 v3, 0x3
aget v3, v6, v3
const/4 v4, 0x4
aget v4, v6, v4
const/4 v5, 0x5
aget v5, v6, v5
invoke-direct/range {v0 .. v5}, Lcom/megvii/api/FaceDetection$FaceInfo;-><init>(IIIII)V
return-object v0
.end method
.method private static native nativeCreateHandle(Landroid/content/Context;)I
.end method
.method private static native nativeCreateResult(Landroid/content/Context;)I
.end method
.method private static native nativeDetect(I[BIII)I
.end method
.method private static native nativeGetFaceCount(I)I
.end method
.method private static native nativeGetFaceInfo(II)[I
.end method
.method private static native nativeReleaseHandle(I)I
.end method
.method private static native nativeReleaseResult(I)I
.end method
.method private static native nativeSetFaceSizeRange(III)I
.end method
.method private static native nativeSetMode(II)I
.end method
.method public static releaseHandle(Lcom/megvii/api/FaceDetection$DTHandle;)V
.registers 3
iget v1, p0, Lcom/megvii/api/FaceDetection$DTHandle;->dtHandle:I
invoke-static {v1}, Lcom/megvii/api/FaceDetection;->nativeReleaseHandle(I)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static releaseResult(Lcom/megvii/api/FaceDetection$DTResult;)V
.registers 3
iget v1, p0, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I
invoke-static {v1}, Lcom/megvii/api/FaceDetection;->nativeReleaseResult(I)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static setFaceSizeRange(Lcom/megvii/api/FaceDetection$DTHandle;II)V
.registers 5
iget v1, p0, Lcom/megvii/api/FaceDetection$DTHandle;->dtHandle:I
invoke-static {v1, p1, p2}, Lcom/megvii/api/FaceDetection;->nativeSetFaceSizeRange(III)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static setMode(Lcom/megvii/api/FaceDetection$DTHandle;Lcom/megvii/api/FaceDetection$DetectionMode;)V
.registers 5
iget v1, p0, Lcom/megvii/api/FaceDetection$DTHandle;->dtHandle:I
invoke-virtual {p1}, Lcom/megvii/api/FaceDetection$DetectionMode;->ordinal()I
move-result v2
invoke-static {v1, v2}, Lcom/megvii/api/FaceDetection;->nativeSetMode(II)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method