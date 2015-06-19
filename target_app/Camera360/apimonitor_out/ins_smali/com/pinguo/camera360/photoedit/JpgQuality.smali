.class public final Lcom/pinguo/camera360/photoedit/JpgQuality;
.super Ljava/lang/Object;
.source "JpgQuality.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getGPUJpgQuality()I
.registers 5
const/16 v1, 0x5a
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
move-result-object v2
if-eqz v2, :cond_1c
:try_start_8
const-string/jumbo v3, "pref_camera_jpegquality_key"
const-string/jumbo v4, "90"
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_15
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_1d
move-result v1
const/16 v3, 0x64
if-ne v1, v3, :cond_1c
const/16 v1, 0x5f
:cond_1c
:goto_1c
return v1
:catch_1d
move-exception v0
const/16 v1, 0x5a
goto :goto_1c
.end method