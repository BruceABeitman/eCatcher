.class public final Lcom/instagram/android/maps/d/a;
.super Lcom/instagram/base/a/c;
.source "GeoGridFragment.java"

# interfaces
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/feed/a/b/v;
.implements Lcom/instagram/base/a/e;


# static fields
.field private static ac:Ljava/lang/Integer;

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected aa:Lcom/instagram/android/maps/a/a;

.field ab:Landroid/os/Handler;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final ae:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/instagram/android/maps/e/d;

.field private ag:Lcom/instagram/android/maps/e/d;

.field private ah:Z

.field private ai:Landroid/content/BroadcastReceiver;

.field private final aj:Lcom/instagram/common/h/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/h/d",
            "<",
            "Lcom/instagram/feed/d/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    new-instance v0, Lcom/instagram/android/maps/d/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/b;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    new-instance v0, Lcom/instagram/android/maps/d/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/d;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/maps/d/e;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/d/e;-><init>(Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/h/d;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ab:Landroid/os/Handler;

    return-void
.end method

.method private U()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Z)V

    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->c(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    goto :goto_19
.end method

.method private declared-synchronized W()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_PHOTOMAPS_BACK_PRESSED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private X()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    if-nez v0, :cond_2a

    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->e()Z

    :cond_28
    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    :cond_2a
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/facebook/av;->layout_geogrid_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/facebook/av;->layout_geogrid_button_select_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_53

    move v0, v2

    :goto_33
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    sget v0, Lcom/facebook/av;->layout_geogrid_button_unselect_all:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v3

    iget-object v4, p0, Lcom/instagram/android/maps/d/a;->ad:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/instagram/android/maps/e/a;->d(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_55

    :goto_4c
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_50
    const/16 v0, 0x8

    goto :goto_13

    :cond_53
    move v0, v1

    goto :goto_33

    :cond_55
    move v2, v1

    goto :goto_4c
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->W()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/android/maps/d/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/support/v4/app/s;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/b;",
            ">;",
            "Landroid/support/v4/app/s;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    sget-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    sget-object v1, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    sget-object v2, Lcom/instagram/android/maps/d/a;->ac:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/instagram/base/a/a/a;

    invoke-direct {v1, p1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    new-instance v2, Lcom/instagram/android/maps/d/a;

    invoke-direct {v2}, Lcom/instagram/android/maps/d/a;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/d/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->U()V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/maps/d/a;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/maps/d/a;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    return v0
.end method

.method static synthetic e(Lcom/instagram/android/maps/d/a;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final E()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    :cond_36
    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->W()V

    invoke-super {p0}, Lcom/instagram/base/a/c;->E()V

    return-void
.end method

.method public final F()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/activity/MainTabActivity;

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(I)V

    :cond_35
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ai:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/instagram/base/a/c;->F()V

    return-void
.end method

.method public final G()V
    .registers 4

    sget-object v0, Lcom/instagram/android/maps/d/a;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.instagram.android.fragment.ARGUMENT_GEO_MEDIA_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v1, Lcom/instagram/feed/d/q;

    iget-object v2, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/h/b;->b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-super {p0}, Lcom/instagram/base/a/c;->G()V

    return-void
.end method

.method public final V()V
    .registers 1

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->ab:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/d/f;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/f;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    sget v0, Lcom/facebook/aw;->layout_geogrid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_geogrid_button_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/d/g;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/g;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/facebook/av;->layout_geogrid_button_unselect_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/d/h;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/d/h;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/maps/d/a;->a(Landroid/view/View;)V

    new-instance v1, Lcom/instagram/android/maps/d/i;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/maps/d/i;-><init>(Lcom/instagram/android/maps/d/a;Landroid/view/View;)V

    iput-object v1, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v1, v2}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    goto :goto_13
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/instagram/common/h/g;->a()Lcom/instagram/common/h/b;

    move-result-object v0

    const-class v2, Lcom/instagram/feed/d/q;

    iget-object v3, p0, Lcom/instagram/android/maps/d/a;->aj:Lcom/instagram/common/h/d;

    invoke-virtual {v0, v2, v3}, Lcom/instagram/common/h/b;->a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/h/b;

    iget-object v3, p0, Lcom/instagram/android/maps/d/a;->ae:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/a/a;->a(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/maps/d/a;->a(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    :goto_41
    iput-boolean v0, p0, Lcom/instagram/android/maps/d/a;->ah:Z

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->af:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->a(Lcom/instagram/android/maps/e/d;)V

    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->o()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/ax;->x_photos:I

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/instagram/android/maps/d/a;->X()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v2

    if-eqz v2, :cond_68

    move v2, v0

    :goto_49
    if-eqz v2, :cond_6c

    new-instance v2, Lcom/instagram/android/maps/c/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->l()Landroid/support/v4/app/k;

    move-result-object v4

    sget v5, Lcom/instagram/android/maps/e/f;->a:I

    invoke-direct {v2, v4, v5}, Lcom/instagram/android/maps/c/a;-><init>(Landroid/support/v4/app/k;I)V

    invoke-interface {p1, v3, v2}, Lcom/instagram/a/a;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;

    move-result-object v2

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/maps/e/a;->g()I

    move-result v3

    if-lez v3, :cond_6a

    :goto_64
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_67
    :goto_67
    return-void

    :cond_68
    move v2, v1

    goto :goto_49

    :cond_6a
    move v0, v1

    goto :goto_64

    :cond_6c
    invoke-interface {p1, v3}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/instagram/a/j;->b:Lcom/instagram/a/j;

    new-instance v1, Lcom/instagram/android/maps/d/j;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/j;-><init>(Lcom/instagram/android/maps/d/a;)V

    invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_67
.end method

.method public final a(Lcom/instagram/feed/d/z;I)V
    .registers 6

    invoke-static {}, Lcom/instagram/n/f/f;->a()Lcom/instagram/n/f/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->p()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/z;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/instagram/n/f/e;->c(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/instagram/feed/d/z;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "video_thumbnail"

    :goto_18
    invoke-virtual {v1, v0}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    return-void

    :cond_20
    const-string v0, "photo_thumbnail"

    goto :goto_18
.end method

.method protected final d()Lcom/instagram/android/maps/a/a;
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    if-nez v0, :cond_f

    new-instance v0, Lcom/instagram/android/maps/a/a;

    invoke-virtual {p0}, Lcom/instagram/android/maps/d/a;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/instagram/android/maps/a/a;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/d/a;)V

    iput-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    :cond_f
    iget-object v0, p0, Lcom/instagram/android/maps/d/a;->aa:Lcom/instagram/android/maps/a/a;

    return-object v0
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "feed_geomedia"

    return-object v0
.end method

.method public final l_()V
    .registers 3

    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/maps/d/a;->ag:Lcom/instagram/android/maps/e/d;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/e/a;->b(Lcom/instagram/android/maps/e/d;)V

    invoke-super {p0}, Lcom/instagram/base/a/c;->l_()V

    return-void
.end method
