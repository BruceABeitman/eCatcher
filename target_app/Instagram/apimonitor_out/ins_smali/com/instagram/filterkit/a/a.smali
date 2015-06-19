.class public Lcom/instagram/filterkit/a/a;
.super Ljava/lang/Object;
.source "EglHelper.java"
.field private static final a:Ljava/lang/Class;
.field private b:Ljavax/microedition/khronos/egl/EGL10;
.field private c:Ljavax/microedition/khronos/egl/EGLConfig;
.field private d:Ljavax/microedition/khronos/egl/EGLDisplay;
.field private e:Ljavax/microedition/khronos/egl/EGLContext;
.field private f:Ljavax/microedition/khronos/egl/EGLSurface;
.field private g:Lcom/instagram/filterkit/a/a;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/filterkit/a/a;
sput-object v0, Lcom/instagram/filterkit/a/a;->a:Ljava/lang/Class;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->g:Lcom/instagram/filterkit/a/a;
return-void
.end method
.method private static a(I)Ljava/lang/String;
.registers 3
packed-switch p0, :pswitch_data_44
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "0x"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:pswitch_17
const-string v0, "EGL_SUCCESS"
goto :goto_16
:pswitch_1a
const-string v0, "EGL_NOT_INITIALIZED"
goto :goto_16
:pswitch_1d
const-string v0, "EGL_BAD_ACCESS"
goto :goto_16
:pswitch_20
const-string v0, "EGL_BAD_ALLOC"
goto :goto_16
:pswitch_23
const-string v0, "EGL_BAD_ATTRIBUTE"
goto :goto_16
:pswitch_26
const-string v0, "EGL_BAD_CONFIG"
goto :goto_16
:pswitch_29
const-string v0, "EGL_BAD_CONTEXT"
goto :goto_16
:pswitch_2c
const-string v0, "EGL_BAD_CURRENT_SURFACE"
goto :goto_16
:pswitch_2f
const-string v0, "EGL_BAD_DISPLAY"
goto :goto_16
:pswitch_32
const-string v0, "EGL_BAD_MATCH"
goto :goto_16
:pswitch_35
const-string v0, "EGL_BAD_NATIVE_PIXMAP"
goto :goto_16
:pswitch_38
const-string v0, "EGL_BAD_NATIVE_WINDOW"
goto :goto_16
:pswitch_3b
const-string v0, "EGL_BAD_PARAMETER"
goto :goto_16
:pswitch_3e
const-string v0, "EGL_BAD_SURFACE"
goto :goto_16
:pswitch_41
const-string v0, "EGL_CONTEXT_LOST"
goto :goto_16
:pswitch_data_44
.packed-switch 0x3000
:pswitch_17
:pswitch_1a
:pswitch_1d
:pswitch_20
:pswitch_23
:pswitch_26
:pswitch_29
:pswitch_2c
:pswitch_2f
:pswitch_32
:pswitch_35
:pswitch_38
:pswitch_3b
:pswitch_3e
:pswitch_41
.end packed-switch
.end method
.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
.registers 6
const/4 v0, 0x3
new-array v1, v0, [I
fill-array-data v1, :array_16
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->g:Lcom/instagram/filterkit/a/a;
if-nez v0, :cond_11
sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
:goto_c
invoke-interface {p1, p2, p3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
move-result-object v0
return-object v0
:cond_11
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->g:Lcom/instagram/filterkit/a/a;
iget-object v0, v0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
goto :goto_c
:array_16
.array-data 0x4
0x98t 0x30t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
.end method
.method private e()Ljavax/microedition/khronos/egl/EGLConfig;
.registers 8
const/4 v6, 0x0
const/4 v4, 0x1
new-array v5, v4, [I
new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;
invoke-static {}, Lcom/instagram/filterkit/a/a;->f()[I
move-result-object v2
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
move-result v0
if-nez v0, :cond_33
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglChooseConfig failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-static {v2}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
aget v0, v5, v6
if-lez v0, :cond_3a
aget-object v0, v3, v6
:goto_39
return-object v0
:cond_3a
const/4 v0, 0x0
goto :goto_39
.end method
.method private static f()[I
.registers 1
const/16 v0, 0xf
new-array v0, v0, [I
fill-array-data v0, :array_8
return-object v0
:array_8
.array-data 0x4
0x40t 0x30t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x24t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x23t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x22t 0x30t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
0x21t 0x30t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x25t 0x30t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x26t 0x30t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
.end method
.method final a()V
.registers 6
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
const/16 v2, 0x3059
invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_4d
:cond_1e
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
iget-object v3, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
iget-object v4, p0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
move-result v0
if-nez v0, :cond_4d
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglMakeCurrent failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-static {v2}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4d
return-void
.end method
.method public final a(Lcom/instagram/filterkit/a/c;)V
.registers 7
invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;
move-result-object v0
check-cast v0, Ljavax/microedition/khronos/egl/EGL10;
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;
if-ne v0, v1, :cond_37
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglGetDisplay failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-static {v2}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
const/4 v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
move-result v0
if-nez v0, :cond_63
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglInitialize failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-static {v2}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_63
invoke-direct {p0}, Lcom/instagram/filterkit/a/a;->e()Ljavax/microedition/khronos/egl/EGLConfig;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;
if-nez v0, :cond_75
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "eglConfig not initialized"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_75
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/filterkit/a/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
invoke-virtual {p1}, Lcom/instagram/filterkit/a/c;->a()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_b0
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v3, p0, Lcom/instagram/filterkit/a/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;
const/4 v4, 0x0
invoke-interface {v1, v2, v3, v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
:goto_94
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
if-eqz v0, :cond_9e
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
if-ne v0, v1, :cond_af
:cond_9e
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v0
const/16 v1, 0x300b
if-ne v0, v1, :cond_c3
sget-object v0, Lcom/instagram/filterkit/a/a;->a:Ljava/lang/Class;
const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
:cond_af
return-void
:cond_b0
const/4 v0, 0x5
new-array v0, v0, [I
fill-array-data v0, :array_dc
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v3, p0, Lcom/instagram/filterkit/a/a;->c:Ljavax/microedition/khronos/egl/EGLConfig;
invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
move-result-object v0
iput-object v0, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
goto :goto_94
:cond_c3
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "createWindowSurface failed "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:array_dc
.array-data 0x4
0x57t 0x30t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x56t 0x30t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x38t 0x30t 0x0t 0x0t
.end array-data
.end method
.method final b()V
.registers 6
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;
sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;
invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
move-result v0
if-nez v0, :cond_2f
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "eglMakeCurrent failed "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
move-result v2
invoke-static {v2}, Lcom/instagram/filterkit/a/a;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2f
return-void
.end method
.method final c()Z
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
move-result v0
return v0
.end method
.method final d()V
.registers 4
sget-object v0, Lcom/instagram/filterkit/a/a;->a:Ljava/lang/Class;
:try_start_2
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->e:Ljavax/microedition/khronos/egl/EGLContext;
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
iget-object v2, p0, Lcom/instagram/filterkit/a/a;->f:Ljavax/microedition/khronos/egl/EGLSurface;
invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
iget-object v0, p0, Lcom/instagram/filterkit/a/a;->b:Ljavax/microedition/khronos/egl/EGL10;
iget-object v1, p0, Lcom/instagram/filterkit/a/a;->d:Ljavax/microedition/khronos/egl/EGLDisplay;
invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
:goto_1b
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c
return-void
:catch_1c
move-exception v0
sget-object v0, Lcom/instagram/filterkit/a/a;->a:Ljava/lang/Class;
goto :goto_1b
.end method