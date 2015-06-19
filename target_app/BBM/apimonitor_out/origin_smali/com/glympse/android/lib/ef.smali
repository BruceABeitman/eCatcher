.class Lcom/glympse/android/lib/ef;
.super Ljava/lang/Object;
.source "InitialProfile.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field public eL:Lcom/glympse/android/core/GDrawable;

.field public nP:Ljava/lang/String;

.field public nQ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/core/GDrawable;)V
    .registers 5

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/api/GImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-interface {v0, p2}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    :cond_15
    return-void
.end method

.method public static a(Lcom/glympse/android/api/GGlympse;)Z
    .registers 3

    invoke-interface {p0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GImage;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private b(Lcom/glympse/android/api/GGlympse;)V
    .registers 6

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nP:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUser;->setNickname(Ljava/lang/String;)Z

    :cond_20
    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/api/GImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->eL:Lcom/glympse/android/core/GDrawable;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->eL:Lcom/glympse/android/core/GDrawable;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nQ:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nQ:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glympse/android/api/GlympseFactory;->createImage(Lcom/glympse/android/core/GDrawable;)Lcom/glympse/android/api/GImage;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImagePrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GImagePrivate;->setSupportedCache(I)V

    check-cast p1, Lcom/glympse/android/lib/GGlympsePartner;

    invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePartner;->getImageCache()Lcom/glympse/android/lib/GImageCache;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->attachCache(Lcom/glympse/android/lib/GImageCache;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nQ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventListener;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    invoke-interface {v0}, Lcom/glympse/android/lib/GImagePrivate;->load()Z

    goto :goto_33

    :cond_6b
    iget-object v1, p0, Lcom/glympse/android/lib/ef;->nQ:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/ef;->eL:Lcom/glympse/android/core/GDrawable;

    iget-object v1, p0, Lcom/glympse/android/lib/ef;->eL:Lcom/glympse/android/core/GDrawable;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z

    goto :goto_33
.end method


# virtual methods
.method public a(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/glympse/android/lib/ef;->a(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/glympse/android/api/GGlympse;Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GDrawable;)Z
    .registers 6

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->isStarted()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iput-object p2, p0, Lcom/glympse/android/lib/ef;->nP:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/ef;->nQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/ef;->eL:Lcom/glympse/android/core/GDrawable;

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ef;->b(Lcom/glympse/android/api/GGlympse;)V

    :goto_1d
    const/4 v0, 0x1

    goto :goto_9

    :cond_1f
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_1d
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :cond_7
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1b

    and-int/lit16 v0, p3, 0x80

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/ef;->b(Lcom/glympse/android/api/GGlympse;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_6

    :cond_1b
    const/4 v0, 0x7

    if-ne v0, p2, :cond_6

    check-cast p4, Lcom/glympse/android/api/GImage;

    invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p4, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_6

    :pswitch_31
    invoke-interface {p4}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/ef;->a(Lcom/glympse/android/api/GGlympse;Lcom/glympse/android/core/GDrawable;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p4, v0}, Lcom/glympse/android/api/GImage;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_6

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_6
        :pswitch_31
    .end packed-switch
.end method
