.class Lcom/glympse/android/lib/jd;
.super Lcom/glympse/android/lib/HttpJob;
.source "UploadAvatarJob.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private f:Ljava/lang/String;

.field private gQ:Ljava/lang/String;

.field private hQ:Lcom/glympse/android/lib/GImagePrivate;

.field private hR:Lcom/glympse/android/hal/GDrawablePrivate;

.field private hV:Z

.field private hf:Ljava/lang/String;

.field private hg:Ljava/lang/String;

.field private lx:Lcom/glympse/android/lib/GImageCachePrivate;

.field private tx:Ljava/lang/String;

.field private ty:Ljava/lang/String;

.field private tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)V
    .registers 7

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    iput-boolean v2, p0, Lcom/glympse/android/lib/jd;->_readResponseForFailedCall:Z

    iput-object p1, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImageCachePrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iput-object p3, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getHashCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->tx:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->isSslEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/glympse/android/lib/jd;->hV:Z

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/jd;->f:Ljava/lang/String;

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->gQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    return-void
.end method

.method private j(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hg:Ljava/lang/String;

    if-nez p1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string v0, "result"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "meta"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "error"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hg:Ljava/lang/String;

    goto :goto_12
.end method


# virtual methods
.method public onAbort()V
    .registers 6

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x7

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAvatarUploader;->uploadingComplete(Z)V

    goto :goto_b
.end method

.method public onComplete()V
    .registers 7

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v2, p0, Lcom/glympse/android/lib/jd;->_abortHttp:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GImagePrivate;->getDrawable()Lcom/glympse/android/core/GDrawable;

    move-result-object v3

    if-nez v3, :cond_35

    :goto_1f
    invoke-interface {v2, v0}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1, v5, v4, v2}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/glympse/android/lib/GAvatarUploader;->uploadingComplete(Z)V

    goto :goto_10

    :cond_35
    move v0, v1

    goto :goto_1f

    :cond_37
    invoke-virtual {p0}, Lcom/glympse/android/lib/jd;->isSucceeded()Z

    move-result v2

    if-nez v2, :cond_5e

    iget v0, p0, Lcom/glympse/android/lib/jd;->_failures:I

    const/16 v2, 0xc

    if-le v0, v2, :cond_10

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v2, v5, v4, v3}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAvatarUploader;->uploadingComplete(Z)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/jd;->abort()V

    goto :goto_10

    :cond_5e
    iget-object v1, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->tz:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->ty:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GImagePrivate;->setHashCode(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v2, v0}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v2, v5, v4, v3}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V

    :goto_96
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAvatarUploader;->uploadingComplete(Z)V

    goto/16 :goto_10

    :cond_a1
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hg:Ljava/lang/String;

    const-string v2, "oauth_token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getAvatarUploader()Lcom/glympse/android/lib/GAvatarUploader;

    move-result-object v0

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->gQ:Ljava/lang/String;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v4, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/lib/GAvatarUploader;->sessionFailed(Ljava/lang/String;Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)V

    goto :goto_96

    :cond_bb
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/jd;->hQ:Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v2, v5, v4, v3}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_96
.end method

.method public onPreProcess()V
    .registers 5

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v0, p0, Lcom/glympse/android/lib/jd;->hV:Z

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "users/self/upload_avatar?oauth_token="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->gQ:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B

    move-result-object v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0}, Lcom/glympse/android/hal/GDrawablePrivate;->compress()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B

    move-result-object v0

    if-nez v0, :cond_46

    :cond_3a
    iput-boolean v3, p0, Lcom/glympse/android/lib/jd;->_abortHttp:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jd;->j(Lcom/glympse/android/core/GPrimitive;)V

    :goto_40
    return-void

    :cond_41
    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTP()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_46
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B

    move-result-object v0

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v2}, Lcom/glympse/android/hal/GDrawablePrivate;->getLength()I

    move-result v2

    invoke-static {v0, v2}, Lcom/glympse/android/hal/Platform;->sha1([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->ty:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->ty:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->tx:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    iput-boolean v3, p0, Lcom/glympse/android/lib/jd;->_abortHttp:Z

    goto :goto_40

    :cond_65
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    const-string v1, "Content-Type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0, v3}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    iget-object v1, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v1}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v2}, Lcom/glympse/android/hal/GDrawablePrivate;->getLength()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GHttpConnection;->setRequestData([BI)V

    goto :goto_40
.end method

.method public onProcessResponse()V
    .registers 4

    invoke-virtual {p0}, Lcom/glympse/android/lib/jd;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/jd;->j(Lcom/glympse/android/core/GPrimitive;)V

    iget-object v1, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "response"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    goto :goto_6

    :cond_33
    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    goto :goto_6

    :cond_4c
    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v1, "avatar"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->tz:Ljava/lang/String;

    :goto_60
    iget-object v0, p0, Lcom/glympse/android/lib/jd;->lx:Lcom/glympse/android/lib/GImageCachePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jd;->tz:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GImageCachePrivate;->saveToCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/jd;->hR:Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {v0}, Lcom/glympse/android/hal/GDrawablePrivate;->clearBuffer()V

    goto :goto_6

    :cond_6f
    const-string v2, "avatar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v1, "url"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->tz:Ljava/lang/String;

    goto :goto_60

    :cond_84
    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jd;->hf:Ljava/lang/String;

    goto/16 :goto_6
.end method
