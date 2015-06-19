.class public Lcom/bbm/ui/activities/GlympseViewerActivity;
.super Landroid/support/v4/app/h;
.source "GlympseViewerActivity.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field private a:Lcom/bbm/ui/GlympseUserSelector;

.field private b:Lcom/bbm/util/a/a;

.field private c:Lcom/glympse/android/api/GUser;

.field private d:Lcom/glympse/map/lib/Map;

.field private e:Lcom/bbm/ui/FooterActionBar;

.field private f:Ljava/lang/String;

.field private g:Lcom/bbm/d/es;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/ko;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/bbm/d/a;

.field private final m:Lcom/bbm/ui/co;

.field private n:Lcom/bbm/ui/cj;

.field private final o:Lcom/bbm/f/ac;

.field private p:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->i:Z

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->j:Z

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->l:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/kk;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/kk;-><init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->m:Lcom/bbm/ui/co;

    new-instance v0, Lcom/bbm/ui/activities/kl;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/kl;-><init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->n:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/km;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/km;-><init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->o:Lcom/bbm/f/ac;

    new-instance v0, Lcom/bbm/ui/activities/kn;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/kn;-><init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->p:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GlympseViewerActivity;Lcom/bbm/d/es;)Lcom/bbm/d/es;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->g:Lcom/bbm/d/es;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/glympse/map/lib/Map;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GlympseViewerActivity;Lorg/json/JSONArray;)V
    .registers 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->k:Ljava/util/List;

    move v1, v2

    :goto_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_78

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "senderUri"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v4, v0}, Lcom/glympse/android/api/GGlympse;->extractInviteCodes(Ljava/lang/String;)Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->k:Ljava/util/List;

    new-instance v5, Lcom/bbm/ui/activities/ko;

    invoke-direct {v5, p0, v3, v0}, Lcom/bbm/ui/activities/ko;-><init>(Lcom/bbm/ui/activities/GlympseViewerActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bbm/o;->a(Ljava/lang/String;)Lcom/glympse/android/api/GEventSink;

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v3}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v0

    :goto_5c
    if-eqz v0, :cond_65

    invoke-interface {v3}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/glympse/android/api/GUserManager;->startTracking(Lcom/glympse/android/api/GUser;)I

    :cond_65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_69
    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v4

    iget-object v4, v4, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v4}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;

    move-result-object v0

    goto :goto_5c

    :cond_78
    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->attachUserMapping(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelector;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->g:Lcom/bbm/d/es;

    invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->attachConversation(Lcom/bbm/d/es;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->g:Lcom/bbm/d/es;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/d/es;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelector;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->l:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GlympseViewerActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/d/es;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->g:Lcom/bbm/d/es;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/f/ac;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->o:Lcom/bbm/f/ac;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GlympseViewerActivity;)Lcom/bbm/ui/GlympseUserSelector;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    return-object v0
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_41

    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    :cond_f
    const/high16 v0, 0x40

    and-int/2addr v0, p3

    if-eqz v0, :cond_48

    check-cast p4, Lcom/glympse/android/api/GUserTicket;

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, p4}, Lcom/glympse/android/api/GGlympse;->viewTicket(Lcom/glympse/android/api/GUserTicket;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    iput-boolean v3, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->j:Z

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v1}, Lcom/glympse/map/lib/Map;->update()V

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->c:Lcom/glympse/android/api/GUser;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    iget-object v2, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->c:Lcom/glympse/android/api/GUser;

    invoke-virtual {v1, v2, v3}, Lcom/glympse/map/lib/Map;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V

    :goto_32
    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v1, v0}, Lcom/glympse/map/lib/Map;->trackTicket(Lcom/glympse/android/api/GTicket;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->update()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-virtual {v0}, Lcom/bbm/ui/GlympseUserSelector;->a()V

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v1, v2}, Lcom/glympse/map/lib/Map;->center(Z)V

    goto :goto_32

    :cond_48
    const v0, 0x8000

    and-int/2addr v0, p3

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->i:Z

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->update()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-virtual {v0}, Lcom/bbm/ui/GlympseUserSelector;->a()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0, v2}, Lcom/glympse/map/lib/Map;->center(Z)V

    :cond_61
    iput-boolean v3, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->i:Z

    goto :goto_41
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_CONV_URI"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "EXTRA_SELECTED_CODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_30
    const-string v3, "No conversation URI specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :goto_38
    return-void

    :cond_39
    move v0, v2

    goto :goto_30

    :cond_3b
    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->setActive(Z)I

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->b:Lcom/bbm/util/a/a;

    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/GlympseUserSelector;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    iput-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->m:Lcom/bbm/ui/co;

    iput-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->b:Lcom/bbm/ui/co;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    const v1, 0x7f0a0187

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/glympse/map/lib/Map;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bbm/compat/maps/c;->setZoomControlsEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0, v2}, Lcom/glympse/map/lib/Map;->setFollowMode(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bbm/compat/maps/c;->setCompassEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->attachGlympse(Lcom/glympse/android/api/GGlympse;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->n:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    iget v1, v0, Lcom/bbm/c/c;->W:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/bbm/c/c;->W:I

    goto/16 :goto_38
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->p:Lcom/bbm/j/k;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->n:Lcom/bbm/ui/cj;

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/o;->a(Z)V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    invoke-static {}, Lcom/bbm/o;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->stopListening()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v1, v0}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    :cond_23
    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/o;->b(Lcom/glympse/android/api/GEventListener;)V

    invoke-super {p0}, Landroid/support/v4/app/h;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/support/v4/app/h;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->p:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bbm/o;->a(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->startListening()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->a:Lcom/bbm/ui/GlympseUserSelector;

    iget-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v1, v0}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    :cond_21
    invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/o;->a(Lcom/glympse/android/api/GEventListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->b:Lcom/bbm/util/a/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->b:Lcom/bbm/util/a/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->b:Lcom/bbm/util/a/a;

    iget-object v2, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/a/a;->c(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0200f8

    const v3, 0x7f0e038c

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :goto_5d
    iget-boolean v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->j:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    invoke-virtual {v0}, Lcom/glympse/map/lib/Map;->update()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->d:Lcom/glympse/map/lib/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/map/lib/Map;->center(Z)V

    :cond_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GlympseViewerActivity;->e:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f02028d

    const v3, 0x7f0e038e

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto :goto_5d
.end method
