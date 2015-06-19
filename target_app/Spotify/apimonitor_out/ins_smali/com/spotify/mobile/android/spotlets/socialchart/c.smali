.class public Lcom/spotify/mobile/android/spotlets/socialchart/c;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;
.field private Y:Landroid/os/Handler;
.field private Z:Lcom/spotify/cosmos/android/Resolver;
.field private aa:Lcom/spotify/mobile/android/util/f;
.field private ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
.field private ac:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.field private ad:Lcom/spotify/mobile/android/ui/prettylist/c;
.field private ae:Landroid/view/View;
.field private af:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ag:Lcom/spotify/mobile/android/util/dw;
.field private ah:Lcom/spotify/android/paste/widget/EmptyView;
.field private ai:Lcom/spotify/mobile/android/util/z;
.field private aj:Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
.field private ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.field private al:Landroid/os/Parcelable;
.field private am:Ljava/lang/String;
.field private an:Lcom/spotify/mobile/android/util/cc;
.field private ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
.field private ap:Z
.field private aq:Z
.field private ar:Lcom/spotify/mobile/android/util/tracking/n;
.field private final as:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field protected i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ap:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aq:Z
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->as:Lcom/spotify/mobile/android/ui/contextmenu/f;
return-void
.end method
.method private G()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private a(ZI)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.registers 9
const/4 v3, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
move v2, v3
move v1, p2
:goto_12
if-ge v2, p2, :cond_27
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->isUnavailable()Z
move-result v0
if-eqz v0, :cond_67
add-int/lit8 v0, v1, -0x1
:goto_22
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v0
goto :goto_12
:cond_27
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
sget-object v2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;-><init>(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)V
const-string v2, "spotify:internal:social_chart"
iput-object v2, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->index:Ljava/lang/Integer;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTracksUriList()Ljava/util/List;
move-result-object v1
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->tracks:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
invoke-direct {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;-><init>()V
const-string v2, "spotify:internal:social_chart"
iput-object v2, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;->source:Ljava/lang/String;
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->origin:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOrigin;
if-eqz p1, :cond_66
new-instance v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
invoke-direct {v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;-><init>()V
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->canRepeat:Z
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->canSeek:Z
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->canShuffle:Z
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->canSkipNext:Z
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->canSkipPrev:Z
iput-boolean v3, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->repeat:Z
iput-boolean v5, v1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;->shuffle:Z
iput-object v1, v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->options:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$PlayOptions;
:cond_66
return-object v0
:cond_67
move v0, v1
goto :goto_22
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/socialchart/c;Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;)V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;)V
.registers 10
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v2
if-eqz v2, :cond_14
array-length v0, v2
if-nez v0, :cond_1f
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
:goto_1e
return-void
:cond_1f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_19e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
if-eqz v0, :cond_19e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V
:goto_32
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v3, 0x7f0f03a2
invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;
move-result-object v1
const/16 v3, 0x11
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V
const/4 v3, 0x2
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V
sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const/high16 v3, 0x4080
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->k()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v3, v4}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v3
int-to-float v3, v3
const/high16 v4, 0x3f80
invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V
const v3, 0x7f0a01e6
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const v4, 0x7f01019a
invoke-static {v3, v1, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
const v3, 0x7f0f03a1
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
const-string v1, "https://datsnxq1rwndn.cloudfront.net/toplists/toptracksinyournetwork.png"
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->f()Lcom/spotify/android/paste/widget/HeaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
const-string v1, "https://datsnxq1rwndn.cloudfront.net/toplists/toptracksinyournetwork.png"
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v1, v3, v7}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aj:Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aj:Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/support/v4/view/ah;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aj:Lcom/spotify/mobile/android/spotlets/socialchart/a/a;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/a/a;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-nez v0, :cond_1a7
move v3, v6
:goto_10c
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->as:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;-><init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;ZLcom/spotify/mobile/android/ui/contextmenu/f;Lcom/spotify/mobile/android/spotlets/socialchart/b/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
if-eqz v3, :cond_1aa
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0201c8
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V
:goto_15b
array-length v1, v2
move v0, v7
:goto_15d
if-ge v0, v1, :cond_178
aget-object v3, v2, v0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v4}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->getTrackUri()Ljava/lang/String;
move-result-object v3
if-eqz v4, :cond_1c5
invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_1c5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a(Ljava/lang/String;)V
:cond_178
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
if-eqz v0, :cond_191
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_191
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->al:Landroid/os/Parcelable;
if-eqz v0, :cond_191
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->al:Landroid/os/Parcelable;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:cond_191
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
array-length v1, v2
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->d(Z)V
goto/16 :goto_1e
:cond_19e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V
goto/16 :goto_32
:cond_1a7
move v3, v7
goto/16 :goto_10c
:cond_1aa
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
const v3, 0x7f0f0334
invoke-virtual {v0, v1, v3, v7}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_15b
:cond_1c5
add-int/lit8 v0, v0, 0x1
goto :goto_15d
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aq:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(ZI)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ac:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ap:Z
return v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->e:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
return-object v0
.end method
.method public final F()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ab:Lcom/spotify/mobile/android/spotlets/socialchart/a/c;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/socialchart/a/c;->a(Ljava/lang/String;)V
:cond_f
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, -0x1
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x1010054
invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_6b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
:goto_34
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v1
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {p1, v2, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v1, Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ah:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ah:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
return-object v0
:cond_6b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->G()V
goto :goto_34
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f03a2
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Z)V
new-instance v0, Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01b5
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
new-instance v0, Landroid/os/Handler;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Y:Landroid/os/Handler;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Z:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Z:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aa:Lcom/spotify/mobile/android/util/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ag:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
if-eqz p1, :cond_7a
const-string v0, "user"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->am:Ljava/lang/String;
:cond_7a
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Z:Lcom/spotify/cosmos/android/Resolver;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ac:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
return-void
.end method
.method public final a(Landroid/view/Menu;)V
.registers 7
const/4 v4, 0x0
invoke-interface {p1}, Landroid/view/Menu;->clear()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_38
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, p1, v0, v2}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v0
if-eqz v0, :cond_2e
array-length v0, v0
if-nez v0, :cond_35
:cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_35
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->G()V
:cond_38
new-instance v0, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->da:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
const/high16 v1, 0x41c0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V
const v1, 0x7f0a0116
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f0f021e
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ah:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ad:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v3}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ca:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const v2, 0x7f0f039e
const v3, 0x7f0f039c
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
const v1, 0x7f0f039b
const v2, 0x7f0f039a
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->b(II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
const v1, 0x7f0f020b
const v2, 0x7f0f039f
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/c;->a(II)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ak:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
if-eqz p2, :cond_54
const-string v0, "com.spotify.social_chart.state.list"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->al:Landroid/os/Parcelable;
const-string v0, "com.spotify.social_chart.state.model"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
:cond_54
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$5;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c$5;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 9
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v0
long-to-int v1, p4
aget-object v0, v0, v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;->isUnavailable()Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ac:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
const/4 v1, 0x0
long-to-int v2, p4
invoke-direct {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(ZI)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->getTrackModels()[Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v0
long-to-int v1, p4
aget-object v0, v0, v1
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ao:Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
long-to-int v2, p4
invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;I)V
:cond_39
:goto_39
return-void
:cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aa:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ae:Landroid/view/View;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
goto :goto_39
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ai:Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a01b4
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ai:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->aq:Z
if-eqz v0, :cond_22
const-string v0, "user"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->am:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "com.spotify.social_chart.state.model"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "com.spotify.social_chart.state.list"
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Z)V
.registers 7
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ap:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->i:Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->af:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->c()Z
move-result v1
if-eqz v1, :cond_2a
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->am:Ljava/lang/String;
:cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Z:Lcom/spotify/cosmos/android/Resolver;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "hm://social-charts-view/v2/user/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->am:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Y:Landroid/os/Handler;
const-class v4, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/socialchart/SocialChartFragment$6;-><init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
goto :goto_b
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->r_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->s_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ar:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ag:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->ag:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c;->Z:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
return-void
.end method