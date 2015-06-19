.class Lcom/glympse/android/lib/fp;
.super Lcom/glympse/android/lib/fb;
.source "LoadImageJob.java"


# static fields
.field public static final pk:J = 0x1eL


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private kp:Lcom/glympse/android/lib/GImagePrivate;

.field private kq:Ljava/lang/String;

.field private kt:Lcom/glympse/android/hal/GDrawablePrivate;

.field private lw:Lcom/glympse/android/lib/GContentResolver;

.field private lx:Lcom/glympse/android/lib/GImageCachePrivate;

.field private nE:Lcom/glympse/android/lib/GMemoryCache;

.field private pJ:Z

.field private pK:Z

.field private pL:Z


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/glympse/android/lib/fb;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GImagePrivate;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImageCachePrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/fp;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImageCachePrivate;->getMemoryCache()Lcom/glympse/android/lib/GMemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/fp;->nE:Lcom/glympse/android/lib/GMemoryCache;

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContentResolver()Lcom/glympse/android/lib/GContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/fp;->lw:Lcom/glympse/android/lib/GContentResolver;

    invoke-interface {p2}, Lcom/glympse/android/lib/GImagePrivate;->getSupportedCache()I

    move-result v3

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_32
    iput-boolean v0, p0, Lcom/glympse/android/lib/fp;->pJ:Z

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_3f

    :goto_38
    iput-boolean v1, p0, Lcom/glympse/android/lib/fp;->pK:Z

    iput-boolean v2, p0, Lcom/glympse/android/lib/fp;->pL:Z

    return-void

    :cond_3d
    move v0, v2

    goto :goto_32

    :cond_3f
    move v1, v2

    goto :goto_38
.end method


# virtual methods
.method public onAbort()V
    .registers 3

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->onAbort()V

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    return-void
.end method

.method public onComplete()V
    .registers 6

    const/4 v4, 0x7

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/glympse/android/lib/fb;->onComplete()V

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1, v4, v3, v2}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/fp;->pL:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->nE:Lcom/glympse/android/lib/GMemoryCache;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GMemoryCache;->cache(Ljava/lang/String;Lcom/glympse/android/core/GCommon;)V

    goto :goto_d

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/fp;->kp:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1, v4, v3, v2}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_d
.end method

.method public onProcess()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/glympse/android/lib/fp;->pJ:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/glympse/android/lib/fp;->nE:Lcom/glympse/android/lib/GMemoryCache;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GMemoryCache;->extract(Ljava/lang/String;)Lcom/glympse/android/core/GCommon;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;

    if-eqz v0, :cond_14

    iput-object v0, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Concurrent;->sleep(J)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/fp;->pK:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GImageCachePrivate;->extractFromCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, p0, Lcom/glympse/android/lib/fp;->pJ:Z

    if-eqz v1, :cond_34

    iput-boolean v3, p0, Lcom/glympse/android/lib/fp;->pL:Z

    :cond_34
    iput-object v0, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    goto :goto_13

    :cond_37
    iget-object v0, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/je;->F(Ljava/lang/String;)Lcom/glympse/android/lib/GUri;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->lw:Lcom/glympse/android/lib/GContentResolver;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GContentResolver;->load(Lcom/glympse/android/lib/GUri;)Lcom/glympse/android/core/GCommon;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;

    if-eqz v0, :cond_13

    iget-boolean v1, p0, Lcom/glympse/android/lib/fp;->pJ:Z

    if-eqz v1, :cond_4d

    iput-boolean v3, p0, Lcom/glympse/android/lib/fp;->pL:Z

    :cond_4d
    iget-boolean v1, p0, Lcom/glympse/android/lib/fp;->pK:Z

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/glympse/android/lib/fp;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/fp;->kq:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GImageCachePrivate;->saveToCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)V

    :cond_58
    iput-object v0, p0, Lcom/glympse/android/lib/fp;->kt:Lcom/glympse/android/hal/GDrawablePrivate;

    goto :goto_13
.end method

.method public useHandler()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
