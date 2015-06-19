.class  Lcom/glympse/android/lib/x;
.super Ljava/lang/Object;
.source "AvatarUploader.java"
.implements Lcom/glympse/android/lib/GAvatarUploader;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private hP:Lcom/glympse/android/lib/GJob;
.field private hQ:Lcom/glympse/android/lib/GImagePrivate;
.field private hR:Lcom/glympse/android/hal/GDrawablePrivate;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
and-int/lit8 v0, p3, 0x8
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/x;->uploadAvatar(Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)Z
:cond_f
iget-object v1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_1a
return-void
.end method
.method public isUploadingAvatar()Z
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/x;->hP:Lcom/glympse/android/lib/GJob;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public sessionFailed(Ljava/lang/String;Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)V
.registers 6
iput-object p2, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iput-object p3, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAuthState()I
move-result v0
const/4 v1, 0x2
if-ne v1, v0, :cond_1d
iget-object v1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_1c
:goto_1c
return-void
:cond_1d
const/4 v1, 0x3
if-ne v1, v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAccessToken()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
iget-object v1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GBatchListener;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GBatchListener;->sessionFailed(Ljava/lang/String;)V
goto :goto_1c
:cond_47
invoke-virtual {p0, p2, p3}, Lcom/glympse/android/lib/x;->uploadAvatar(Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)Z
goto :goto_1c
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 3
const/4 v0, 0x0
iput-object p1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object v0, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iput-object v0, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
if-eqz v0, :cond_14
iget-object v1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v2, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iput-object v2, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
:cond_14
iput-object v2, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method
.method public uploadAvatar(Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)Z
.registers 7
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/glympse/android/lib/x;->isUploadingAvatar()Z
move-result v0
if-eqz v0, :cond_9
const/4 v0, 0x0
:goto_8
return v0
:cond_9
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAuthState()I
move-result v0
const/4 v1, 0x3
if-ne v1, v0, :cond_36
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GImageCachePrivate;
new-instance v1, Lcom/glympse/android/lib/jd;
iget-object v2, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v1, v2, p1, p2}, Lcom/glympse/android/lib/jd;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;Lcom/glympse/android/hal/GDrawablePrivate;)V
iput-object v1, p0, Lcom/glympse/android/lib/x;->hP:Lcom/glympse/android/lib/GJob;
invoke-interface {v0}, Lcom/glympse/android/lib/GImageCachePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/x;->hP:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
iput-object v3, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iput-object v3, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
:goto_34
const/4 v0, 0x1
goto :goto_8
:cond_36
iput-object p1, p0, Lcom/glympse/android/lib/x;->hQ:Lcom/glympse/android/lib/GImagePrivate;
iput-object p2, p0, Lcom/glympse/android/lib/x;->hR:Lcom/glympse/android/hal/GDrawablePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_34
.end method
.method public uploadingComplete(Z)V
.registers 6
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/x;->hP:Lcom/glympse/android/lib/GJob;
iget-object v0, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v1
if-eqz p1, :cond_18
const/16 v0, 0x10
:goto_11
iget-object v2, p0, Lcom/glympse/android/lib/x;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
const/4 v3, 0x3
invoke-interface {v1, v2, v3, v0, v1}, Lcom/glympse/android/api/GUser;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
return-void
:cond_18
const/16 v0, 0x20
goto :goto_11
.end method