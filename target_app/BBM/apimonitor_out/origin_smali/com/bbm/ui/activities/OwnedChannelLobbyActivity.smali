.class public Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
.super Lcom/bbm/ui/activities/cn;
.source "OwnedChannelLobbyActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

.field private b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

.field private c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

.field private d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

.field private e:Lcom/bbm/ui/FooterActionBar;

.field private final f:Lcom/bbm/ui/cj;

.field private final g:Lcom/bbm/ui/c/fq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/cn;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/aax;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aax;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->f:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/aay;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aay;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->g:Lcom/bbm/ui/c/fq;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;I)V
    .registers 5

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_5a

    :goto_4
    return-void

    :sswitch_5
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/ChannelDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bbm_channel_uri"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :sswitch_20
    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/ac;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    goto :goto_4

    :sswitch_2f
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bbm/util/ac;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_4

    :sswitch_3e
    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/AddChannelPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "channelURI"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    nop

    :sswitch_data_5a
    .sparse-switch
        0x7f0a0030 -> :sswitch_3e
        0x7f0a0032 -> :sswitch_2f
        0x7f0a0033 -> :sswitch_20
        0x7f0a004f -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;Lcom/bbm/ui/c/fm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b(Lcom/bbm/ui/c/fm;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    return-object v0
.end method

.method private b(Lcom/bbm/ui/c/fm;)V
    .registers 8

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a004f

    const v3, 0x7f0202d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e076b

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0033

    const v3, 0x7f020257

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e01fa

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0032

    const v3, 0x7f020217

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e04b1

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0030

    const v3, 0x7f0201e4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e00f6

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f020268

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e02eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v5, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->g:Lcom/bbm/ui/c/fq;

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/abe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abe;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/bbm/ui/c/fm;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b(Lcom/bbm/ui/c/fm;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->setContentView(I)V

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->setChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    new-instance v1, Lcom/bbm/ui/activities/aaz;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aaz;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->setChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    new-instance v1, Lcom/bbm/ui/activities/aba;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aba;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->setChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    invoke-virtual {v0, p0}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    new-instance v1, Lcom/bbm/ui/activities/abb;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abb;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->setChannel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    new-instance v1, Lcom/bbm/ui/activities/abc;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abc;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/w;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/az;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->e:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020015

    const v3, 0x7f0e00f6

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0030

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->e:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020218

    const v3, 0x7f0e00f4

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const v2, 0x7f0a0032

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->e:Lcom/bbm/ui/FooterActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->f:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/abd;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/abd;-><init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    iget-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    iget-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->e()V

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a:Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b:Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;

    iget-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->c:Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;

    iget-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->a:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v1, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->b:Lcom/bbm/j/k;

    invoke-virtual {v1}, Lcom/bbm/j/k;->c()V

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyReportsPaneView;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->d:Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;

    iget-object v0, v0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
