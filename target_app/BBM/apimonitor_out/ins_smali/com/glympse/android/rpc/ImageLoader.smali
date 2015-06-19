.class  Lcom/glympse/android/rpc/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.implements Lcom/glympse/android/api/GEventListener;
.field private vo:Lcom/glympse/android/rpc/ImageLoader$GLoadListener;
.method private constructor <init>(Lcom/glympse/android/rpc/ImageLoader$GLoadListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/rpc/ImageLoader;->vo:Lcom/glympse/android/rpc/ImageLoader$GLoadListener;
return-void
.end method
.method public static a(Lcom/glympse/android/api/GImage;Lcom/glympse/android/rpc/ImageLoader$GLoadListener;)V
.registers 4
invoke-interface {p0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
if-eqz v0, :cond_a
invoke-static {p1, p0}, Lcom/glympse/android/rpc/ImageLoader;->a(Lcom/glympse/android/rpc/ImageLoader$GLoadListener;Lcom/glympse/android/api/GImage;)V
:cond_9
:goto_9
return-void
:cond_a
invoke-interface {p0}, Lcom/glympse/android/api/GImage;->getState()I
move-result v0
const/4 v1, 0x3
if-eq v1, v0, :cond_9
new-instance v1, Lcom/glympse/android/rpc/ImageLoader;
invoke-direct {v1, p1}, Lcom/glympse/android/rpc/ImageLoader;-><init>(Lcom/glympse/android/rpc/ImageLoader$GLoadListener;)V
invoke-interface {p0, v1}, Lcom/glympse/android/api/GImage;->addListener(Lcom/glympse/android/api/GEventListener;)Z
const/4 v1, 0x1
if-eq v1, v0, :cond_9
invoke-interface {p0}, Lcom/glympse/android/api/GImage;->load()Z
goto :goto_9
.end method
.method protected static a(Lcom/glympse/android/rpc/ImageLoader$GLoadListener;Lcom/glympse/android/api/GImage;)V
.registers 2
if-eqz p0, :cond_5
invoke-interface {p0, p1}, Lcom/glympse/android/rpc/ImageLoader$GLoadListener;->imageLoaded(Lcom/glympse/android/api/GImage;)V
:cond_5
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
const/4 v0, 0x7
if-ne v0, p2, :cond_10
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_10
check-cast p4, Lcom/glympse/android/api/GImage;
invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getState()I
move-result v0
const/4 v1, 0x1
if-ne v1, v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/glympse/android/rpc/ImageLoader;->vo:Lcom/glympse/android/rpc/ImageLoader$GLoadListener;
invoke-static {v0, p4}, Lcom/glympse/android/rpc/ImageLoader;->a(Lcom/glympse/android/rpc/ImageLoader$GLoadListener;Lcom/glympse/android/api/GImage;)V
:cond_1c
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/rpc/ImageLoader;->vo:Lcom/glympse/android/rpc/ImageLoader$GLoadListener;
goto :goto_10
.end method