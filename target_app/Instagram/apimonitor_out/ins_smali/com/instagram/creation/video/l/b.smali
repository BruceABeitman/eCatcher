.class public final Lcom/instagram/creation/video/l/b;
.super Ljava/lang/Object;
.source "CamcorderUtil.java"
.field private static final a:Ljava/util/List;
.field private static final b:Ljava/util/List;
.field private static final c:Ljava/util/List;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x4
const/4 v2, 0x1
new-array v0, v3, [Ljava/lang/Integer;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v4
const/4 v1, 0x6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v2
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v5
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v0, v6
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/instagram/creation/video/l/b;->a:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
sget-object v1, Lcom/instagram/creation/video/l/b;->a:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/instagram/creation/video/l/b;->b:Ljava/util/List;
const/16 v0, 0xc
new-array v0, v0, [Ljava/lang/String;
const-string v1, "GT-N7000"
aput-object v1, v0, v4
const-string v1, "GT-N7000B"
aput-object v1, v0, v2
const-string v1, "GT-N7005"
aput-object v1, v0, v5
const-string v1, "SHV-E160K"
aput-object v1, v0, v6
const-string v1, "SHV-E160L"
aput-object v1, v0, v3
const/4 v1, 0x5
const-string v2, "SHV-E160S"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "SGH-I717"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "SC-05D"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "SGH-T879"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "GT-I9220"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "GT-I9228"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "SCH-I889"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lcom/instagram/creation/video/l/b;->c:Ljava/util/List;
sget-object v0, Lcom/instagram/creation/video/l/b;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
return-void
.end method
.method public static a(II)I
.registers 5
new-instance v0, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V
invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v2, 0x1
if-ne v1, v2, :cond_17
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
add-int/2addr v0, p0
rem-int/lit16 v0, v0, 0x168
rsub-int v0, v0, 0x168
rem-int/lit16 v0, v0, 0x168
:goto_16
return v0
:cond_17
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
sub-int/2addr v0, p0
add-int/lit16 v0, v0, 0x168
rem-int/lit16 v0, v0, 0x168
goto :goto_16
.end method
.method private static a(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
.registers 3
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v0
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
return-object p1
.end method
.method public static a(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
.registers 16
if-nez p1, :cond_4
const/4 v3, 0x0
:cond_3
return-object v3
:cond_4
const/4 v3, 0x0
const-wide v1, 0x7fefffffffffffffL
new-instance v0, Landroid/graphics/Point;
invoke-direct {v0}, Landroid/graphics/Point;-><init>()V
invoke-static {p0, v0}, Lcom/instagram/creation/video/l/b;->a(Landroid/app/Activity;Landroid/graphics/Point;)Landroid/graphics/Point;
move-result-object v0
iget v4, v0, Landroid/graphics/Point;->x:I
iget v0, v0, Landroid/graphics/Point;->y:I
invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_1f
:cond_1f
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5b
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Size;
iget v6, v0, Landroid/hardware/Camera$Size;->width:I
int-to-double v6, v6
iget v8, v0, Landroid/hardware/Camera$Size;->height:I
int-to-double v8, v8
div-double/2addr v6, v8
sub-double/2addr v6, p2
invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D
move-result-wide v6
const-wide v8, 0x3f50624dd2f1a9fcL
cmpl-double v6, v6, v8
if-gtz v6, :cond_1f
iget v6, v0, Landroid/hardware/Camera$Size;->height:I
sub-int/2addr v6, v4
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
int-to-double v6, v6
cmpg-double v6, v6, v1
if-gez v6, :cond_8e
iget v1, v0, Landroid/hardware/Camera$Size;->height:I
sub-int/2addr v1, v4
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-double v1, v1
move-wide v10, v1
move-object v2, v0
move-wide v0, v10
:goto_57
move-object v3, v2
move-wide v10, v0
move-wide v1, v10
goto :goto_1f
:cond_5b
if-nez v3, :cond_3
const-wide v0, 0x7fefffffffffffffL
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move-wide v1, v0
:goto_67
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Size;
iget v6, v0, Landroid/hardware/Camera$Size;->height:I
sub-int/2addr v6, v4
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
int-to-double v6, v6
cmpg-double v6, v6, v1
if-gez v6, :cond_8c
iget v1, v0, Landroid/hardware/Camera$Size;->height:I
sub-int/2addr v1, v4
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
int-to-double v1, v1
move-object v3, v0
move-wide v10, v1
move-wide v0, v10
:goto_8a
move-wide v1, v0
goto :goto_67
:cond_8c
move-wide v0, v1
goto :goto_8a
:cond_8e
move-wide v10, v1
move-wide v0, v10
move-object v2, v3
goto :goto_57
.end method
.method public static a(Landroid/hardware/Camera$Parameters;Ljava/util/List;)Landroid/hardware/Camera$Size;
.registers 3
invoke-static {}, Lcom/instagram/camera/h;->b()Z
move-result v0
if-nez v0, :cond_c
invoke-static {}, Lcom/instagram/camera/h;->c()Z
move-result v0
if-eqz v0, :cond_14
:cond_c
const/4 v0, 0x0
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/Camera$Size;
:goto_13
return-object v0
:cond_14
invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
move-result-object v0
goto :goto_13
.end method
.method public static a(I)Landroid/media/CamcorderProfile;
.registers 6
invoke-static {}, Lcom/instagram/creation/video/l/b;->c()Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/instagram/creation/video/l/b;->b:Ljava/util/List;
:goto_8
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:try_start_1c
invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
:try_end_1f
.catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1f} :catch_24
move-result-object v0
:goto_20
return-object v0
:cond_21
sget-object v0, Lcom/instagram/creation/video/l/b;->a:Ljava/util/List;
goto :goto_8
:catch_24
move-exception v2
const-string v2, "CamcorderUtil"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "error trying to grab profile "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " trying another profile"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_40
const-string v0, "Used low quality"
const-string v1, "Phone had to use low quality instead of 480p"
invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;
move-result-object v0
goto :goto_20
.end method
.method public static a(ILandroid/content/SharedPreferences;)V
.registers 5
invoke-static {p1}, Lcom/instagram/camera/g;->d(Landroid/content/SharedPreferences;)I
move-result v0
invoke-static {p1}, Lcom/instagram/camera/g;->e(Landroid/content/SharedPreferences;)I
move-result v1
mul-int/2addr v1, v0
add-int/2addr v1, p0
add-int/lit8 v2, v0, 0x1
div-int/2addr v1, v2
invoke-static {p1, v1, v0}, Lcom/instagram/camera/g;->a(Landroid/content/SharedPreferences;II)V
return-void
.end method
.method public static a(Landroid/hardware/Camera$Parameters;)V
.registers 3
const-string v0, "auto"
invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/creation/video/l/b;->a(Ljava/lang/String;Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_11
const-string v0, "auto"
invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V
:cond_11
return-void
.end method
.method public static a()Z
.registers 2
const-string v0, "Galaxy Nexus"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
const/4 v0, 0x1
goto :goto_b
.end method
.method private static a(Ljava/lang/String;Ljava/util/List;)Z
.registers 3
if-eqz p1, :cond_a
invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b(Landroid/hardware/Camera$Parameters;)V
.registers 3
invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;
move-result-object v0
invoke-static {}, Lcom/instagram/camera/h;->b()Z
move-result v1
if-eqz v1, :cond_10
const-string v0, "auto"
invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
:goto_f
return-void
:cond_10
const-string v1, "continuous-video"
invoke-static {v1, v0}, Lcom/instagram/creation/video/l/b;->a(Ljava/lang/String;Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_1e
const-string v0, "continuous-video"
invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
goto :goto_f
:cond_1e
const-string v0, "CamcorderUtil"
const-string v1, "No auto focus mode found!"
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_f
.end method
.method public static b()Z
.registers 4
const/4 v1, 0x1
sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;
const-string v2, "MSM8660"
invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
move v0, v1
:goto_c
return v0
:cond_d
sget-object v0, Lcom/instagram/creation/video/l/b;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
move v0, v1
goto :goto_c
:cond_29
const/4 v0, 0x0
goto :goto_c
.end method
.method private static c()Z
.registers 2
invoke-static {}, Lcom/instagram/creation/c/a;->e()Z
move-result v0
if-nez v0, :cond_3e
invoke-static {}, Lcom/instagram/camera/h;->c()Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "EK-GC100"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "Nexus S"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "SM-C101"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "SM-C105"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3e
const-string v0, "Nexus S 4G"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_40
:cond_3e
const/4 v0, 0x1
:goto_3f
return v0
:cond_40
const/4 v0, 0x0
goto :goto_3f
.end method