.class public final Lcom/instagram/creation/video/a/a;
.super Lcom/instagram/creation/video/gl/aa;
.source "CameraScreenNail.java"
.field private b:Z
.field private c:Z
.field private d:Lcom/instagram/creation/video/a/b;
.field private final e:[F
.field private f:Lcom/instagram/creation/video/ui/a;
.field private g:Lcom/instagram/creation/video/ui/q;
.field private h:I
.field private i:Lcom/instagram/creation/video/gl/x;
.field private j:Ljava/lang/Object;
.field private k:Lcom/instagram/creation/video/a/c;
.field private l:I
.field private m:I
.field private n:I
.field private o:I
.field private p:F
.field private q:F
.field private r:Z
.field private s:Z
.field private t:F
.field private u:Ljava/lang/Runnable;
.method public constructor <init>(Lcom/instagram/creation/video/a/b;)V
.registers 5
const/4 v2, 0x0
const/high16 v1, 0x3f80
invoke-direct {p0}, Lcom/instagram/creation/video/gl/aa;-><init>()V
const/16 v0, 0x10
new-array v0, v0, [F
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->e:[F
new-instance v0, Lcom/instagram/creation/video/ui/a;
invoke-direct {v0}, Lcom/instagram/creation/video/ui/a;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->f:Lcom/instagram/creation/video/ui/a;
new-instance v0, Lcom/instagram/creation/video/ui/q;
invoke-direct {v0}, Lcom/instagram/creation/video/ui/q;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->g:Lcom/instagram/creation/video/ui/q;
iput v2, p0, Lcom/instagram/creation/video/a/a;->h:I
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
iput v1, p0, Lcom/instagram/creation/video/a/a;->p:F
iput v1, p0, Lcom/instagram/creation/video/a/a;->q:F
iput-boolean v2, p0, Lcom/instagram/creation/video/a/a;->s:Z
iput v1, p0, Lcom/instagram/creation/video/a/a;->t:F
iput-object p1, p0, Lcom/instagram/creation/video/a/a;->d:Lcom/instagram/creation/video/a/b;
return-void
.end method
.method private a(Lcom/instagram/creation/video/gl/c;)V
.registers 9
const/4 v3, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/x;->b()I
move-result v5
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
invoke-virtual {v0}, Lcom/instagram/creation/video/gl/x;->c()I
move-result v6
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
invoke-interface {p1, v0}, Lcom/instagram/creation/video/gl/c;->a(Lcom/instagram/creation/video/gl/x;)V
const/4 v0, 0x0
int-to-float v1, v6
invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V
const/high16 v0, 0x3f80
const/high16 v1, -0x4080
invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->b(FF)V
invoke-virtual {p0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->e:[F
invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->e:[F
invoke-virtual {p0, v0}, Lcom/instagram/creation/video/a/a;->a([F)V
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->a:Lcom/instagram/creation/video/gl/b;
iget-object v2, p0, Lcom/instagram/creation/video/a/a;->e:[F
move-object v0, p1
move v4, v3
invoke-interface/range {v0 .. v6}, Lcom/instagram/creation/video/gl/c;->a(Lcom/instagram/creation/video/gl/a;[FIIII)V
invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->f()V
return-void
.end method
.method private c(II)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "preview layout size: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
iput p1, p0, Lcom/instagram/creation/video/a/a;->l:I
iput p2, p0, Lcom/instagram/creation/video/a/a;->m:I
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->j()V
return-void
.end method
.method private h()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/aa;->a()I
move-result v0
return v0
.end method
.method private i()I
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/gl/aa;->b()I
move-result v0
return v0
.end method
.method private j()V
.registers 6
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->s:Z
if-nez v0, :cond_17
const/high16 v0, 0x3f80
iput v0, p0, Lcom/instagram/creation/video/a/a;->q:F
iput v0, p0, Lcom/instagram/creation/video/a/a;->p:F
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/a/a;->n:I
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/a/a;->o:I
:goto_16
return-void
:cond_17
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v0
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v1
if-le v0, v1, :cond_7f
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v0
int-to-float v0, v0
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
:goto_2c
iget v1, p0, Lcom/instagram/creation/video/a/a;->l:I
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
if-le v1, v2, :cond_8b
iget v1, p0, Lcom/instagram/creation/video/a/a;->l:I
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
int-to-float v2, v2
mul-float/2addr v2, v0
float-to-int v2, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
int-to-float v1, v1
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
iget v3, p0, Lcom/instagram/creation/video/a/a;->l:I
int-to-float v3, v3
div-float v0, v3, v0
float-to-int v0, v0
invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-float v0, v0
move v4, v1
move v1, v0
move v0, v4
:goto_4e
iget v2, p0, Lcom/instagram/creation/video/a/a;->l:I
int-to-float v2, v2
div-float/2addr v2, v0
iput v2, p0, Lcom/instagram/creation/video/a/a;->p:F
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
int-to-float v2, v2
div-float/2addr v2, v1
iput v2, p0, Lcom/instagram/creation/video/a/a;->q:F
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/a/a;->n:I
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/a/a;->o:I
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "aspect ratio clamping enabled, surfaceTexture scale: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v1, p0, Lcom/instagram/creation/video/a/a;->p:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/instagram/creation/video/a/a;->q:F
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
goto :goto_16
:cond_7f
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v0
int-to-float v0, v0
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
goto :goto_2c
:cond_8b
iget v1, p0, Lcom/instagram/creation/video/a/a;->l:I
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
int-to-float v2, v2
div-float/2addr v2, v0
float-to-int v2, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
int-to-float v1, v1
iget v2, p0, Lcom/instagram/creation/video/a/a;->m:I
iget v3, p0, Lcom/instagram/creation/video/a/a;->l:I
int-to-float v3, v3
mul-float/2addr v0, v3
float-to-int v0, v0
invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I
move-result v0
int-to-float v0, v0
move v4, v1
move v1, v0
move v0, v4
goto :goto_4e
.end method
.method private k()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->k:Lcom/instagram/creation/video/a/c;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->k:Lcom/instagram/creation/video/a/c;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->k:Lcom/instagram/creation/video/a/c;
:cond_9
return-void
.end method
.method public final a()I
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->s:Z
if-eqz v0, :cond_7
iget v0, p0, Lcom/instagram/creation/video/a/a;->l:I
:goto_6
return v0
:cond_7
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v0
goto :goto_6
.end method
.method public final a(II)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/instagram/creation/video/gl/aa;->a(II)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->s:Z
iget v0, p0, Lcom/instagram/creation/video/a/a;->l:I
if-nez v0, :cond_e
iput p1, p0, Lcom/instagram/creation/video/a/a;->l:I
iput p2, p0, Lcom/instagram/creation/video/a/a;->m:I
:cond_e
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->j()V
return-void
.end method
.method public final a(Lcom/instagram/creation/video/gl/c;IIII)V
.registers 6
invoke-super/range {p0 .. p5}, Lcom/instagram/creation/video/gl/aa;->b(Lcom/instagram/creation/video/gl/c;IIII)V
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x1
:try_start_4
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->r:Z
monitor-exit v1
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_8
return-void
:catchall_8
move-exception v0
monitor-exit v1
throw v0
.end method
.method protected final a([F)V
.registers 8
const/high16 v0, 0x3f00
const/4 v5, 0x0
const/high16 v4, -0x4100
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/instagram/creation/video/gl/aa;->a([F)V
invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V
iget v0, p0, Lcom/instagram/creation/video/a/a;->p:F
iget v1, p0, Lcom/instagram/creation/video/a/a;->q:F
const/high16 v2, 0x3f80
invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V
invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V
return-void
.end method
.method public final b()I
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->s:Z
if-eqz v0, :cond_7
iget v0, p0, Lcom/instagram/creation/video/a/a;->m:I
:goto_6
return v0
:cond_7
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v0
goto :goto_6
.end method
.method public final b(II)V
.registers 5
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->g:Lcom/instagram/creation/video/ui/q;
invoke-virtual {v0, p1}, Lcom/instagram/creation/video/ui/q;->a(I)V
invoke-direct {p0, p1, p2}, Lcom/instagram/creation/video/a/a;->c(II)V
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_d
return-void
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b(Lcom/instagram/creation/video/gl/c;IIII)V
.registers 16
iget-object v8, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v8
:try_start_3
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->b:Z
if-nez v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->b:Z
:cond_a
invoke-virtual {p0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;
move-result-object v0
if-eqz v0, :cond_14
iget-boolean v1, p0, Lcom/instagram/creation/video/a/a;->c:Z
if-nez v1, :cond_16
:cond_14
monitor-exit v8
:goto_15
return-void
:cond_16
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->u:Ljava/lang/Runnable;
if-eqz v1, :cond_22
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->u:Ljava/lang/Runnable;
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
const/4 v1, 0x0
iput-object v1, p0, Lcom/instagram/creation/video/a/a;->u:Ljava/lang/Runnable;
:cond_22
invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->a()F
move-result v9
iget v1, p0, Lcom/instagram/creation/video/a/a;->t:F
invoke-interface {p1, v1}, Lcom/instagram/creation/video/gl/c;->a(F)V
iget v1, p0, Lcom/instagram/creation/video/a/a;->h:I
packed-switch v1, :pswitch_data_a4
:goto_30
:pswitch_30
iget v0, p0, Lcom/instagram/creation/video/a/a;->h:I
const/4 v1, 0x2
if-eq v0, v1, :cond_3a
iget v0, p0, Lcom/instagram/creation/video/a/a;->h:I
const/4 v1, 0x7
if-ne v0, v1, :cond_4b
:cond_3a
iget v0, p0, Lcom/instagram/creation/video/a/a;->h:I
const/4 v1, 0x2
if-ne v0, v1, :cond_8d
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->r:Z
if-nez v0, :cond_84
const/4 v0, 0x0
:goto_44
if-eqz v0, :cond_9c
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->d:Lcom/instagram/creation/video/a/b;
invoke-interface {v0}, Lcom/instagram/creation/video/a/b;->d()V
:cond_4b
:goto_4b
invoke-interface {p1, v9}, Lcom/instagram/creation/video/gl/c;->a(F)V
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->k()V
monitor-exit v8
:try_end_52
.catchall {:try_start_3 .. :try_end_52} :catchall_53
goto :goto_15
:catchall_53
move-exception v0
monitor-exit v8
throw v0
:try_start_56
:pswitch_56
invoke-super/range {p0 .. p5}, Lcom/instagram/creation/video/gl/aa;->b(Lcom/instagram/creation/video/gl/c;IIII)V
goto :goto_30
:pswitch_5a
invoke-direct {p0, p1}, Lcom/instagram/creation/video/a/a;->a(Lcom/instagram/creation/video/gl/c;)V
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->g:Lcom/instagram/creation/video/ui/q;
invoke-virtual {v1, p4, p5}, Lcom/instagram/creation/video/ui/q;->a(II)V
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->d:Lcom/instagram/creation/video/a/b;
const/4 v1, 0x4
iput v1, p0, Lcom/instagram/creation/video/a/a;->h:I
:pswitch_67
invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->g:Lcom/instagram/creation/video/ui/q;
iget-object v6, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v6}, Lcom/instagram/creation/video/ui/q;->a(Lcom/instagram/creation/video/gl/c;IIIILcom/instagram/creation/video/gl/x;)Z
goto :goto_30
:pswitch_77
const/4 v0, 0x7
iput v0, p0, Lcom/instagram/creation/video/a/a;->h:I
goto :goto_30
:pswitch_7b
invoke-direct {p0, p1}, Lcom/instagram/creation/video/a/a;->a(Lcom/instagram/creation/video/gl/c;)V
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->d:Lcom/instagram/creation/video/a/b;
const/4 v0, 0x2
iput v0, p0, Lcom/instagram/creation/video/a/a;->h:I
goto :goto_30
:cond_84
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->f:Lcom/instagram/creation/video/ui/a;
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
invoke-virtual {v0, p1, p0, v1}, Lcom/instagram/creation/video/ui/a;->a(Lcom/instagram/creation/video/gl/c;Lcom/instagram/creation/video/a/a;Lcom/instagram/creation/video/gl/x;)Z
move-result v0
goto :goto_44
:cond_8d
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->g:Lcom/instagram/creation/video/ui/q;
iget-object v7, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move-object v6, p0
invoke-virtual/range {v0 .. v7}, Lcom/instagram/creation/video/ui/q;->a(Lcom/instagram/creation/video/gl/c;IIIILcom/instagram/creation/video/a/a;Lcom/instagram/creation/video/gl/x;)Z
move-result v0
goto :goto_44
:cond_9c
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/creation/video/a/a;->h:I
invoke-super/range {p0 .. p5}, Lcom/instagram/creation/video/gl/aa;->b(Lcom/instagram/creation/video/gl/c;IIII)V
:try_end_a2
.catchall {:try_start_56 .. :try_end_a2} :catchall_53
goto :goto_4b
nop
:pswitch_data_a4
.packed-switch 0x0
:pswitch_56
:pswitch_7b
:pswitch_30
:pswitch_5a
:pswitch_67
:pswitch_67
:pswitch_77
.end packed-switch
.end method
.method public final c()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->s:Z
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->j()V
return-void
.end method
.method public final d()V
.registers 5
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->c:Z
invoke-super {p0}, Lcom/instagram/creation/video/gl/aa;->d()V
new-instance v0, Lcom/instagram/creation/video/gl/x;
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->h()I
move-result v2
invoke-direct {p0}, Lcom/instagram/creation/video/a/a;->i()I
move-result v3
invoke-direct {v0, v2, v3}, Lcom/instagram/creation/video/gl/x;-><init>(II)V
iput-object v0, p0, Lcom/instagram/creation/video/a/a;->i:Lcom/instagram/creation/video/gl/x;
monitor-exit v1
:try_end_19
.catchall {:try_start_4 .. :try_end_19} :catchall_1a
return-void
:catchall_1a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final e()V
.registers 3
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-super {p0}, Lcom/instagram/creation/video/gl/aa;->e()V
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/creation/video/a/a;->h:I
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_b
return-void
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final f()V
.registers 3
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->b:Z
monitor-exit v1
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_8
return-void
:catchall_8
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.registers 5
iget-object v1, p0, Lcom/instagram/creation/video/a/a;->j:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/instagram/creation/video/a/a;->g()Landroid/graphics/SurfaceTexture;
move-result-object v0
if-eq v0, p1, :cond_b
monitor-exit v1
:goto_a
return-void
:cond_b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/a/a;->c:Z
iget-boolean v0, p0, Lcom/instagram/creation/video/a/a;->b:Z
if-eqz v0, :cond_1f
iget v0, p0, Lcom/instagram/creation/video/a/a;->h:I
const/4 v2, 0x5
if-ne v0, v2, :cond_1a
const/4 v0, 0x6
iput v0, p0, Lcom/instagram/creation/video/a/a;->h:I
:cond_1a
iget-object v0, p0, Lcom/instagram/creation/video/a/a;->d:Lcom/instagram/creation/video/a/b;
invoke-interface {v0}, Lcom/instagram/creation/video/a/b;->d()V
:cond_1f
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_21
goto :goto_a
:catchall_21
move-exception v0
monitor-exit v1
throw v0
.end method