.class public final enum Lcom/megvii/api/FaceDetection$DetectionMode;
.super Ljava/lang/Enum;
.source "FaceDetection.java"
.field private static final synthetic ENUM$VALUES:[Lcom/megvii/api/FaceDetection$DetectionMode;
.field public static final enum MG_DETECTION_MODE_NORMAL:Lcom/megvii/api/FaceDetection$DetectionMode;
.field public static final enum MG_DETECTION_MODE_TRACKING:Lcom/megvii/api/FaceDetection$DetectionMode;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/megvii/api/FaceDetection$DetectionMode;
const-string/jumbo v1, "MG_DETECTION_MODE_NORMAL"
invoke-direct {v0, v1, v2}, Lcom/megvii/api/FaceDetection$DetectionMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/megvii/api/FaceDetection$DetectionMode;->MG_DETECTION_MODE_NORMAL:Lcom/megvii/api/FaceDetection$DetectionMode;
new-instance v0, Lcom/megvii/api/FaceDetection$DetectionMode;
const-string/jumbo v1, "MG_DETECTION_MODE_TRACKING"
invoke-direct {v0, v1, v3}, Lcom/megvii/api/FaceDetection$DetectionMode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/megvii/api/FaceDetection$DetectionMode;->MG_DETECTION_MODE_TRACKING:Lcom/megvii/api/FaceDetection$DetectionMode;
const/4 v0, 0x2
new-array v0, v0, [Lcom/megvii/api/FaceDetection$DetectionMode;
sget-object v1, Lcom/megvii/api/FaceDetection$DetectionMode;->MG_DETECTION_MODE_NORMAL:Lcom/megvii/api/FaceDetection$DetectionMode;
aput-object v1, v0, v2
sget-object v1, Lcom/megvii/api/FaceDetection$DetectionMode;->MG_DETECTION_MODE_TRACKING:Lcom/megvii/api/FaceDetection$DetectionMode;
aput-object v1, v0, v3
sput-object v0, Lcom/megvii/api/FaceDetection$DetectionMode;->ENUM$VALUES:[Lcom/megvii/api/FaceDetection$DetectionMode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/megvii/api/FaceDetection$DetectionMode;
.registers 2
const-class v0, Lcom/megvii/api/FaceDetection$DetectionMode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/megvii/api/FaceDetection$DetectionMode;
return-object v0
.end method
.method public static values()[Lcom/megvii/api/FaceDetection$DetectionMode;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/megvii/api/FaceDetection$DetectionMode;->ENUM$VALUES:[Lcom/megvii/api/FaceDetection$DetectionMode;
array-length v1, v0
new-array v2, v1, [Lcom/megvii/api/FaceDetection$DetectionMode;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method