.class public final Lcom/spotify/mobile/android/ui/fragments/a/a;
.super Landroid/support/v4/app/x;
.source "SourceFile"


# static fields
.field private static final Y:Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private Z:Landroid/content/Intent;

.field private aa:Ljava/lang/String;

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Lcom/spotify/mobile/android/ui/adapter/s;

.field private ag:Lcom/spotify/android/paste/widget/ListItemView;

.field private ah:Lcom/spotify/android/paste/widget/ListItemView;

.field private ai:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/spotify/android/paste/widget/ListItemView;",
            "Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;",
            ">;>;"
        }
    .end annotation
.end field

.field private aj:Lcom/spotify/mobile/android/util/dw;

.field private ak:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gm$"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "k9$"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outlook"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/a/a;->i:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".*("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|"

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/a/a;->i:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ").*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/a/a$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/a/a$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/a/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ak:Landroid/support/v4/app/z;

    return-void
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a/a;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "include_share_to_spotify"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "twitter_share_text"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "friend_to_friend_email_specific_share_subject"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "friend_to_friend_email_specific_share_text"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/a/a;

    invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/a/a;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const v6, 0x7f09006f

    const v0, 0x7f030086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/s;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Z:Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/adapter/s;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->af:Lcom/spotify/mobile/android/ui/adapter/s;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->af:Lcom/spotify/mobile/android/ui/adapter/s;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Landroid/widget/ListAdapter;)V

    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ab:Z

    if-eqz v1, :cond_e2

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->M:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    const v3, 0x7f0a01e4

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/widget/ListItemView;->setId(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    const v3, 0x7f0f0377

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/a/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->de:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v3, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v3}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ah:Lcom/spotify/android/paste/widget/ListItemView;

    sget-object v5, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->b:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ag:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ag:Lcom/spotify/android/paste/widget/ListItemView;

    const v3, 0x7f0a01e5

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/widget/ListItemView;->setId(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ag:Lcom/spotify/android/paste/widget/ListItemView;

    const v3, 0x7f0f0335

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/a/a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->dc:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v3, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ag:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v3}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ag:Lcom/spotify/android/paste/widget/ListItemView;

    sget-object v5, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ce
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_ce

    :cond_e2
    return-object v2
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Z:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->aa:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "include_share_to_spotify"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ab:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "twitter_share_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ac:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "friend_to_friend_email_specific_share_subject"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ae:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "friend_to_friend_email_specific_share_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ad:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aw:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01b1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ak:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_65

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ab:Z

    if-eqz v0, :cond_48

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->K:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    if-nez p3, :cond_48

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "spotify:share:post"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Z:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    :goto_3d
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1d

    :cond_48
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->aa:Ljava/lang/String;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Z:Landroid/content/Intent;

    invoke-static {v1, v0, v2, v3}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3d

    :cond_65
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->af:Lcom/spotify/mobile/android/ui/adapter/s;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ai:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, p3, v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Z:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ae:Ljava/lang/String;

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10f

    if-eqz v4, :cond_10f

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/a/a;->Y:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    move v0, v1

    :goto_9e
    if-eqz v0, :cond_d0

    const-string v0, "Overriding default share text (%s) with friend2friend specific (%s) and default subject text (%s) with friend2friend specific (%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ad:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ae:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ae:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.intent.extra.TEXT"

    iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ad:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d0
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_103

    new-instance v0, Lcom/spotify/mobile/android/util/dt;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/spotify/mobile/android/util/dt;-><init>(Landroid/content/Context;)V

    const-string v0, "com.twitter.android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    const-string v0, "Overriding default share text (%s) with Twitter specific (%s)"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ac:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.extra.TEXT"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->ac:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_103
    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/a/a;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_1d

    :cond_10f
    move v0, v2

    goto :goto_9e
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a/a;->aj:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
