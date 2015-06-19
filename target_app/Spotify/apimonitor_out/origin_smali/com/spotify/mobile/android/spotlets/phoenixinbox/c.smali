.class public final Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;


# instance fields
.field private Y:Lcom/spotify/mobile/android/util/dw;

.field private Z:Lcom/spotify/mobile/android/ui/actions/d;

.field private aa:Lcom/spotify/mobile/android/ui/actions/c;

.field private ab:Lcom/spotify/mobile/android/util/tracking/n;

.field private ac:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

.field private ad:Lcom/spotify/mobile/android/util/z;

.field private ae:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;",
            ">;"
        }
    .end annotation
.end field

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

.field private i:Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->Z:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->aa:Lcom/spotify/mobile/android/ui/actions/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ae:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->af:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->i:Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ac:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;)Lcom/spotify/mobile/android/util/tracking/n;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->k:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ae:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v1, v3, v4}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->i:Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->i:Lcom/spotify/mobile/android/spotlets/phoenixinbox/b;

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Landroid/widget/ListAdapter;)V

    move-object v1, v2

    check-cast v1, Landroid/widget/ListView;

    new-instance v3, Lcom/spotify/mobile/android/ui/contextmenu/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/spotify/android/paste/widget/EmptyView;

    new-instance v3, Lcom/spotify/mobile/android/ui/stuff/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->J:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v2, 0x7f0f0248

    const v4, 0x7f0f0247

    invoke-virtual {v3, v1, v2, v4}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    const v2, 0x7f0f020b

    const v3, 0x7f0f0249

    invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ac:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f024b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Z)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0180

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->af:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "spotify:internal:inbox"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ad:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a017f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ad:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 12

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->aa:Lcom/spotify/mobile/android/ui/actions/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;J)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->i()I

    move-result v1

    packed-switch v1, :pswitch_data_e2

    :goto_1b
    return-void

    :pswitch_1c
    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/spotlets/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_42
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;)V

    goto :goto_1b

    :cond_4a
    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v1

    if-eqz v1, :cond_63

    sget-object v1, Lcom/spotify/mobile/android/provider/j;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->Z:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v2, v3, v1, v4, v5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V

    goto :goto_1b

    :cond_63
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->c(Landroid/content/Context;)V

    goto :goto_1b

    :pswitch_6b
    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_89
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;)V

    goto :goto_1b

    :pswitch_91
    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_1b

    :cond_b0
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;)V

    goto/16 :goto_1b

    :pswitch_b9
    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_1b

    :cond_d8
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->h(Landroid/content/Context;)V

    goto/16 :goto_1b

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_6b
        :pswitch_91
        :pswitch_b9
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Z)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ac:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Z)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final r_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->r_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->ab:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/x;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/c;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
