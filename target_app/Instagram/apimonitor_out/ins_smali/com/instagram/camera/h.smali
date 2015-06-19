.class public final Lcom/instagram/camera/h;
.super Ljava/lang/Object;
.source "CameraUtil.java"
.field private static a:Lcom/instagram/camera/j;
.method public static a(Landroid/view/Window;F)F
.registers 4
invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
move-result-object v0
iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F
invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
return v1
.end method
.method public static a(II)I
.registers 5
const/4 v0, 0x1
const/4 v1, -0x1
if-ne p1, v1, :cond_f
:cond_4
:goto_4
if-eqz v0, :cond_e
add-int/lit8 v0, p0, 0x2d
div-int/lit8 v0, v0, 0x5a
mul-int/lit8 v0, v0, 0x5a
rem-int/lit16 p1, v0, 0x168
:cond_e
return p1
:cond_f
sub-int v1, p0, p1
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
rsub-int v2, v1, 0x168
invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I
move-result v1
const/16 v2, 0x32
if-ge v1, v2, :cond_4
const/4 v0, 0x0
goto :goto_4
.end method
.method private static a(IILcom/instagram/camera/e;)I
.registers 6
invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/camera/e;->c()[Landroid/hardware/Camera$CameraInfo;
move-result-object v0
aget-object v0, v0, p0
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v2, 0x1
if-ne v1, v2, :cond_1b
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
invoke-virtual {p2, p0, v0}, Lcom/instagram/camera/e;->a(II)I
move-result v0
sub-int/2addr v0, p1
add-int/lit16 v0, v0, 0x168
rem-int/lit16 v0, v0, 0x168
:goto_1a
return v0
:cond_1b
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
invoke-virtual {p2, p0, v0}, Lcom/instagram/camera/e;->a(II)I
move-result v0
add-int/2addr v0, p1
rem-int/lit16 v0, v0, 0x168
goto :goto_1a
.end method
.method public static a(Landroid/app/Activity;)I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v1
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Display;->getRotation()I
move-result v1
packed-switch v1, :pswitch_data_1a
:pswitch_10
:goto_10
return v0
:pswitch_11
const/16 v0, 0x5a
goto :goto_10
:pswitch_14
const/16 v0, 0xb4
goto :goto_10
:pswitch_17
const/16 v0, 0x10e
goto :goto_10
:pswitch_data_1a
.packed-switch 0x0
:pswitch_10
:pswitch_11
:pswitch_14
:pswitch_17
.end packed-switch
.end method
.method public static a(Landroid/content/ContentResolver;)I
.registers 3
const-string v0, "screen_brightness_mode"
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static a(I)Landroid/hardware/Camera$CameraInfo;
.registers 2
new-instance v0, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V
invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
return-object v0
.end method
.method public static a(Landroid/app/Activity;I)Landroid/hardware/Camera;
.registers 5
const-string v0, "device_policy"
invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/admin/DevicePolicyManager;
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v1, v2, :cond_11
invoke-static {v0}, Lcom/instagram/camera/h;->a(Landroid/app/admin/DevicePolicyManager;)V
:cond_11
:try_start_11
invoke-static {}, Lcom/instagram/camera/e;->a()Lcom/instagram/camera/e;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/camera/e;->b(I)Landroid/hardware/Camera;
:try_end_18
.catch Lcom/instagram/camera/d; {:try_start_11 .. :try_end_18} :catch_1a
move-result-object v0
return-object v0
:catch_1a
move-exception v0
const-string v1, "eng"
sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "openCamera failed"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_2d
throw v0
.end method
.method public static a(J)Ljava/lang/String;
.registers 4
sget-object v1, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;
invoke-virtual {v0, p0, p1}, Lcom/instagram/camera/j;->a(J)Ljava/lang/String;
move-result-object v0
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static a()V
.registers 2
new-instance v0, Lcom/instagram/camera/j;
const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"
invoke-direct {v0, v1}, Lcom/instagram/camera/j;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/instagram/camera/h;->a:Lcom/instagram/camera/j;
return-void
.end method
.method private static a(Landroid/app/admin/DevicePolicyManager;)V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
move-result v0
if-eqz v0, :cond_d
new-instance v0, Lcom/instagram/camera/b;
invoke-direct {v0}, Lcom/instagram/camera/b;-><init>()V
throw v0
:cond_d
return-void
.end method
.method public static a(Landroid/graphics/Matrix;ZIII)V
.registers 9
const/high16 v3, 0x44fa
const/high16 v2, 0x4000
const/high16 v1, 0x3f80
if-eqz p1, :cond_20
const/high16 v0, -0x4080
:goto_a
invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V
int-to-float v0, p2
invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z
int-to-float v0, p3
div-float/2addr v0, v3
int-to-float v1, p4
div-float/2addr v1, v3
invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z
int-to-float v0, p3
div-float/2addr v0, v2
int-to-float v1, p4
div-float/2addr v1, v2
invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
:cond_20
move v0, v1
goto :goto_a
.end method
.method public static a(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
.registers 3
iget v0, p0, Landroid/graphics/RectF;->left:F
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->left:I
iget v0, p0, Landroid/graphics/RectF;->top:F
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->top:I
iget v0, p0, Landroid/graphics/RectF;->right:F
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->right:I
iget v0, p0, Landroid/graphics/RectF;->bottom:F
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->bottom:I
return-void
.end method
.method public static a(Landroid/hardware/Camera$Parameters;IILcom/instagram/camera/e;)V
.registers 6
const/4 v0, 0x0
const/4 v1, -0x1
if-eq p2, v1, :cond_8
invoke-static {p1, p2, p3}, Lcom/instagram/camera/h;->a(IILcom/instagram/camera/e;)I
move-result v0
:cond_8
invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V
return-void
.end method
.method public static a(Landroid/view/Window;Landroid/content/ContentResolver;)V
.registers 4
invoke-static {p1}, Lcom/instagram/camera/h;->a(Landroid/content/ContentResolver;)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_d
const v0, 0x3f333333
invoke-static {p0, v0}, Lcom/instagram/camera/h;->a(Landroid/view/Window;F)F
:cond_d
return-void
.end method
.method public static a(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static b(I)I
.registers 4
const/4 v0, -0x1
if-ne p0, v0, :cond_5
const/4 v0, 0x0
:goto_4
return v0
:cond_5
invoke-static {p0}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;
move-result-object v0
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v2, 0x1
if-ne v1, v2, :cond_1b
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
rsub-int v0, v0, 0x168
div-int/lit8 v0, v0, 0x5a
add-int/lit8 v0, v0, 0x2
rem-int/lit8 v0, v0, 0x4
add-int/lit8 v0, v0, 0x4
goto :goto_4
:cond_1b
iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
div-int/lit8 v0, v0, 0x5a
add-int/lit8 v0, v0, 0x2
rem-int/lit8 v0, v0, 0x4
goto :goto_4
.end method
.method public static b(II)I
.registers 2
if-le p0, p1, :cond_3
:goto_2
return p1
:cond_3
if-gez p0, :cond_7
const/4 p1, 0x0
goto :goto_2
:cond_7
move p1, p0
goto :goto_2
.end method
.method public static b(Landroid/app/Activity;I)V
.registers 5
new-instance v0, Lcom/instagram/camera/i;
invoke-direct {v0, p0}, Lcom/instagram/camera/i;-><init>(Landroid/app/Activity;)V
new-instance v1, Lcom/instagram/ui/dialog/b;
invoke-direct {v1, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v1
sget v2, Lcom/facebook/az;->dialog_ok:I
invoke-virtual {v1, v2, v0}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method public static b()Z
.registers 2
const-string v0, "SAMSUNG-SGH-I337"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SGH-M919"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SCH-I545"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SPH-L720"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SGH-I337M"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SCH-R970"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SC-04E"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "GT-I9500"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "GT-I9505"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_64
const-string v0, "SCH-I545"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_66
:cond_64
const/4 v0, 0x1
:goto_65
return v0
:cond_66
const/4 v0, 0x0
goto :goto_65
.end method
.method public static c(I)I
.registers 7
const/4 v5, 0x4
const/4 v1, 0x0
invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
move-result v2
move v0, v1
:goto_7
if-ge v0, v2, :cond_1c
invoke-static {v0}, Lcom/instagram/camera/h;->a(I)Landroid/hardware/Camera$CameraInfo;
move-result-object v3
iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I
if-lt p0, v5, :cond_14
const/4 v4, 0x1
if-eq v3, v4, :cond_18
:cond_14
if-ge p0, v5, :cond_19
if-nez v3, :cond_19
:goto_18
:cond_18
return v0
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1c
move v0, v1
goto :goto_18
.end method
.method public static c()Z
.registers 2
const-string v0, "GT-I9100"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "GT-I9100G"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SAMSUNG-SGH-T989"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SPH-D710"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SAMSUNG-SGH-I727"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SGH-I727R"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SGH-T989"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_50
const-string v0, "SGH-I777"
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_52
:cond_50
const/4 v0, 0x1
:goto_51
return v0
:cond_52
const/4 v0, 0x0
goto :goto_51
.end method