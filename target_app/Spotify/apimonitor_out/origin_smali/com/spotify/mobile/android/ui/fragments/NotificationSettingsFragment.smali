.class public final Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/ef;


# instance fields
.field private Y:Z

.field private Z:Z

.field private a:Lcom/spotify/mobile/android/util/dw;

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Z

.field private ac:Landroid/net/Uri;

.field private ad:Lcom/spotify/android/paste/widget/EmptyView;

.field private final ae:Lcom/loopj/android/http/e;

.field private af:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/mobile/android/util/ec;

.field private c:Lcom/loopj/android/http/b;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/spotify/mobile/android/ui/fragments/h;

.field private final g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ae:Lcom/loopj/android/http/e;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->af:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ag:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Lcom/spotify/mobile/android/ui/fragments/h;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    return-object v0
.end method

.method private a()V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e:Landroid/widget/ListView;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    if-eqz v0, :cond_3f

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_10
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Z:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->i:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Y:Z

    if-nez v0, :cond_41

    :cond_24
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ab:Z

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_29
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->d:Landroid/view/View;

    if-eqz v0, :cond_43

    move v0, v1

    :goto_2e
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ad:Lcom/spotify/android/paste/widget/EmptyView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ad:Lcom/spotify/android/paste/widget/EmptyView;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    if-eqz v3, :cond_45

    :goto_3b
    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V

    :cond_3e
    return-void

    :cond_3f
    move v0, v2

    goto :goto_d

    :cond_41
    move v0, v1

    goto :goto_29

    :cond_43
    move v0, v2

    goto :goto_2e

    :cond_45
    move v2, v1

    goto :goto_3b
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_57

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_36
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/h;->a(Ljava/util/Collection;)V

    :cond_50
    :goto_50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Z:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a()V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_50
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ab:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Ljava/util/LinkedHashMap;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Y:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a()V

    return-void
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->i:Z

    return v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    const v0, 0x7f030071

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v0, 0x7f0a02bd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->d:Landroid/view/View;

    const v0, 0x7f0a028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e:Landroid/widget/ListView;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/h;

    invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/ui/fragments/h;-><init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/fragments/h;->a(Ljava/util/Collection;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$1;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    invoke-direct {v0, p0, v2, v3}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f0f028f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const v5, 0x7f0f028e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/g;->a([Ljava/lang/String;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a02be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/android/paste/widget/EmptyView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ad:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ad:Lcom/spotify/android/paste/widget/EmptyView;

    const v3, 0x7f0f0311

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a()V

    return-object v1
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f0358

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->s()V

    invoke-virtual {p0, v5}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/spotify/mobile/android/service/a/a;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->l:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_72

    new-instance v1, Lcom/loopj/android/http/b;

    invoke-direct {v1}, Lcom/loopj/android/http/b;-><init>()V

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c:Lcom/loopj/android/http/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c:Lcom/loopj/android/http/b;

    invoke-virtual {v1}, Lcom/loopj/android/http/b;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.allow-circular-redirects"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const v1, 0x7f0f0312

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ac:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->e()Landroid/support/v4/app/y;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/spotify/mobile/android/util/ec;->a(Landroid/app/Activity;Landroid/support/v4/app/y;)Lcom/spotify/mobile/android/util/ec;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b:Lcom/spotify/mobile/android/util/ec;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b:Lcom/spotify/mobile/android/util/ec;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ac:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V

    :goto_5a
    if-nez p1, :cond_76

    move-object v2, v3

    :goto_5d
    if-eqz v2, :cond_7e

    array-length v5, v2

    move v1, v0

    :goto_61
    if-ge v1, v5, :cond_7e

    aget-object v0, v2, v1

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->g:Ljava/util/LinkedHashMap;

    iget-object v7, v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_61

    :cond_72
    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a(Ljava/util/Map;)V

    goto :goto_5a

    :cond_76
    const-string v1, "notifications"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    move-object v2, v1

    goto :goto_5d

    :cond_7e
    if-eqz p1, :cond_a0

    const-string v0, "connected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    const-string v0, "key_settings_loaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->i:Z

    const-string v0, "key_session_loaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Y:Z

    const-string v0, "push_notifications_received"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Z:Z

    :cond_a0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a2

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->af:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0178

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ag:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aW:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v4, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a:Lcom/spotify/mobile/android/util/dw;

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;Z)V
    .registers 7

    const/4 v3, 0x0

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    :goto_4
    iput v0, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$5;->a:[I

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->d:Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_62

    const-string v0, "Unsupported notification type"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_1b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    iget v2, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_18

    :pswitch_39
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ac:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    iget v2, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c:Lcom/loopj/android/http/b;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ae:Lcom/loopj/android/http/e;

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/b;->b(Ljava/lang/String;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->aa:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_39
    .end packed-switch
.end method

.method public final a_(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->c:Lcom/loopj/android/http/b;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ae:Lcom/loopj/android/http/e;

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/b;->a(Ljava/lang/String;Lcom/loopj/android/http/s;)Lcom/loopj/android/http/p;

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    const-string v0, "notifications"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/h;->a()[Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment$Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    const-string v0, "connected"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "push_notifications_received"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_settings_loaded"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_session_loaded"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->Y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->e:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->f:Lcom/spotify/mobile/android/ui/fragments/h;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->ad:Lcom/spotify/android/paste/widget/EmptyView;

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->a:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b:Lcom/spotify/mobile/android/util/ec;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b:Lcom/spotify/mobile/android/util/ec;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->b:Lcom/spotify/mobile/android/util/ec;

    :cond_f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/NotificationSettingsFragment;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V

    return-void
.end method
