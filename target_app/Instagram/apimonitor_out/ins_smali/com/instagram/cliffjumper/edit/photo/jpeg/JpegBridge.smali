.class public Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
.super Ljava/lang/Object;
.source "JpegBridge.java"
.field private static final a:Ljava/lang/Class;
.field private static b:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
sput-object v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a:Ljava/lang/Class;
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.registers 6
iget v0, p1, Landroid/graphics/Rect;->left:I
iget v1, p1, Landroid/graphics/Rect;->top:I
iget v2, p1, Landroid/graphics/Rect;->right:I
iget v3, p1, Landroid/graphics/Rect;->bottom:I
invoke-static {p0, v0, v1, v2, v3}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->decodeJpeg(Ljava/lang/String;IIII)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
move-result-object v0
return-object v0
.end method
.method public static declared-synchronized a()Z
.registers 4
const-class v1, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;
monitor-enter v1
:try_start_3
sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_26
if-nez v0, :cond_19
:try_start_7
const-string v0, "glcommon"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "jpegutils"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const-string v0, "cj"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
:cond_19
:try_end_19
.catchall {:try_start_7 .. :try_end_19} :catchall_26
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_19} :catch_1d
:goto_19
:try_start_19
sget-boolean v0, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->b:Z
:try_end_1b
.catchall {:try_start_19 .. :try_end_1b} :catchall_26
monitor-exit v1
return v0
:catch_1d
move-exception v0
:try_start_1e
sget-object v2, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a:Ljava/lang/Class;
const-string v3, "Could not load native library"
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_25
.catchall {:try_start_1e .. :try_end_25} :catchall_26
goto :goto_19
:catchall_26
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static native calcBWpoint(I)[F
.end method
.method public static native calcCDF(I)I
.end method
.method private static native decodeJpeg(Ljava/lang/String;IIII)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.end method
.method public static native loadCDF(I)I
.end method
.method public static native releaseNativeBuffer(I)I
.end method
.method public static native saveImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Ljava/lang/String;I)I
.end method
.method public static native scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.end method
.method public static native uploadTexture(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)I
.end method