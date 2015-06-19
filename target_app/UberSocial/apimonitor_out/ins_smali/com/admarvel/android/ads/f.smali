.class  Lcom/admarvel/android/ads/f;
.super Landroid/view/TextureView;
.source "SourceFile"
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;
.field private static I:J
.field private A:Landroid/content/Context;
.field private B:I
.field private final C:Ljava/lang/ref/WeakReference;
.field private final D:Z
.field private E:I
.field private F:Z
.field private G:Z
.field private H:Z
.field private J:Lcom/admarvel/android/ads/f$c;
.field private K:Landroid/media/MediaPlayer$OnCompletionListener;
.field private L:Landroid/media/MediaPlayer$OnSeekCompleteListener;
.field private M:Landroid/media/MediaPlayer$OnErrorListener;
.field private N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.field public a:Lcom/admarvel/android/ads/f$b;
.field public b:Lcom/admarvel/android/ads/f$a;
.field  c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.field  d:Landroid/media/MediaPlayer$OnPreparedListener;
.field private e:I
.field private f:Landroid/net/Uri;
.field private final g:Landroid/net/Uri;
.field private h:I
.field private i:Z
.field private j:I
.field private k:I
.field private l:Landroid/graphics/SurfaceTexture;
.field private m:Landroid/view/Surface;
.field private n:Landroid/media/MediaPlayer;
.field private o:I
.field private p:I
.field private q:I
.field private r:I
.field private s:Landroid/media/MediaPlayer$OnCompletionListener;
.field private t:Landroid/media/MediaPlayer$OnPreparedListener;
.field private u:I
.field private v:Landroid/media/MediaPlayer$OnErrorListener;
.field private w:I
.field private x:Z
.field private y:Z
.field private z:Z
.method static constructor <clinit>()V
.registers 2
const-wide/32 v0, 0x927c0
sput-wide v0, Lcom/admarvel/android/ads/f;->I:J
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V
iput v1, p0, Lcom/admarvel/android/ads/f;->e:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z
iput v1, p0, Lcom/admarvel/android/ads/f;->j:I
iput v1, p0, Lcom/admarvel/android/ads/f;->k:I
iput-object v2, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;
iput-object v2, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
iput-object v2, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iput v1, p0, Lcom/admarvel/android/ads/f;->B:I
iput v1, p0, Lcom/admarvel/android/ads/f;->E:I
iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->F:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->G:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->H:Z
new-instance v0, Lcom/admarvel/android/ads/f$e;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$e;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
new-instance v0, Lcom/admarvel/android/ads/f$d;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$d;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;
new-instance v0, Lcom/admarvel/android/ads/f$1;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$1;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;
new-instance v0, Lcom/admarvel/android/ads/f$2;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$2;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->L:Landroid/media/MediaPlayer$OnSeekCompleteListener;
new-instance v0, Lcom/admarvel/android/ads/f$3;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$3;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;
new-instance v0, Lcom/admarvel/android/ads/f$4;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/f$4;-><init>(Lcom/admarvel/android/ads/f;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
iput-object p1, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;
iput-object v2, p0, Lcom/admarvel/android/ads/f;->C:Ljava/lang/ref/WeakReference;
iput-boolean p2, p0, Lcom/admarvel/android/ads/f;->D:Z
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->j()V
invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
return-void
.end method
.method static synthetic a(Lcom/admarvel/android/ads/f;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/f;->o:I
return v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/f;I)I
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/f;->j:I
return p1
.end method
.method static synthetic a(Lcom/admarvel/android/ads/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->x:Z
return p1
.end method
.method static synthetic b(Lcom/admarvel/android/ads/f;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/f;->p:I
return v0
.end method
.method static synthetic b(Lcom/admarvel/android/ads/f;I)I
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/f;->k:I
return p1
.end method
.method static synthetic b(Lcom/admarvel/android/ads/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->y:Z
return p1
.end method
.method static synthetic c(Lcom/admarvel/android/ads/f;I)I
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/f;->u:I
return p1
.end method
.method static synthetic c(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnPreparedListener;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->t:Landroid/media/MediaPlayer$OnPreparedListener;
return-object v0
.end method
.method static synthetic c(Lcom/admarvel/android/ads/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->z:Z
return p1
.end method
.method static synthetic d(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
return-object v0
.end method
.method static synthetic d(Lcom/admarvel/android/ads/f;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/f;->i:Z
return p1
.end method
.method static synthetic e(Lcom/admarvel/android/ads/f;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/f;->w:I
return v0
.end method
.method static synthetic f(Lcom/admarvel/android/ads/f;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/f;->k:I
return v0
.end method
.method static synthetic g(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnCompletionListener;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->s:Landroid/media/MediaPlayer$OnCompletionListener;
return-object v0
.end method
.method static synthetic h(Lcom/admarvel/android/ads/f;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->D:Z
return v0
.end method
.method static synthetic i(Lcom/admarvel/android/ads/f;)Landroid/media/MediaPlayer$OnErrorListener;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->v:Landroid/media/MediaPlayer$OnErrorListener;
return-object v0
.end method
.method private j()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p0, p0}, Lcom/admarvel/android/ads/f;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->setWillNotDraw(Z)V
iput v0, p0, Lcom/admarvel/android/ads/f;->o:I
iput v0, p0, Lcom/admarvel/android/ads/f;->p:I
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/f;->setFocusable(Z)V
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/f;->setFocusableInTouchMode(Z)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestFocus()Z
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
return-void
.end method
.method private k()V
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, -0x1
const-string v0, "### openVideo"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;
if-nez v0, :cond_11
:cond_10
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->f()V
goto :goto_10
:cond_23
invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/f;->a(Z)V
:try_start_26
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->d:Landroid/media/MediaPlayer$OnPreparedListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
const/4 v0, -0x1
iput v0, p0, Lcom/admarvel/android/ads/f;->h:I
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->K:Landroid/media/MediaPlayer$OnCompletionListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->N:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->L:Landroid/media/MediaPlayer$OnSeekCompleteListener;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->u:I
iget-object v0, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
:try_end_68
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_68} :catch_aa
.catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_68} :catch_c7
move-result v0
if-eqz v0, :cond_dc
const/4 v2, 0x0
:try_start_6c
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_7c
.catchall {:try_start_6c .. :try_end_7c} :catchall_bf
:try_start_7c
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
:try_end_85
.catchall {:try_start_7c .. :try_end_85} :catchall_e6
if-eqz v1, :cond_8a
:try_start_87
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:cond_8a
:goto_8a
new-instance v0, Landroid/view/Surface;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;
invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
iput-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
const/4 v0, 0x1
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
:try_end_a8
.catch Ljava/io/IOException; {:try_start_87 .. :try_end_a8} :catch_aa
.catch Ljava/lang/IllegalArgumentException; {:try_start_87 .. :try_end_a8} :catch_c7
goto/16 :goto_10
:catch_aa
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iput v3, p0, Lcom/admarvel/android/ads/f;->j:I
iput v3, p0, Lcom/admarvel/android/ads/f;->k:I
iget-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
goto/16 :goto_10
:catchall_bf
move-exception v0
move-object v1, v2
:goto_c1
if-eqz v1, :cond_c6
:try_start_c3
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:cond_c6
throw v0
:try_end_c7
.catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c7} :catch_aa
.catch Ljava/lang/IllegalArgumentException; {:try_start_c3 .. :try_end_c7} :catch_c7
:catch_c7
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iput v3, p0, Lcom/admarvel/android/ads/f;->j:I
iput v3, p0, Lcom/admarvel/android/ads/f;->k:I
iget-object v0, p0, Lcom/admarvel/android/ads/f;->M:Landroid/media/MediaPlayer$OnErrorListener;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-interface {v0, v1, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
goto/16 :goto_10
:cond_dc
:try_start_dc
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
iget-object v1, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;
iget-object v2, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
:try_end_e5
.catch Ljava/io/IOException; {:try_start_dc .. :try_end_e5} :catch_aa
.catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_e5} :catch_c7
goto :goto_8a
:catchall_e6
move-exception v0
goto :goto_c1
.end method
.method private l()Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
if-eqz v1, :cond_13
iget v1, p0, Lcom/admarvel/android/ads/f;->j:I
const/4 v2, -0x1
if-eq v1, v2, :cond_13
iget v1, p0, Lcom/admarvel/android/ads/f;->j:I
if-eqz v1, :cond_13
iget v1, p0, Lcom/admarvel/android/ads/f;->j:I
if-eq v1, v0, :cond_13
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public a()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
return-object v0
.end method
.method  a(Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "#### getCachedVideoUriPath url: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;
move-result-object v2
const-string v3, "adm_cache_files"
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_79
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v3
sub-long/2addr v1, v3
sget-wide v3, Lcom/admarvel/android/ads/f;->I:J
cmp-long v1, v1, v3
if-gez v1, :cond_79
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "## getCachedVideoUriPath cached: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v0
:goto_78
return-object v0
:cond_79
const/4 v0, 0x0
goto :goto_78
.end method
.method public a(IIII)V
.registers 5
iput p1, p0, Lcom/admarvel/android/ads/f;->o:I
iput p2, p0, Lcom/admarvel/android/ads/f;->p:I
iput p3, p0, Lcom/admarvel/android/ads/f;->q:I
iput p4, p0, Lcom/admarvel/android/ads/f;->r:I
return-void
.end method
.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f;->s:Landroid/media/MediaPlayer$OnCompletionListener;
return-void
.end method
.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f;->v:Landroid/media/MediaPlayer$OnErrorListener;
return-void
.end method
.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f;->t:Landroid/media/MediaPlayer$OnPreparedListener;
return-void
.end method
.method public a(Landroid/net/Uri;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
:cond_11
iput-object p1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->w:I
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestLayout()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->invalidate()V
:goto_1f
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_2a
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1f
.end method
.method public a(Landroid/net/Uri;Ljava/lang/Boolean;)V
.registers 5
:try_start_0
iput-object p1, p0, Lcom/admarvel/android/ads/f;->f:Landroid/net/Uri;
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->w:I
const-string v0, "### setVideoURIForMrec"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->requestLayout()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->invalidate()V
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_1e
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_13
.end method
.method public a(Lcom/admarvel/android/ads/f$a;)V
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;
return-void
.end method
.method public a(Ljava/lang/String;I)V
.registers 7
const/4 v3, 0x0
iget v0, p0, Lcom/admarvel/android/ads/f;->E:I
const/4 v1, 0x5
if-le v0, v1, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget v0, p0, Lcom/admarvel/android/ads/f;->E:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/admarvel/android/ads/f;->E:I
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "adm_cache_files"
invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "#### tempPath "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_71
new-instance v1, Lcom/admarvel/android/ads/f$c;
invoke-direct {v1, p1, v0, p2}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
iput-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
new-array v2, v3, [Ljava/lang/Void;
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/f$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_6
:cond_71
new-instance v1, Lcom/admarvel/android/ads/f$c;
invoke-direct {v1, p1, v0, p2}, Lcom/admarvel/android/ads/f$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
iput-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
new-array v1, v3, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_6
.end method
.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
.registers 4
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V
return-void
.end method
.method public a(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
if-eqz p1, :cond_19
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
:cond_19
iget-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
invoke-virtual {v0}, Landroid/view/Surface;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->m:Landroid/view/Surface;
:goto_25
:cond_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_30
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_25
.end method
.method  b()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/f$c;->cancel(Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "### "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->J:Lcom/admarvel/android/ads/f$c;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " thread interuped "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_2b
return-void
.end method
.method public b(Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "#### isVideoUriCached url: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;
move-result-object v3
const-string v4, "adm_cache_files"
invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_75
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v4
sub-long/2addr v2, v4
sget-wide v4, Lcom/admarvel/android/ads/f;->I:J
cmp-long v2, v2, v4
if-gez v2, :cond_75
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "## file cached: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x1
:cond_75
return v0
.end method
.method public c()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->b()V
:goto_20
:cond_20
:try_end_20
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21
return-void
:catch_21
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_2b
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_2b
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_20
.end method
.method public c(Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "#### isVideoUriProcessing url: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;
move-result-object v3
const-string v4, "adm_cache_files"
invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ".PROCESSING"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_7b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1}, Ljava/io/File;->lastModified()J
move-result-wide v4
sub-long/2addr v2, v4
sget-wide v4, Lcom/admarvel/android/ads/f;->I:J
cmp-long v2, v2, v4
if-gez v2, :cond_7b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "## file processing: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x1
:cond_7b
return v0
.end method
.method public canPause()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->x:Z
return v0
.end method
.method public canSeekBackward()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->y:Z
return v0
.end method
.method public canSeekForward()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->z:Z
return v0
.end method
.method public d(Ljava/lang/String;)Ljava/lang/String;
.registers 6
:try_start_0
const-string v0, "MD5"
invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V
invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
move-result-object v1
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_17
array-length v3, v1
if-ge v0, v3, :cond_28
aget-byte v3, v1, v0
and-int/lit16 v3, v3, 0xff
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_28
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
:try_end_2b
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_2d
move-result-object v0
:goto_2c
return-object v0
:catch_2d
move-exception v0
invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
const-string v0, ""
goto :goto_2c
.end method
.method public d()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
:cond_c
return-void
.end method
.method public e()V
.registers 3
const/high16 v1, 0x3f80
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
:cond_d
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/admarvel/android/ads/f;->i:Z
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "##### playWithCacheOrLoad  using cached path: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
:goto_31
return-void
:cond_32
const-string v0, "##### playWithCacheOrLoad: call start to make video play after loading"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
invoke-virtual {p0, p1, v2}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V
goto :goto_31
.end method
.method public f()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
iput-boolean v2, p0, Lcom/admarvel/android/ads/f;->i:Z
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
:goto_24
return-void
:cond_25
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v2}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V
goto :goto_24
.end method
.method public g()V
.registers 3
const/4 v1, 0x0
const-string v0, "### ResumeVideoIfPaused"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget v0, p0, Lcom/admarvel/android/ads/f;->B:I
if-lez v0, :cond_58
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3d
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
iget v0, p0, Lcom/admarvel/android/ads/f;->B:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->seekTo(I)V
const/4 v0, 0x3
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
:goto_33
:cond_33
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->c()V
:goto_3c
:cond_3c
return-void
:cond_3d
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->i:Z
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;I)V
goto :goto_33
:cond_58
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_79
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/f;->a(Ljava/lang/String;Ljava/lang/Boolean;)V
:goto_75
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->start()V
goto :goto_3c
:cond_79
iget-object v0, p0, Lcom/admarvel/android/ads/f;->g:Landroid/net/Uri;
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Landroid/net/Uri;)V
goto :goto_75
.end method
.method public getBufferPercentage()I
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
if-eqz v0, :cond_7
iget v0, p0, Lcom/admarvel/android/ads/f;->u:I
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getCurrentPosition()I
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/f;->e:I
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getDuration()I
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_18
iget v0, p0, Lcom/admarvel/android/ads/f;->h:I
if-lez v0, :cond_d
iget v0, p0, Lcom/admarvel/android/ads/f;->h:I
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/f;->h:I
iget v0, p0, Lcom/admarvel/android/ads/f;->h:I
goto :goto_c
:cond_18
const/4 v0, -0x1
iput v0, p0, Lcom/admarvel/android/ads/f;->h:I
iget v0, p0, Lcom/admarvel/android/ads/f;->h:I
goto :goto_c
.end method
.method public h()I
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/f;->e:I
iget v0, p0, Lcom/admarvel/android/ads/f;->e:I
iput v0, p0, Lcom/admarvel/android/ads/f;->B:I
iget v0, p0, Lcom/admarvel/android/ads/f;->e:I
:goto_14
return v0
:cond_15
iget v0, p0, Lcom/admarvel/android/ads/f;->B:I
goto :goto_14
.end method
.method public i()V
.registers 5
const/4 v2, -0x2
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->density:F
iget v0, p0, Lcom/admarvel/android/ads/f;->o:I
if-lez v0, :cond_40
iget v0, p0, Lcom/admarvel/android/ads/f;->p:I
if-lez v0, :cond_40
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
iget v2, p0, Lcom/admarvel/android/ads/f;->o:I
int-to-float v2, v2
mul-float/2addr v2, v1
float-to-int v2, v2
iget v3, p0, Lcom/admarvel/android/ads/f;->p:I
int-to-float v3, v3
mul-float/2addr v3, v1
float-to-int v3, v3
invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
:goto_26
iget v2, p0, Lcom/admarvel/android/ads/f;->q:I
if-ltz v2, :cond_53
iget v2, p0, Lcom/admarvel/android/ads/f;->r:I
if-ltz v2, :cond_46
iget v2, p0, Lcom/admarvel/android/ads/f;->q:I
int-to-float v2, v2
mul-float/2addr v2, v1
float-to-int v2, v2
iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
iget v2, p0, Lcom/admarvel/android/ads/f;->r:I
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
:goto_3c
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
:cond_40
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
goto :goto_26
:cond_46
iget v2, p0, Lcom/admarvel/android/ads/f;->q:I
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
const/16 v1, 0xf
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
goto :goto_3c
:cond_53
iget v2, p0, Lcom/admarvel/android/ads/f;->r:I
if-ltz v2, :cond_64
iget v2, p0, Lcom/admarvel/android/ads/f;->r:I
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
const/16 v1, 0xe
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
goto :goto_3c
:cond_64
const/16 v1, 0xd
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
goto :goto_3c
.end method
.method public isPlaying()Z
.registers 2
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method protected onAttachedToWindow()V
.registers 2
const-string v0, "#### VideoView - onAttachedToWindow"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z
invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z
invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V
return-void
.end method
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "#### VideoView - onSurfaceTextureAvailable: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->isAvailable()Z
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/admarvel/android/ads/f;->G:Z
iput-object p1, p0, Lcom/admarvel/android/ads/f;->l:Landroid/graphics/SurfaceTexture;
iget v0, p0, Lcom/admarvel/android/ads/f;->j:I
if-eqz v0, :cond_26
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->k()V
:cond_26
return-void
.end method
.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.registers 4
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->F:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;
if-eqz v0, :cond_13
const-string v0, "#### VideoView - onSurfaceTextureDestroyed + windowDetached"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/f;->b:Lcom/admarvel/android/ads/f$a;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$a;->a()V
:cond_13
const-string v0, "#### VideoView - onSurfaceTextureDestroyed"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->G:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/f;->H:Z
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/f;->a(Z)V
return v1
.end method
.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.registers 5
const-string v0, "#### VideoView - onSurfaceTextureSizeChanged"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.registers 2
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->e()V
:cond_9
const/4 v0, 0x0
return v0
.end method
.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public pause()V
.registers 3
const/4 v0, 0x4
:try_start_1
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->getCurrentPosition()I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/f;->B:I
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
move-result v0
if-eqz v0, :cond_29
iget-boolean v0, p0, Lcom/admarvel/android/ads/f;->D:Z
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
:goto_20
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->a()V
:cond_29
const/4 v0, 0x4
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
:goto_2c
return-void
:cond_2d
invoke-virtual {p0}, Lcom/admarvel/android/ads/f;->c()V
:try_end_30
.catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_30} :catch_31
goto :goto_20
:catch_31
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_3b
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_3b
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_2c
.end method
.method public seekTo(I)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/f;->A:Landroid/content/Context;
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->k(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v0}, Lcom/admarvel/android/ads/f$b;->f()V
:goto_11
:cond_11
return-void
:cond_12
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->w:I
goto :goto_11
:cond_21
iput p1, p0, Lcom/admarvel/android/ads/f;->w:I
goto :goto_11
.end method
.method public start()V
.registers 3
:try_start_0
invoke-direct {p0}, Lcom/admarvel/android/ads/f;->l()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/admarvel/android/ads/f;->n:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
const/4 v0, 0x3
iput v0, p0, Lcom/admarvel/android/ads/f;->j:I
:cond_e
const/4 v0, 0x3
iput v0, p0, Lcom/admarvel/android/ads/f;->k:I
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/f;->B:I
:goto_14
:try_end_14
.catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_14} :catch_15
return-void
:catch_15
move-exception v0
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/admarvel/android/ads/f;->a:Lcom/admarvel/android/ads/f$b;
invoke-interface {v1}, Lcom/admarvel/android/ads/f$b;->g()V
:cond_1f
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_14
.end method