.class public Lcom/instagram/creation/video/g/e/c;
.super Ljava/lang/Object;
.source "TranscodeOutputSurfaceForJBMR2.java"
.field private static final a:Ljava/lang/Class;
.field private b:Landroid/graphics/SurfaceTexture;
.field private c:Landroid/view/Surface;
.field private d:Landroid/view/Surface;
.field private e:Landroid/opengl/EGLDisplay;
.field private f:Landroid/opengl/EGLContext;
.field private g:Landroid/opengl/EGLSurface;
.field private h:Lcom/instagram/creation/video/g/e/e;
.field private i:Lcom/instagram/creation/video/g/e/d;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/creation/video/g/e/c;
sput-object v0, Lcom/instagram/creation/video/g/e/c;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/view/Surface;Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
iput-object p1, p0, Lcom/instagram/creation/video/g/e/c;->c:Landroid/view/Surface;
invoke-direct {p0}, Lcom/instagram/creation/video/g/e/c;->f()V
invoke-direct {p0}, Lcom/instagram/creation/video/g/e/c;->g()V
invoke-direct {p0, p2, p3}, Lcom/instagram/creation/video/g/e/c;->a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
return-void
.end method
.method private a(Lcom/instagram/creation/b/a/b;Lcom/instagram/creation/video/e/c;)V
.registers 6
new-instance v0, Lcom/instagram/creation/video/g/e/e;
sget-object v1, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;
invoke-direct {v0, p1}, Lcom/instagram/creation/video/g/e/e;-><init>(Lcom/instagram/creation/b/a/b;)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;
invoke-virtual {v0, p2}, Lcom/instagram/creation/video/g/e/e;->a(Lcom/instagram/creation/video/e/c;)V
new-instance v0, Landroid/graphics/SurfaceTexture;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;
invoke-virtual {v1}, Lcom/instagram/creation/video/g/e/e;->a()I
move-result v1
invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;
new-instance v0, Lcom/instagram/creation/video/g/e/d;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;
iget-object v2, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;
invoke-direct {v0, v1, v2, p2}, Lcom/instagram/creation/video/g/e/d;-><init>(Landroid/graphics/SurfaceTexture;Lcom/instagram/creation/video/g/e/e;Lcom/instagram/creation/video/e/c;)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;
invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
new-instance v0, Landroid/view/Surface;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;
invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;
return-void
.end method
.method private static a(Ljava/lang/String;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
move v0, v1
:goto_3
invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I
move-result v3
const/16 v4, 0x3000
if-eq v3, v4, :cond_1f
sget-object v0, Lcom/instagram/creation/video/g/e/c;->a:Ljava/lang/Class;
const-string v4, "%s: EGL error: 0x%s"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
aput-object p0, v5, v1
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
aput-object v3, v5, v2
invoke-static {v0, v4, v5}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
move v0, v2
goto :goto_3
:cond_1f
if-eqz v0, :cond_29
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "EGL error encountered (see log)"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
return-void
.end method
.method private f()V
.registers 9
const/4 v5, 0x1
const/4 v2, 0x0
invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;
if-ne v0, v1, :cond_16
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "unable to get EGL14 display"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
invoke-static {v1, v0, v2, v0, v5}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z
move-result v0
if-nez v0, :cond_2c
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "unable to initialize EGL14"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
const/16 v0, 0xb
new-array v1, v0, [I
fill-array-data v1, :array_90
new-array v3, v5, [Landroid/opengl/EGLConfig;
new-array v6, v5, [I
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
move v4, v2
move v7, v2
invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z
move-result v0
if-nez v0, :cond_49
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "unable to find RGB888+recordable ES2 EGL config"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_49
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_aa
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
aget-object v4, v3, v2
sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
invoke-static {v1, v4, v6, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
const-string v0, "eglCreateContext"
invoke-static {v0}, Lcom/instagram/creation/video/g/e/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
if-nez v0, :cond_6c
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "null context"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
new-array v0, v5, [I
const/16 v1, 0x3038
aput v1, v0, v2
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
aget-object v3, v3, v2
iget-object v4, p0, Lcom/instagram/creation/video/g/e/c;->c:Landroid/view/Surface;
invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
const-string v0, "eglCreateWindowSurface"
invoke-static {v0}, Lcom/instagram/creation/video/g/e/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
if-nez v0, :cond_8f
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "surface was null"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8f
return-void
:array_90
.array-data 0x4
0x24t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x23t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x22t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x40t 0x30t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x42t 0x31t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
:array_aa
.array-data 0x4
0x98t 0x30t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
.end method
.method private g()V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
iget-object v2, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
iget-object v3, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
move-result v0
if-nez v0, :cond_16
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "eglMakeCurrent failed"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
return-void
.end method
.method public final a()V
.registers 6
const/4 v4, 0x0
invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;
sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;
invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z
:cond_18
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;
invoke-virtual {v0}, Landroid/view/Surface;->release()V
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->f:Landroid/opengl/EGLContext;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->h:Lcom/instagram/creation/video/g/e/e;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->b:Landroid/graphics/SurfaceTexture;
iput-object v4, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;
return-void
.end method
.method public final a(J)V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z
return-void
.end method
.method public final b()Landroid/view/Surface;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->d:Landroid/view/Surface;
return-object v0
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;
invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/d;->a()V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->i:Lcom/instagram/creation/video/g/e/d;
invoke-virtual {v0}, Lcom/instagram/creation/video/g/e/d;->b()V
return-void
.end method
.method public final e()Z
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/g/e/c;->e:Landroid/opengl/EGLDisplay;
iget-object v1, p0, Lcom/instagram/creation/video/g/e/c;->g:Landroid/opengl/EGLSurface;
invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
move-result v0
return v0
.end method