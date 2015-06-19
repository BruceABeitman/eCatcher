.class public final Lcom/bbm/o;
.super Ljava/lang/Object;
.source "GlympseWrapper.java"


# static fields
.field private static c:Z

.field private static d:Z


# instance fields
.field public a:Lcom/glympse/android/api/GGlympse;

.field public b:Lcom/bbm/util/a/a;

.field private final e:Ljava/lang/String;

.field private f:Landroid/content/SharedPreferences;

.field private final g:Lcom/bbm/j/k;

.field private final h:Lcom/glympse/android/api/GEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bbm/o;->c:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/o;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    iput-object v0, p0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    const-string v0, "glympse_conversation_helper"

    iput-object v0, p0, Lcom/bbm/o;->e:Ljava/lang/String;

    new-instance v0, Lcom/bbm/p;

    invoke-direct {v0, p0}, Lcom/bbm/p;-><init>(Lcom/bbm/o;)V

    iput-object v0, p0, Lcom/bbm/o;->g:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/q;

    invoke-direct {v0, p0}, Lcom/bbm/q;-><init>(Lcom/bbm/o;)V

    iput-object v0, p0, Lcom/bbm/o;->h:Lcom/glympse/android/api/GEventListener;

    return-void
.end method

.method public static a()Lcom/bbm/o;
    .registers 1

    sget-object v0, Lcom/bbm/r;->a:Lcom/bbm/o;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/o;)Lcom/glympse/android/api/GGlympse;
    .registers 2

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/o;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/bbm/o;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static b()V
    .registers 3

    sget-object v0, Lcom/bbm/r;->a:Lcom/bbm/o;

    iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUserManager;->stopTrackingAll(Z)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/bbm/r;->a:Lcom/bbm/o;

    iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getUsers()Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->stopWatching()Z

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GImage;->unload()Z

    goto :goto_35

    :cond_4f
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/bbm/compat/maps/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p0}, Lcom/glympse/android/hal/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1f

    sput-boolean v0, Lcom/bbm/o;->c:Z

    :goto_16
    sget-boolean v2, Lcom/bbm/o;->c:Z

    if-eqz v2, :cond_2b

    sget-boolean v2, Lcom/bbm/o;->d:Z

    if-nez v2, :cond_2b

    :goto_1e
    return v0

    :cond_1f
    invoke-static {}, Lcom/bbm/compat/maps/a;->b()Z

    move-result v2

    if-eqz v2, :cond_28

    sput-boolean v0, Lcom/bbm/o;->c:Z

    goto :goto_16

    :cond_28
    sput-boolean v1, Lcom/bbm/o;->c:Z

    goto :goto_16

    :cond_2b
    move v0, v1

    goto :goto_1e
.end method

.method static synthetic c(Lcom/bbm/o;)Lcom/glympse/android/api/GEventListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/o;->h:Lcom/glympse/android/api/GEventListener;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/glympse/android/api/GEventSink;
    .registers 4

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/glympse/android/api/GGlympse;->decodeInvite(Ljava/lang/String;I)Lcom/glympse/android/api/GEventSink;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    if-nez v0, :cond_6f

    sget-boolean v0, Lcom/bbm/o;->d:Z

    if-nez v0, :cond_6f

    :try_start_a
    const-string v0, "api.glympse.com"

    const-string v1, "VxftKhKcZRDUH4Rk"

    invoke-static {p1, v0, v1}, Lcom/glympse/android/api/GlympseFactory;->createGlympse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GGlympse;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->start()V

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->setExpirationMode(I)V

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->enableCancellationTimer(Z)V

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->setCancellationTimeout(I)V

    new-instance v0, Lcom/bbm/util/a/a;

    const-string v1, "glympse_conversation_helper"

    invoke-direct {v0, p1, v1}, Lcom/bbm/util/a/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    iget-object v0, p0, Lcom/bbm/o;->b:Lcom/bbm/util/a/a;

    iget-object v1, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    iget-object v2, v0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;

    if-nez v2, :cond_54

    if-nez v1, :cond_70

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GUserManager;->setUserTrackingMode(I)V

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->setActive(Z)I

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/o;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/bbm/o;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    iput-object v1, v0, Lcom/bbm/util/a/a;->a:Lcom/glympse/android/api/GGlympse;
    :try_end_72
    .catch Lcom/glympse/android/hal/GlympseException; {:try_start_a .. :try_end_72} :catch_73
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_a .. :try_end_72} :catch_79

    goto :goto_54

    :catch_73
    move-exception v0

    iput-object v4, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    sput-boolean v3, Lcom/bbm/o;->d:Z

    goto :goto_6f

    :catch_79
    move-exception v0

    iput-object v4, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    goto :goto_6f
.end method

.method public final a(Lcom/glympse/android/api/GEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GGlympse;->setActive(Z)I

    :cond_9
    return-void
.end method

.method public final b(Lcom/glympse/android/api/GEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;

    invoke-interface {v0, p1}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method
