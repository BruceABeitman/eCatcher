.class public final Lcom/megvii/api/PartsDetection;
.super Ljava/lang/Object;
.source "PartsDetection.java"
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
.method public static createHandle(Landroid/content/Context;)Lcom/megvii/api/PartsDetection$PTHandle;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/megvii/api/PartsDetection;->nativeCreateHandle(Landroid/content/Context;)I
move-result v0
if-nez v0, :cond_8
:goto_7
return-object v1
:cond_8
new-instance v2, Lcom/megvii/api/PartsDetection$PTHandle;
invoke-direct {v2, v0, v1}, Lcom/megvii/api/PartsDetection$PTHandle;-><init>(ILcom/megvii/api/PartsDetection$PTHandle;)V
move-object v1, v2
goto :goto_7
.end method
.method public static createResult(Landroid/content/Context;)Lcom/megvii/api/PartsDetection$PTResult;
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lcom/megvii/api/PartsDetection;->nativeCreateResult(Landroid/content/Context;)I
move-result v0
if-nez v0, :cond_8
:goto_7
return-object v1
:cond_8
new-instance v2, Lcom/megvii/api/PartsDetection$PTResult;
invoke-direct {v2, v0, v1}, Lcom/megvii/api/PartsDetection$PTResult;-><init>(ILcom/megvii/api/PartsDetection$PTResult;)V
move-object v1, v2
goto :goto_7
.end method
.method public static detectKeyPoint(Lcom/megvii/api/PartsDetection$PTHandle;Lcom/megvii/api/FaceDetection$DTResult;I[BIILcom/megvii/api/PartsDetection$PTResult;)V
.registers 15
iget v0, p0, Lcom/megvii/api/PartsDetection$PTHandle;->ptHandle:I
iget v1, p1, Lcom/megvii/api/FaceDetection$DTResult;->dtResult:I
iget v6, p6, Lcom/megvii/api/PartsDetection$PTResult;->ptResult:I
move v2, p2
move-object v3, p3
move v4, p4
move v5, p5
invoke-static/range {v0 .. v6}, Lcom/megvii/api/PartsDetection;->nativeDetectKeyPoint(III[BIII)I
move-result v7
invoke-static {v7}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static getAllPoints(Lcom/megvii/api/PartsDetection$PTResult;)Lcom/megvii/api/PartsDetection$FaceAllPoint;
.registers 3
iget v1, p0, Lcom/megvii/api/PartsDetection$PTResult;->ptResult:I
invoke-static {v1}, Lcom/megvii/api/PartsDetection;->nativegetAllPoints(I)[I
move-result-object v0
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
const/4 v1, 0x0
aget v1, v0, v1
invoke-static {v1}, Lcom/megvii/api/Common;->handleException(I)V
new-instance v1, Lcom/megvii/api/PartsDetection$FaceAllPoint;
invoke-direct {v1, v0}, Lcom/megvii/api/PartsDetection$FaceAllPoint;-><init>([I)V
goto :goto_9
.end method
.method public static getFaceKeyPoint(Lcom/megvii/api/PartsDetection$PTResult;)Lcom/megvii/api/PartsDetection$FaceKeyPoint;
.registers 3
iget v1, p0, Lcom/megvii/api/PartsDetection$PTResult;->ptResult:I
invoke-static {v1}, Lcom/megvii/api/PartsDetection;->nativeGetFaceKeyPoint(I)[I
move-result-object v0
const/4 v1, 0x0
aget v1, v0, v1
invoke-static {v1}, Lcom/megvii/api/Common;->handleException(I)V
new-instance v1, Lcom/megvii/api/PartsDetection$FaceKeyPoint;
invoke-direct {v1, v0}, Lcom/megvii/api/PartsDetection$FaceKeyPoint;-><init>([I)V
return-object v1
.end method
.method private static native nativeCreateHandle(Landroid/content/Context;)I
.end method
.method private static native nativeCreateResult(Landroid/content/Context;)I
.end method
.method private static native nativeDetectKeyPoint(III[BIII)I
.end method
.method private static native nativeGetFaceKeyPoint(I)[I
.end method
.method private static native nativeReleaseHandle(I)I
.end method
.method private static native nativeReleaseResult(I)I
.end method
.method private static native nativegetAllPoints(I)[I
.end method
.method public static releaseHandle(Lcom/megvii/api/PartsDetection$PTHandle;)V
.registers 3
iget v1, p0, Lcom/megvii/api/PartsDetection$PTHandle;->ptHandle:I
invoke-static {v1}, Lcom/megvii/api/PartsDetection;->nativeReleaseHandle(I)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method
.method public static releaseResult(Lcom/megvii/api/PartsDetection$PTResult;)V
.registers 3
iget v1, p0, Lcom/megvii/api/PartsDetection$PTResult;->ptResult:I
invoke-static {v1}, Lcom/megvii/api/PartsDetection;->nativeReleaseResult(I)I
move-result v0
invoke-static {v0}, Lcom/megvii/api/Common;->handleException(I)V
return-void
.end method