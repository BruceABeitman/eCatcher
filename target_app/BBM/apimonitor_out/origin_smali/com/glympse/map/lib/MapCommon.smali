.class public Lcom/glympse/map/lib/MapCommon;
.super Ljava/lang/Object;
.source "MapCommon.java"


# static fields
.field private static final MinZoomLevel:F = 14.0f


# instance fields
.field private final _context:Landroid/content/Context;

.field private final _map:Lcom/bbm/compat/maps/c;

.field private final mColors:Lcom/bbm/ui/activities/xo;


# direct methods
.method public constructor <init>(Lcom/bbm/compat/maps/c;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/ui/activities/xo;

    invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V

    iput-object v0, p0, Lcom/glympse/map/lib/MapCommon;->mColors:Lcom/bbm/ui/activities/xo;

    iput-object p1, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    iput-object p2, p0, Lcom/glympse/map/lib/MapCommon;->_context:Landroid/content/Context;

    return-void
.end method

.method private drawMarker(Lcom/glympse/android/core/GList;Ljava/lang/String;ILcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/core/GList",
            "<",
            "Lcom/glympse/android/core/GLocation;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/glympse/android/api/GTicket;",
            "Lcom/glympse/android/api/GUser;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bbm/compat/maps/c;->a(Lcom/glympse/android/core/GList;Ljava/lang/String;ILcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;)V

    return-void
.end method

.method private drawTrail(Lcom/glympse/android/api/GTrack;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0, p1, p2}, Lcom/bbm/compat/maps/c;->a(Lcom/glympse/android/api/GTrack;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public centerOnAllMarkers(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0, p1}, Lcom/bbm/compat/maps/c;->a(Z)V

    return-void
.end method

.method public centerOnTicketCode(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0, p1}, Lcom/bbm/compat/maps/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public centerOnUser(Lcom/glympse/android/api/GUser;Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0, p1, p2}, Lcom/bbm/compat/maps/c;->a(Lcom/glympse/android/api/GUser;Z)V

    return-void
.end method

.method public clearTrails()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0}, Lcom/bbm/compat/maps/c;->a()V

    return-void
.end method

.method public draw(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;ILjava/util/List;Lcom/bbm/d/es;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/api/GTicket;",
            "Lcom/glympse/android/api/GUser;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/ko;",
            ">;",
            "Lcom/bbm/d/es;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GTrack;->getLocations()Lcom/glympse/android/core/GList;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/core/GList;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v4, p0, Lcom/glympse/map/lib/MapCommon;->mColors:Lcom/bbm/ui/activities/xo;

    invoke-interface {p2}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/bbm/ui/activities/xo;->a()Lcom/bbm/ui/activities/xp;

    move-result-object v0

    iget v3, v0, Lcom/bbm/ui/activities/xp;->f:I

    :goto_1d
    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/glympse/map/lib/MapCommon;->drawMarker(Lcom/glympse/android/core/GList;Ljava/lang/String;ILcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;)V

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/glympse/android/api/GTicket;->getTrack()Lcom/glympse/android/api/GTrack;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/glympse/map/lib/MapCommon;->drawTrail(Lcom/glympse/android/api/GTrack;Ljava/lang/String;)V

    goto :goto_e

    :cond_33
    iget-boolean v0, p5, Lcom/bbm/d/es;->k:Z

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/bbm/ui/activities/xo;->b()Lcom/bbm/ui/activities/xp;

    move-result-object v0

    iget v3, v0, Lcom/bbm/ui/activities/xp;->f:I

    goto :goto_1d

    :cond_3e
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ko;

    iget-object v6, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v7

    iget-object v7, v7, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v7}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;

    move-result-object v6

    if-ne p2, v6, :cond_72

    iget-object v0, v0, Lcom/bbm/ui/activities/ko;->a:Ljava/lang/String;

    :goto_64
    move-object v2, v0

    goto :goto_44

    :cond_66
    if-eqz v2, :cond_70

    invoke-virtual {v4, v2}, Lcom/bbm/ui/activities/xo;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/xp;

    move-result-object v0

    iget v0, v0, Lcom/bbm/ui/activities/xp;->f:I

    :goto_6e
    move v3, v0

    goto :goto_1d

    :cond_70
    move v0, v3

    goto :goto_6e

    :cond_72
    move-object v0, v2

    goto :goto_64
.end method

.method public startFollowing(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0, p1}, Lcom/bbm/compat/maps/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public stopFollowing()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/map/lib/MapCommon;->_map:Lcom/bbm/compat/maps/c;

    invoke-interface {v0}, Lcom/bbm/compat/maps/c;->b()V

    return-void
.end method
