.class  Lcom/glympse/android/lib/m;
.super Ljava/lang/Object;
.source "ApiStatus.java"
.implements Lcom/glympse/android/api/GApiStatus;
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private _jobQueue:Lcom/glympse/android/lib/GJobQueue;
.field private hi:Ljava/lang/String;
.field private hj:Lcom/glympse/android/lib/GJob;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/glympse/android/lib/UrlParser;->cleanupBaseUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/m;->hi:Ljava/lang/String;
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createHandler()Lcom/glympse/android/core/GHandler;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/m;->_handler:Lcom/glympse/android/core/GHandler;
return-void
.end method
.method static synthetic a(Lcom/glympse/android/lib/m;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/m;->hi:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/glympse/android/lib/m;ZLcom/glympse/android/api/GApiStatusListener;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/glympse/android/lib/m;->a(ZLcom/glympse/android/api/GApiStatusListener;)V
return-void
.end method
.method private a(ZLcom/glympse/android/api/GApiStatusListener;)V
.registers 6
const/4 v2, 0x0
iput-object v2, p0, Lcom/glympse/android/lib/m;->hj:Lcom/glympse/android/lib/GJob;
iget-object v0, p0, Lcom/glympse/android/lib/m;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
const/4 v1, 0x1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->stop(Z)V
iput-object v2, p0, Lcom/glympse/android/lib/m;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
if-eqz p2, :cond_10
invoke-interface {p2, p1}, Lcom/glympse/android/api/GApiStatusListener;->statusUpdated(Z)V
:cond_10
return-void
.end method
.method public checkStatus(Lcom/glympse/android/api/GApiStatusListener;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/glympse/android/lib/m;->hi:Ljava/lang/String;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/glympse/android/lib/m;->hj:Lcom/glympse/android/lib/GJob;
if-nez v2, :cond_6
iget-object v2, p0, Lcom/glympse/android/lib/m;->hi:Ljava/lang/String;
if-eqz v2, :cond_6
new-instance v0, Lcom/glympse/android/lib/fc;
iget-object v2, p0, Lcom/glympse/android/lib/m;->_handler:Lcom/glympse/android/core/GHandler;
invoke-direct {v0, v2}, Lcom/glympse/android/lib/fc;-><init>(Lcom/glympse/android/core/GHandler;)V
iput-object v0, p0, Lcom/glympse/android/lib/m;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v0, p0, Lcom/glympse/android/lib/m;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->start(I)Z
new-instance v2, Lcom/glympse/android/lib/n;
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/m;
invoke-direct {v2, v0, p1}, Lcom/glympse/android/lib/n;-><init>(Lcom/glympse/android/lib/m;Lcom/glympse/android/api/GApiStatusListener;)V
iput-object v2, p0, Lcom/glympse/android/lib/m;->hj:Lcom/glympse/android/lib/GJob;
iget-object v0, p0, Lcom/glympse/android/lib/m;->_jobQueue:Lcom/glympse/android/lib/GJobQueue;
iget-object v2, p0, Lcom/glympse/android/lib/m;->hj:Lcom/glympse/android/lib/GJob;
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V
move v0, v1
goto :goto_6
.end method