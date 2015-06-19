.class Lcom/glympse/android/lib/cb;
.super Ljava/lang/Object;
.source "GlympseLite.java"

# interfaces
.implements Lcom/glympse/android/lite/GGlympseLite;


# instance fields
.field private F:Z

.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private lF:Z

.field private lJ:Z

.field private lK:Z

.field private lL:Lcom/glympse/android/api/GEventListener;

.field private lM:Lcom/glympse/android/core/GArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GTicketLite;",
            ">;"
        }
    .end annotation
.end field

.field private lN:Lcom/glympse/android/lib/hs;


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GGlympse;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->lF:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->lJ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->lK:Z

    check-cast p1, Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p1, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    new-instance v0, Lcom/glympse/android/lib/hs;

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/hs;-><init>(Lcom/glympse/android/core/GHandler;)V

    iput-object v0, p0, Lcom/glympse/android/lib/cb;->lN:Lcom/glympse/android/lib/hs;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/lite/GListenerLite;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->lN:Lcom/glympse/android/lib/hs;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/hs;->addListener(Lcom/glympse/android/lite/GListenerLite;)Z

    move-result v0

    return v0
.end method

.method public allowSpeedSharing(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->lJ:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GConfig;->allowSpeedSharing(Z)V

    goto :goto_4
.end method

.method public bn()Z
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/lib/fi;->cm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public bo()V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/lib/fi;->cm()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->save()V

    return-void
.end method

.method public enableIntroScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/cb;->lK:Z

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->lN:Lcom/glympse/android/lib/hs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/glympse/android/lib/hs;->eventsOccurred(Lcom/glympse/android/lite/GGlympseLite;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getApiVersion()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatar()Lcom/glympse/android/core/GDrawable;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GListenerLite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->lN:Lcom/glympse/android/lib/hs;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hs;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getTickets()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/lite/GTicketLite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->lM:Lcom/glympse/android/core/GArray;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAvatarSet()I
    .registers 4

    const/4 v1, 0x2

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/api/GImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    move v0, v1

    goto :goto_a

    :cond_21
    iget-object v2, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method public isHistoryRestored()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isHistoryRestored()Z

    move-result v0

    return v0
.end method

.method public isIntroScreenEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->lK:Z

    return v0
.end method

.method public isSharingSpeed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->lJ:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->isSharingSpeed()Z

    move-result v0

    goto :goto_5
.end method

.method public isSynced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z

    move-result v0

    goto :goto_5
.end method

.method public removeListener(Lcom/glympse/android/lite/GListenerLite;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->lN:Lcom/glympse/android/lib/hs;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/hs;->removeListener(Lcom/glympse/android/lite/GListenerLite;)Z

    move-result v0

    return v0
.end method

.method public sendTicket(Lcom/glympse/android/lite/GTicketLite;I)Z
    .registers 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v2

    :cond_6
    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->lK:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/glympse/android/lib/cb;->bn()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/glympse/android/lib/cb;->bo()V

    const/4 v0, 0x1

    move v1, v0

    :goto_15
    move-object v0, p1

    check-cast v0, Lcom/glympse/android/lib/bv;

    invoke-interface {v0}, Lcom/glympse/android/lib/bv;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    const-wide v3, 0x1000000001001L

    invoke-interface {v0, v3, v4}, Lcom/glympse/android/api/GTicket;->hasContext(J)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v2, Lcom/glympse/android/lib/hi;

    iget-object v3, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, p1, v3, v0}, Lcom/glympse/android/lib/hi;-><init>(Lcom/glympse/android/lite/GTicketLite;Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/api/GTicket;)V

    iget-object v3, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {v3, v0, v1, p2, v2}, Lcom/glympse/android/hal/ControlsFactory;->showSendWizard(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;ZILcom/glympse/android/hal/GUiControlListener;)Z

    move-result v2

    goto :goto_5

    :cond_35
    move v1, v2

    goto :goto_15
.end method

.method public setActive(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->setActive(Z)I

    goto :goto_4
.end method

.method public setAvatar(Lcom/glympse/android/core/GDrawable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    goto :goto_6
.end method

.method public setAvatar(Ljava/lang/String;I)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string v0, "http"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_36

    invoke-static {v2}, Lcom/glympse/android/api/GlympseFactory;->createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/api/GImage;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setSupportedCache(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->attachCache(Lcom/glympse/android/lib/GImageCache;)V

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/glympse/android/lib/cd;

    invoke-direct {v1, p0, v2}, Lcom/glympse/android/lib/cd;-><init>(Lcom/glympse/android/lib/cb;Lcom/glympse/android/lib/cb$1;)V

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->load()Z

    goto :goto_c

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {p1, p2}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    goto :goto_c
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GUser;->setNickname(Ljava/lang/String;)Z

    goto :goto_a
.end method

.method public setRestoreHistory(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, p1}, Lcom/glympse/android/lib/GGlympsePrivate;->setRestoreHistory(Z)V

    return-void
.end method

.method public showAbout()V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GGlympseLite;

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {v0, v1}, Lcom/glympse/android/hal/ControlsFactory;->showAbout(Lcom/glympse/android/lite/GGlympseLite;Lcom/glympse/android/lib/GGlympsePrivate;)Z

    return-void
.end method

.method public start()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->lF:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GContextHolder;->verifyLiteConfiguration(Lcom/glympse/android/api/GGlympse;)V

    new-instance v1, Lcom/glympse/android/lib/dr;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lite/GGlympseLite;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/dr;-><init>(Lcom/glympse/android/lite/GGlympseLite;)V

    iput-object v1, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {}, Lcom/glympse/android/lib/fi;->cl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->setBuildName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->setSmsSendMode(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->start()V

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    iput-object v4, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    goto :goto_6

    :cond_4c
    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/s;

    new-instance v2, Lcom/glympse/android/lib/cc;

    invoke-direct {v2, p0, v4}, Lcom/glympse/android/lib/cc;-><init>(Lcom/glympse/android/lib/cb;Lcom/glympse/android/lib/cb$1;)V

    invoke-direct {v1, v0, v2}, Lcom/glympse/android/lib/s;-><init>(Lcom/glympse/android/core/GArray;Lcom/glympse/android/lib/bp;)V

    iput-object v1, p0, Lcom/glympse/android/lib/cb;->lM:Lcom/glympse/android/core/GArray;

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GImage;->load()Z

    iput-boolean v3, p0, Lcom/glympse/android/lib/cb;->F:Z

    iput-boolean v3, p0, Lcom/glympse/android/lib/cb;->lF:Z

    goto :goto_6
.end method

.method public stop()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->F:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/cb;->lJ:Z

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->stop()V

    iput-object v2, p0, Lcom/glympse/android/lib/cb;->lM:Lcom/glympse/android/core/GArray;

    iget-object v0, p0, Lcom/glympse/android/lib/cb;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    iput-object v2, p0, Lcom/glympse/android/lib/cb;->lL:Lcom/glympse/android/api/GEventListener;

    goto :goto_5
.end method
