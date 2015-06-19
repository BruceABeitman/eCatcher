.class  Lcom/glympse/android/lib/ea;
.super Ljava/lang/Object;
.source "ImageCache.java"
.implements Lcom/glympse/android/lib/GImageCachePrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private iC:Lcom/glympse/android/hal/GContextHolder;
.field private nD:Lcom/glympse/android/lib/GJobQueue;
.field private nE:Lcom/glympse/android/lib/GMemoryCache;
.field private nF:Z
.field private nG:Lcom/glympse/android/hal/GDirectory;
.field private nH:Ljava/lang/String;
.field private nI:Ljava/lang/String;
.field private nJ:Lcom/glympse/android/core/GPrimitive;
.field private nK:Lcom/glympse/android/core/GPrimitive;
.field private nL:Lcom/glympse/android/core/GPrimitive;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "ImageCache"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ea;->nH:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/ea;->nF:Z
return-void
.end method
.method private ca()V
.registers 6
const/4 v4, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cleanup"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v2
sub-long v0, v2, v0
const-wide v2, 0x9a7ec800L
cmp-long v0, v0, v2
if-gez v0, :cond_1d
:goto_1c
return-void
:goto_1d
:cond_1d
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v0
const/16 v1, 0x64
if-le v0, v1, :cond_42
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v4}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v1, "fn"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->remove(Ljava/lang/String;)V
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v4}, Lcom/glympse/android/core/GPrimitive;->remove(I)V
goto :goto_1d
:cond_42
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
invoke-interface {v0}, Lcom/glympse/android/hal/GDirectory;->getContents()Lcom/glympse/android/hal/GVector;
move-result-object v0
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;
move-result-object v1
:goto_4c
:cond_4c
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->hasKey(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4c
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
invoke-interface {v2, v0}, Lcom/glympse/android/hal/GDirectory;->deleteFile(Ljava/lang/String;)Z
goto :goto_4c
:cond_66
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
const-string v1, "cleanup"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/glympse/android/lib/Primitive;
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v3
invoke-direct {v2, v3, v4}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_1c
.end method
.method private f(Z)Lcom/glympse/android/hal/GDirectory;
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ea;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nH:Ljava/lang/String;
invoke-static {v0, v1, p1}, Lcom/glympse/android/hal/HalFactory;->openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/glympse/android/lib/ea;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nH:Ljava/lang/String;
invoke-static {v0, v1, p1}, Lcom/glympse/android/hal/HalFactory;->createDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v0
:cond_1a
return-object v0
.end method
.method public bX()V
.registers 8
const/4 v6, 0x2
const/4 v0, 0x0
const/4 v3, 0x1
invoke-direct {p0, v0}, Lcom/glympse/android/lib/ea;->f(Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
if-nez v1, :cond_1a
invoke-direct {p0, v3}, Lcom/glympse/android/lib/ea;->f(Z)Lcom/glympse/android/hal/GDirectory;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
if-nez v1, :cond_1a
iput-boolean v3, p0, Lcom/glympse/android/lib/ea;->nF:Z
:goto_19
return-void
:cond_1a
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nI:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/glympse/android/lib/hw;->c(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
if-nez v1, :cond_7e
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v6}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
const-string v2, "cleanup"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/glympse/android/lib/Primitive;
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v4
invoke-direct {v3, v4, v5}, Lcom/glympse/android/lib/Primitive;-><init>(J)V
invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
const-string v2, "index"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:goto_57
new-instance v1, Lcom/glympse/android/lib/Primitive;
invoke-direct {v1, v6}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v1
:goto_64
if-ge v0, v1, :cond_8d
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2, v0}, Lcom/glympse/android/core/GPrimitive;->get(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
const-string v4, "fn"
invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v4, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
add-int/lit8 v0, v0, 0x1
goto :goto_64
:cond_7e
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
const-string v2, "index"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
goto :goto_57
:cond_8d
invoke-direct {p0}, Lcom/glympse/android/lib/ea;->ca()V
goto :goto_19
.end method
.method public bY()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/ea;->nF:Z
if-nez v0, :cond_f
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
if-eqz v0, :cond_f
invoke-direct {p0}, Lcom/glympse/android/lib/ea;->ca()V
invoke-virtual {p0}, Lcom/glympse/android/lib/ea;->bZ()V
:cond_f
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
iput-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
return-void
.end method
.method public bZ()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nI:Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nJ:Lcom/glympse/android/core/GPrimitive;
invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GDirectory;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
return-void
.end method
.method public cache(Lcom/glympse/android/api/GImage;Ljava/lang/String;)Z
.registers 6
iget-boolean v0, p0, Lcom/glympse/android/lib/ea;->nF:Z
if-nez v0, :cond_16
if-eqz p1, :cond_16
invoke-interface {p1}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
if-eqz v0, :cond_16
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_18
:cond_16
const/4 v0, 0x0
:goto_17
return v0
:cond_18
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
new-instance v2, Lcom/glympse/android/lib/eb;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ea;
invoke-direct {v2, p0, v0, p1, p2}, Lcom/glympse/android/lib/eb;-><init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;Lcom/glympse/android/api/GImage;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
const/4 v0, 0x1
goto :goto_17
.end method
.method public extract(Lcom/glympse/android/api/GImage;Ljava/lang/String;)Z
.registers 9
const/4 v5, 0x7
const/4 v1, 0x0
const/4 v2, 0x1
if-eqz p1, :cond_17
invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_19
:cond_17
move v0, v1
:goto_18
return v0
:cond_19
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GImagePrivate;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
invoke-interface {v0, p2}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V
invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->getSupportedCache()I
move-result v3
and-int/lit8 v3, v3, 0x1
if-eqz v3, :cond_2b
move v1, v2
:cond_2b
if-eqz v1, :cond_45
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nE:Lcom/glympse/android/lib/GMemoryCache;
invoke-interface {v1, p2}, Lcom/glympse/android/lib/GMemoryCache;->extract(Ljava/lang/String;)Lcom/glympse/android/core/GCommon;
move-result-object v1
check-cast v1, Lcom/glympse/android/hal/GDrawablePrivate;
if-eqz v1, :cond_45
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setDrawable(Lcom/glympse/android/core/GDrawable;)V
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setState(I)V
iget-object v1, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, v1, v5, v2, p1}, Lcom/glympse/android/lib/GImagePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
move v0, v2
goto :goto_18
:cond_45
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
new-instance v3, Lcom/glympse/android/lib/fp;
iget-object v4, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {v3, v4, v0}, Lcom/glympse/android/lib/fp;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GImagePrivate;)V
invoke-interface {v1, v3}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {p1, v0, v5, v2, p1}, Lcom/glympse/android/api/GImage;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
move v0, v2
goto :goto_18
.end method
.method public extractFromCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
iget-boolean v2, p0, Lcom/glympse/android/lib/ea;->nF:Z
if-nez v2, :cond_c
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d
:cond_c
:goto_c
return v0
:cond_d
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->filenameEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v3, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v3
if-eqz v3, :cond_c
iget-object v4, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
invoke-interface {v4, v2}, Lcom/glympse/android/hal/GDirectory;->readBinary(Ljava/lang/String;)[B
move-result-object v2
if-nez v2, :cond_24
iput-boolean v1, p0, Lcom/glympse/android/lib/ea;->nF:Z
goto :goto_c
:cond_24
array-length v0, v2
invoke-interface {p2, v2, v0, v1}, Lcom/glympse/android/hal/GDrawablePrivate;->setBuffer([BIZ)V
invoke-interface {p2, v1}, Lcom/glympse/android/hal/GDrawablePrivate;->decompress(Z)Z
const-string v0, "la"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v4
invoke-interface {v3, v0, v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->remove(Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
move v0, v1
goto :goto_c
.end method
.method public getJobQueue()Lcom/glympse/android/lib/GJobQueue;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
return-object v0
.end method
.method public getMemoryCache()Lcom/glympse/android/lib/GMemoryCache;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nE:Lcom/glympse/android/lib/GMemoryCache;
return-object v0
.end method
.method public onLowMemory()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
if-eqz v0, :cond_14
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
new-instance v2, Lcom/glympse/android/lib/ed;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ea;
invoke-direct {v2, p0, v0}, Lcom/glympse/android/lib/ed;-><init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
:cond_14
return-void
.end method
.method public saveToCache(Ljava/lang/String;Lcom/glympse/android/hal/GDrawablePrivate;)V
.registers 8
iget-boolean v0, p0, Lcom/glympse/android/lib/ea;->nF:Z
if-nez v0, :cond_a
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B
move-result-object v0
if-nez v0, :cond_1d
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->compress()Z
move-result v0
if-eqz v0, :cond_a
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B
move-result-object v0
if-eqz v0, :cond_a
:cond_1d
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->filenameEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v1
if-nez v1, :cond_a
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nG:Lcom/glympse/android/hal/GDirectory;
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B
move-result-object v2
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->getLength()I
move-result v3
invoke-interface {v1, v0, v2, v3}, Lcom/glympse/android/hal/GDirectory;->writeBinary(Ljava/lang/String;[BI)Z
move-result v1
invoke-interface {p2}, Lcom/glympse/android/hal/GDrawablePrivate;->clearBuffer()V
if-eqz v1, :cond_74
new-instance v1, Lcom/glympse/android/lib/Primitive;
const/4 v2, 0x2
invoke-direct {v1, v2}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
const-string v2, "la"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v3
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V
const-string v2, "url"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "fn"
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
if-eqz v2, :cond_6a
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nK:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2, v1}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
:cond_6a
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
if-eqz v2, :cond_a
iget-object v2, p0, Lcom/glympse/android/lib/ea;->nL:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v2, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
goto :goto_a
:cond_74
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/ea;->nF:Z
goto :goto_a
.end method
.method public setActive(Z)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/GJobQueue;->setActive(Z)V
if-nez p1, :cond_17
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
new-instance v2, Lcom/glympse/android/lib/ee;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ea;
invoke-direct {v2, p0, v0}, Lcom/glympse/android/lib/ee;-><init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
:cond_17
return-void
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 5
iput-object p1, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ea;->iC:Lcom/glympse/android/hal/GContextHolder;
iget-object v0, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;
move-result-object v0
const-string v1, "image_cache_index_v2"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/glympse/android/lib/hw;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/ea;->nI:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/fv;
const/16 v1, 0x50
const/16 v2, 0x78
invoke-direct {v0, v1, v2}, Lcom/glympse/android/lib/fv;-><init>(II)V
iput-object v0, p0, Lcom/glympse/android/lib/ea;->nE:Lcom/glympse/android/lib/GMemoryCache;
new-instance v0, Lcom/glympse/android/lib/kd;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/kd;-><init>(Lcom/glympse/android/core/GHandler;)V
iget-object v1, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContentResolver()Lcom/glympse/android/lib/GContentResolver;
move-result-object v1
invoke-interface {v1, v0}, Lcom/glympse/android/lib/GContentResolver;->registerProvider(Lcom/glympse/android/lib/GContentProvider;)V
new-instance v0, Lcom/glympse/android/lib/fc;
iget-object v1, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z
iget-object v1, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
new-instance v2, Lcom/glympse/android/lib/ec;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/ea;
invoke-direct {v2, p0, v0}, Lcom/glympse/android/lib/ec;-><init>(Lcom/glympse/android/lib/ea;Lcom/glympse/android/lib/ea;)V
invoke-interface {v1, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
return-void
.end method
.method public stop()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V
iput-object v2, p0, Lcom/glympse/android/lib/ea;->nD:Lcom/glympse/android/lib/GJobQueue;
invoke-virtual {p0}, Lcom/glympse/android/lib/ea;->bY()V
iget-object v0, p0, Lcom/glympse/android/lib/ea;->nE:Lcom/glympse/android/lib/GMemoryCache;
invoke-interface {v0}, Lcom/glympse/android/lib/GMemoryCache;->onLowMemory()V
iput-object v2, p0, Lcom/glympse/android/lib/ea;->nE:Lcom/glympse/android/lib/GMemoryCache;
iput-object v2, p0, Lcom/glympse/android/lib/ea;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iput-object v2, p0, Lcom/glympse/android/lib/ea;->iC:Lcom/glympse/android/hal/GContextHolder;
return-void
.end method