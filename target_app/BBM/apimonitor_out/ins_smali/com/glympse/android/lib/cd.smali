.class  Lcom/glympse/android/lib/cd;
.super Ljava/lang/Object;
.source "GlympseLite.java"
.implements Lcom/glympse/android/api/GEventListener;
.field final synthetic lO:Lcom/glympse/android/lib/cb;
.method private constructor <init>(Lcom/glympse/android/lib/cb;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/lib/cd;->lO:Lcom/glympse/android/lib/cb;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/cb;Lcom/glympse/android/lib/cb$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/lib/cd;-><init>(Lcom/glympse/android/lib/cb;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
move-object v0, p1
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v0
if-nez v0, :cond_a
:pswitch_9
:goto_9
:cond_9
return-void
:cond_a
and-int/lit8 v0, p3, 0x1
if-eqz v0, :cond_9
check-cast p4, Lcom/glympse/android/api/GImage;
invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getState()I
move-result v0
packed-switch v0, :pswitch_data_3a
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_9
:pswitch_21
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-interface {p4, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_9
:pswitch_data_3a
.packed-switch 0x1
:pswitch_9
:pswitch_21
.end packed-switch
.end method