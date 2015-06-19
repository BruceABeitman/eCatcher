.class final Lcom/instagram/creation/video/gl/w;
.super Ljava/lang/Object;
.source "GalleryEGLConfigChooser.java"
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;
.field private static final c:[I
.field private static final d:[Ljava/lang/String;
.field private final a:[I
.field private final b:[I
.method static constructor <clinit>()V
.registers 3
const/16 v1, 0x8
new-array v0, v1, [I
fill-array-data v0, :array_36
sput-object v0, Lcom/instagram/creation/video/gl/w;->c:[I
new-array v0, v1, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "R"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "G"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "B"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "A"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "D"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "S"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "ID"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "CAVEAT"
aput-object v2, v0, v1
sput-object v0, Lcom/instagram/creation/video/gl/w;->d:[Ljava/lang/String;
return-void
:array_36
.array-data 0x4
0x24t 0x30t 0x0t 0x0t
0x23t 0x30t 0x0t 0x0t
0x22t 0x30t 0x0t 0x0t
0x21t 0x30t 0x0t 0x0t
0x25t 0x30t 0x0t 0x0t
0x26t 0x30t 0x0t 0x0t
0x28t 0x30t 0x0t 0x0t
0x27t 0x30t 0x0t 0x0t
.end array-data
.end method
.method constructor <init>()V
.registers 3
const/16 v1, 0x9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-array v0, v1, [I
fill-array-data v0, :array_14
iput-object v0, p0, Lcom/instagram/creation/video/gl/w;->a:[I
new-array v0, v1, [I
fill-array-data v0, :array_2a
iput-object v0, p0, Lcom/instagram/creation/video/gl/w;->b:[I
return-void
:array_14
.array-data 0x4
0x24t 0x30t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x23t 0x30t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x22t 0x30t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x21t 0x30t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
:array_2a
.array-data 0x4
0x24t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x23t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x22t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x21t 0x30t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
.end method
.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.registers 12
const/16 v8, 0x3026
const/4 v3, 0x0
const/4 v1, 0x0
const v0, 0x7fffffff
const/4 v2, 0x1
new-array v4, v2, [I
array-length v5, p2
move v2, v3
:goto_c
if-ge v2, v5, :cond_52
sget-boolean v6, Lcom/instagram/creation/video/l/a;->a:Z
if-nez v6, :cond_22
aget-object v6, p2, v2
const/16 v7, 0x3024
invoke-interface {p0, p1, v6, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
move-result v6
if-eqz v6, :cond_22
aget v6, v4, v3
const/16 v7, 0x8
if-eq v6, v7, :cond_36
:cond_22
aget-object v6, p2, v2
invoke-interface {p0, p1, v6, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
move-result v6
if-eqz v6, :cond_39
aget v6, v4, v3
if-eqz v6, :cond_36
aget v6, v4, v3
if-ge v6, v0, :cond_36
aget v0, v4, v3
aget-object v1, p2, v2
:cond_36
add-int/lit8 v2, v2, 0x1
goto :goto_c
:cond_39
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglGetConfigAttrib error: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_52
if-nez v1, :cond_56
aget-object v1, p2, v3
:cond_56
invoke-interface {p0, p1, v1, v8, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
invoke-static {p0, p1, v1}, Lcom/instagram/creation/video/gl/w;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
return-object v1
.end method
.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
.registers 9
const/4 v1, 0x0
const/4 v0, 0x1
new-array v2, v0, [I
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move v0, v1
:goto_a
sget-object v4, Lcom/instagram/creation/video/gl/w;->c:[I
array-length v4, v4
if-ge v0, v4, :cond_39
sget-object v4, Lcom/instagram/creation/video/gl/w;->c:[I
aget v4, v4, v0
invoke-interface {p0, p1, p2, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
sget-object v5, Lcom/instagram/creation/video/gl/w;->d:[Ljava/lang/String;
aget-object v5, v5, v0
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget v5, v2, v1
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_39
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Config chosen: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
.registers 9
const/4 v4, 0x0
const/4 v0, 0x1
new-array v5, v0, [I
sget-boolean v0, Lcom/instagram/creation/video/l/a;->a:Z
if-eqz v0, :cond_1b
iget-object v2, p0, Lcom/instagram/creation/video/gl/w;->b:[I
:goto_a
const/4 v3, 0x0
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
move-result v0
if-nez v0, :cond_1e
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "eglChooseConfig failed"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
iget-object v2, p0, Lcom/instagram/creation/video/gl/w;->a:[I
goto :goto_a
:cond_1e
aget v0, v5, v4
if-gtz v0, :cond_2a
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "No configs match configSpec"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2a
aget v0, v5, v4
new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;
array-length v4, v3
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
move-result v0
if-nez v0, :cond_3d
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V
throw v0
:cond_3d
invoke-static {p1, p2, v3}, Lcom/instagram/creation/video/gl/w;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
move-result-object v0
return-object v0
.end method