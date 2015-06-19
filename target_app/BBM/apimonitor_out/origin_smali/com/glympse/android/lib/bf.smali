.class Lcom/glympse/android/lib/bf;
.super Ljava/lang/Object;
.source "DirectionsProvider.java"

# interfaces
.implements Lcom/glympse/android/lib/br;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gD:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/glympse/android/lib/GTicketPrivate;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private jS:Lcom/glympse/android/core/GLatLng;

.field private kj:Z

.field private kk:Lcom/glympse/android/core/GLocation;

.field private kl:J

.field private km:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/glympse/android/core/GLatLng;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/bf;->jS:Lcom/glympse/android/core/GLatLng;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/bf;->kj:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/bf;->kl:J

    return-void
.end method

.method static synthetic a(Lcom/glympse/android/lib/bf;)V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->aU()V

    return-void
.end method

.method private aT()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private aU()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/bf;->b(Z)V

    return-void
.end method

.method private ak()V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->aT()V

    new-instance v1, Lcom/glympse/android/lib/bg;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/bf;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/bg;-><init>(Lcom/glympse/android/lib/bf;)V

    iput-object v1, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/bf;->km:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b(Z)V
    .registers 10

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/glympse/android/lib/bf;->kj:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->aT()V

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GLocationManager;->getLocation()Lcom/glympse/android/core/GLocation;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->ak()V

    goto :goto_8

    :cond_1c
    if-nez p1, :cond_3c

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->kk:Lcom/glympse/android/core/GLocation;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->kk:Lcom/glympse/android/core/GLocation;

    invoke-interface {v3, v0}, Lcom/glympse/android/core/GLocation;->distanceTo(Lcom/glympse/android/core/GLatLng;)F

    move-result v0

    const/high16 v1, 0x4316

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3c

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/glympse/android/lib/bf;->kl:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/bf;->a(JJLcom/glympse/android/api/GTrack;)V

    goto :goto_8

    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/bf;->kj:Z

    iput-object v3, p0, Lcom/glympse/android/lib/bf;->kk:Lcom/glympse/android/core/GLocation;

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v7

    new-instance v0, Lcom/glympse/android/lib/bb;

    iget-object v1, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v1

    iget-object v4, p0, Lcom/glympse/android/lib/bf;->jS:Lcom/glympse/android/core/GLatLng;

    iget-object v5, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v5}, Lcom/glympse/android/lib/GGlympsePrivate;->getDirectionsManager()Lcom/glympse/android/api/GDirectionsManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/glympse/android/api/GDirectionsManager;->getTravelMode()I

    move-result v5

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/glympse/android/lib/bq;

    invoke-direct/range {v0 .. v6}, Lcom/glympse/android/lib/bb;-><init>(JLcom/glympse/android/core/GLatLng;Lcom/glympse/android/core/GLatLng;ILcom/glympse/android/lib/bq;)V

    invoke-interface {v7, v0}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_8
.end method


# virtual methods
.method public a(JJLcom/glympse/android/api/GTrack;)V
    .registers 15

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/bf;->kj:Z

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3d

    cmp-long v0, p3, v2

    if-eqz v0, :cond_3d

    iput-wide p3, p0, Lcom/glympse/android/lib/bf;->kl:J

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    :cond_1b
    :goto_1b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object v7, p5

    :goto_34
    move-wide v2, p1

    move-wide v4, p3

    move v6, v1

    invoke-interface/range {v0 .. v7}, Lcom/glympse/android/lib/GTicketPrivate;->updateEta(IJJILcom/glympse/android/api/GTrack;)V

    goto :goto_1b

    :cond_3b
    const/4 v7, 0x0

    goto :goto_34

    :cond_3d
    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->ak()V

    goto :goto_7
.end method

.method public aQ()Lcom/glympse/android/core/GLatLng;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->jS:Lcom/glympse/android/core/GLatLng;

    return-object v0
.end method

.method public aR()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public aS()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/bf;->b(Z)V

    return-void
.end method

.method public addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/bf;->b(Z)V

    return-void
.end method

.method public removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->gD:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->aT()V

    :cond_10
    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-object p1, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/glympse/android/lib/bf;->aT()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/bf;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    goto :goto_4
.end method
