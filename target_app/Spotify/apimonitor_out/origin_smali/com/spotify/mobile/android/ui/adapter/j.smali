.class public final Lcom/spotify/mobile/android/ui/adapter/j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

.field private c:Lcom/spotify/mobile/android/util/SpotifyLink;

.field private d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->a:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/NavigationItemView;->a()V

    invoke-virtual {p1, p2}, Lcom/spotify/android/paste/widget/NavigationItemView;->setId(I)V

    invoke-virtual {p1, p4}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p1, p5}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v1, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->a:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    if-ne p3, v0, :cond_36

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->f:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    if-ne p3, v0, :cond_35

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/j;->b()Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;->a(I)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/adapter/j;->b()Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/adapter/j$1;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/ui/adapter/j$1;-><init>(Lcom/spotify/mobile/android/ui/adapter/j;Lcom/spotify/android/paste/widget/NavigationItemView;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/client/c;)V

    :cond_35
    return-void

    :cond_36
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private b()Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :pswitch_11
    const-string v0, "spotify:search"

    goto :goto_10

    :pswitch_14
    const-string v0, "spotify:app:browse"

    goto :goto_10

    :pswitch_17
    const-string v0, "spotify:internal:discover"

    goto :goto_10

    :pswitch_1a
    const-string v0, "spotify:internal:social-feed"

    goto :goto_10

    :pswitch_1d
    const-string v0, "spotify:internal:startpage"

    goto :goto_10

    :pswitch_20
    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a:Ljava/lang/String;

    goto :goto_10

    :pswitch_23
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->c:Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :pswitch_2a
    const-string v0, "spotify:internal:inbox"

    goto :goto_10

    :pswitch_2d
    const-string v0, "spotify:internal:radio"

    goto :goto_10

    :pswitch_30
    const-string v0, "spotify:internal:preferences"

    goto :goto_10

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1d
        :pswitch_2d
        :pswitch_20
        :pswitch_2a
        :pswitch_23
        :pswitch_30
        :pswitch_1a
    .end packed-switch
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/a;->a()V

    :cond_9
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/j;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/SpotifyLink;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->c:Lcom/spotify/mobile/android/util/SpotifyLink;

    return-void
.end method

.method public final b(I)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :pswitch_11
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->B:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_14
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_17
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_1a
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->i:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_1d
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->f:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_20
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aG:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_23
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->D:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->c:Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    goto :goto_10

    :pswitch_30
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_33
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    :pswitch_36
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->p:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    goto :goto_10

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1d
        :pswitch_33
        :pswitch_20
        :pswitch_30
        :pswitch_23
        :pswitch_36
        :pswitch_1a
    .end packed-switch
.end method

.method public final getCount()I
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-nez v2, :cond_29

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Z:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-nez v2, :cond_29

    move v0, v1

    :cond_29
    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->e:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-nez v1, :cond_54

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->a:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    :goto_54
    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->M:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_8f
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    instance-of v0, p2, Lcom/spotify/android/paste/widget/NavigationItemView;

    if-eqz v0, :cond_a

    check-cast p2, Lcom/spotify/android/paste/widget/NavigationItemView;

    move-object v1, p2

    :cond_a
    if-nez v1, :cond_13

    new-instance v1, Lcom/spotify/android/paste/widget/NavigationItemView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/spotify/android/paste/widget/NavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_13
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_fa

    :goto_22
    return-object v1

    :pswitch_23
    const v2, 0x7f0a01c4

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->b:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->al:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f0321

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_38
    const v2, 0x7f0a01bd

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->c:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->j:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f00ed

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_4d
    const v2, 0x7f0a01c0

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->d:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aT:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f01f0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_62
    const v2, 0x7f0a01bc

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->f:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->F:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f0018

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_77
    const v2, 0x7f0a01c6

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->g:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aT:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f0245

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_8c
    const v2, 0x7f0a01be

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->i:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->x:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f0116

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto :goto_22

    :pswitch_a1
    const v2, 0x7f0a01c2

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->m:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aL:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f030f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto/16 :goto_22

    :pswitch_b7
    const v2, 0x7f0a01c1

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->k:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->J:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f024b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto/16 :goto_22

    :pswitch_cd
    const v2, 0x7f0a01c3

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->h:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f031a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto/16 :goto_22

    :pswitch_e3
    const v2, 0x7f0a01bf

    sget-object v3, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->n:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->H:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/j;->a:Landroid/content/Context;

    const v5, 0x7f0f036e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/adapter/j;->a(Lcom/spotify/android/paste/widget/NavigationItemView;ILcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;Ljava/lang/String;)V

    goto/16 :goto_22

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_23
        :pswitch_38
        :pswitch_4d
        :pswitch_77
        :pswitch_cd
        :pswitch_8c
        :pswitch_b7
        :pswitch_a1
        :pswitch_e3
        :pswitch_62
    .end packed-switch
.end method

.method public final notifyDataSetChanged()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_b
    const-string v1, "notifyDataSetChanged must be called from main thread"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method
