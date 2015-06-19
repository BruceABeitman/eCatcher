.class public Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/model/l;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/m;
.field static final Y:[Ljava/lang/String;
.field private static final aa:Ljava/lang/String;
.field private static final ab:Ljava/util/List;
.field private static final ac:Lcom/spotify/mobile/android/util/cw;
.field static final i:[Ljava/lang/String;
.field  Z:Z
.field private aA:Ljava/lang/String;
.field private aB:Ljava/lang/String;
.field private aC:Ljava/lang/String;
.field private aD:Lcom/spotify/mobile/android/util/cw;
.field private aE:Z
.field private aF:Z
.field private aG:Z
.field private aH:Ljava/lang/String;
.field private aI:Z
.field private aJ:Z
.field private aK:Z
.field private aL:Z
.field private aM:Z
.field private aN:Z
.field private aO:Z
.field private aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private aQ:I
.field private aR:J
.field private aS:I
.field private aT:I
.field private aU:Lcom/spotify/mobile/android/util/dw;
.field private aV:Lcom/spotify/mobile/android/util/ec;
.field private aW:Ljava/lang/String;
.field private aX:Lcom/spotify/mobile/android/ui/actions/a;
.field private aY:Lcom/spotify/mobile/android/ui/actions/d;
.field private aZ:Lcom/spotify/mobile/android/ui/actions/c;
.field private ad:Lcom/spotify/mobile/android/util/j;
.field private ae:Landroid/widget/ListView;
.field private af:I
.field private ag:Lcom/spotify/mobile/android/util/dr;
.field private ah:I
.field private ai:I
.field private aj:Ljava/lang/String;
.field private ak:Ljava/lang/String;
.field private al:Lcom/spotify/mobile/android/ui/prettylist/c;
.field private am:Landroid/view/View;
.field private an:Landroid/widget/ToggleButton;
.field private ao:Landroid/widget/TextView;
.field private ap:Lcom/spotify/mobile/android/ui/view/paste/a;
.field private aq:Lcom/spotify/android/paste/widget/EmptyView;
.field private ar:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.field private as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.field private at:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private au:Landroid/view/View;
.field private av:Landroid/widget/LinearLayout;
.field private aw:Lcom/spotify/mobile/android/util/f;
.field private ax:Lcom/spotify/mobile/android/ui/adapter/o;
.field private ay:Lcom/spotify/mobile/android/ui/adapter/y;
.field private az:Ljava/lang/String;
.field private ba:Lcom/spotify/mobile/android/util/tracking/n;
.field private final bb:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private final bc:Lcom/spotify/mobile/android/ui/adapter/z;
.field private bd:Landroid/view/View$OnClickListener;
.field private be:Landroid/view/View$OnClickListener;
.field private bf:Landroid/support/v4/view/ah;
.field private bg:Lcom/spotify/mobile/android/util/ef;
.field private bh:Lcom/spotify/mobile/android/ui/view/j;
.field private bi:Lcom/spotify/mobile/android/ui/view/g;
.field private bj:Landroid/view/View$OnClickListener;
.field private bk:Landroid/support/v4/app/z;
.field private bl:Landroid/support/v4/app/z;
.field private bm:Landroid/support/v4/app/z;
.field private bn:Lcom/spotify/mobile/android/util/k;
.field private bo:Lcom/spotify/mobile/android/util/k;
.field private bp:Lcom/spotify/mobile/android/util/k;
.field private bq:Landroid/support/v4/app/z;
.field private br:Lcom/spotify/mobile/android/util/ds;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
const-class v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aa:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, ""
const v2, 0x7f0f03a6
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ac:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "name"
const v3, 0x7f0f03ab
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "time_added"
const v3, 0x7f0f03aa
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "artist_name"
const v3, 0x7f0f03a5
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "album_name"
const v3, 0x7f0f03a4
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ac:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/16 v0, 0x15
new-array v0, v0, [Ljava/lang/String;
const-string v1, "owner_uri"
aput-object v1, v0, v4
const-string v1, "subscriber_count"
aput-object v1, v0, v5
const-string v1, "offline_state"
aput-object v1, v0, v6
const/4 v1, 0x3
const-string v2, "is_subscribed"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "is_own"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "name"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_collaborative"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "sync_progress"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "is_published"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string v2, "is_starred"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string v2, "is_toptracks"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string v2, "is_available"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string v2, "is_radio_available"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string v2, "image_large_uri"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string v2, "playable_item_count"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string v2, "description"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string v2, "time_modified"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string v2, "length"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string v2, "item_count"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string v2, "image_is_annotated"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string v2, "description_is_annotated"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "name"
aput-object v1, v0, v4
const-string v1, "image_uri"
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Y:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 6
const/4 v3, -0x1
const/4 v2, 0x0
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/util/j;
const-class v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/j;-><init>(Ljava/lang/Class;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iput v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ah:I
iput v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ai:I
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ac:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aG:Z
iput v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aS:I
iput v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aT:I
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aX:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aY:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aZ:Lcom/spotify/mobile/android/ui/actions/c;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bb:Lcom/spotify/mobile/android/ui/contextmenu/f;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$11;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$11;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bc:Lcom/spotify/mobile/android/ui/adapter/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$12;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$12;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bd:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->be:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bf:Landroid/support/v4/view/ah;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$16;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$16;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bg:Lcom/spotify/mobile/android/util/ef;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$17;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bh:Lcom/spotify/mobile/android/ui/view/j;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bi:Lcom/spotify/mobile/android/ui/view/g;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bj:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bk:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bl:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bm:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$6;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->l:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->e:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->h:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v4, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->d:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/util/EnumSet;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bn:Lcom/spotify/mobile/android/util/k;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->g:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->f:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$7;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/util/EnumSet;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bo:Lcom/spotify/mobile/android/util/k;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->b:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->c:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->i:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/util/EnumSet;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bp:Lcom/spotify/mobile/android/util/k;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$9;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bq:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$10;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->br:Lcom/spotify/mobile/android/util/ds;
return-void
.end method
.method static synthetic A(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aT:I
return v0
.end method
.method static synthetic B(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ak:Ljava/lang/String;
return-object v0
.end method
.method static synthetic C(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method static synthetic D(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 5
const v2, 0x7f0b0020
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ak:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v2, v2}, Lcom/squareup/picasso/ad;->a(II)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0}, Lcom/squareup/picasso/ad;->b()Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;
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
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ak:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->e()Landroid/widget/ImageView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ak:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/net/Uri;)V
return-void
.end method
.method static synthetic E(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 10
const/4 v1, 0x0
const/16 v8, 0x8
const/4 v7, 0x1
const/4 v6, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aJ:Z
if-eqz v0, :cond_ac
:cond_d
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ai:I
if-ltz v0, :cond_ac
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e0009
iget v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ai:I
new-array v4, v7, [Ljava/lang/Object;
iget v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ai:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_28
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aj:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_4f
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0f02e4
new-array v3, v7, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aj:Ljava/lang/String;
aput-object v4, v3, v6
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
:cond_4f
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-nez v3, :cond_9a
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
invoke-virtual {v3, v6}, Landroid/widget/ToggleButton;->setVisibility(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V
:goto_64
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_6d
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_6d
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_85
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-eqz v0, :cond_82
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-eqz v0, :cond_a0
const/16 v0, 0xa
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_82
:cond_82
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_85
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_99
return-void
:cond_9a
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
invoke-virtual {v3, v8}, Landroid/widget/ToggleButton;->setVisibility(I)V
goto :goto_64
:cond_a0
const-string v0, " \u2022 "
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_82
:cond_a6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_99
:cond_ac
move-object v0, v1
goto/16 :goto_28
.end method
.method private E()Z
.registers 3
const-string v0, "local"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method static synthetic F(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/adapter/y;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ay:Lcom/spotify/mobile/android/ui/adapter/y;
return-object v0
.end method
.method private F()Z
.registers 3
const-string v0, "queue"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method static synthetic G(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic H(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
return-object v0
.end method
.method static synthetic I(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->af:I
return v0
.end method
.method static synthetic J(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->getHeight()I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
neg-int v0, v0
invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V
:goto_11
return-void
:cond_12
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-nez v0, :cond_1a
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
if-eqz v0, :cond_22
:cond_1a
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_28
:cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->k()V
goto :goto_11
:cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0, v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Z)V
goto :goto_11
.end method
.method static synthetic K(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ah:I
return v0
.end method
.method static synthetic L(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic M(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aj:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aS:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aW:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;JI)V
.registers 7
invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {v0, p2, p3}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {v0, p4}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)V
.registers 6
new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;
if-eqz p1, :cond_26
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->k:Lcom/spotify/mobile/android/util/ClientEvent$Event;
:goto_6
invoke-direct {v1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aX:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aZ:Lcom/spotify/mobile/android/ui/actions/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
:cond_26
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->o:Lcom/spotify/mobile/android/util/ClientEvent$Event;
goto :goto_6
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;ZZ)V
.registers 10
const/16 v6, 0x8
const/4 v5, 0x1
const/4 v4, 0x0
if-eqz p1, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v4, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v5, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
:goto_1d
:cond_1d
return-void
:cond_1e
if-eqz p2, :cond_4a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v4, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aq:Lcom/spotify/android/paste/widget/EmptyView;
const v1, 0x7f0f02ce
new-array v2, v5, [Ljava/lang/Object;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
aput-object v3, v2, v4
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v5, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
goto :goto_1d
:cond_4a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v4, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
aput v5, v1, v4
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
if-nez v0, :cond_1d
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0, v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Z)V
goto :goto_1d
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aT:I
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ai:I
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->az:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aG:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aQ:I
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aB:Ljava/lang/String;
return-object p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aG:Z
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->af:I
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
return-object p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aJ:Z
return p1
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ah:I
return p1
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ak:Ljava/lang/String;
return-object p1
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
return v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aK:Z
return p1
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(I)Z
move-result v0
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_a
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->e(I)I
move-result v1
add-int/2addr v0, v1
add-int/2addr v0, p1
return v0
:cond_13
move v0, v1
goto :goto_a
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aB:Ljava/lang/String;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aj:Ljava/lang/String;
return-object p1
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aL:Z
return p1
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->az:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;I)V
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, p1, v1, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/o;->getItemId(I)J
move-result-wide v4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a()Landroid/widget/ListView;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
add-int v3, p1, v0
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V
return-void
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
return p1
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
return p1
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aO:Z
return p1
.end method
.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/util/j;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0196
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bm:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method static synthetic o(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aZ:Lcom/spotify/mobile/android/ui/actions/c;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aX:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aY:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
return v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->av:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/prettylist/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
return-object v0
.end method
.method static synthetic u(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
return-object v0
.end method
.method static synthetic v(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aQ:I
return v0
.end method
.method static synthetic w(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
return-object v0
.end method
.method static synthetic x(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Landroid/support/v4/app/z;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bq:Landroid/support/v4/app/z;
return-object v0
.end method
.method static synthetic y(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ar:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
return-object v0
.end method
.method static synthetic z(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aS:I
return v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 15
const v8, 0x7f010186
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v10, -0x1
const/4 v1, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/j;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2af
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
if-nez v0, :cond_2af
move v0, v1
:goto_1b
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, v3}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v4
iput-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bj:Landroid/view/View$OnClickListener;
invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
sget-object v5, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
iget-object v7, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bh:Lcom/spotify/mobile/android/ui/view/j;
invoke-static {p1, v4, v5, v6, v7}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Lcom/spotify/mobile/android/ui/view/j;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v4
iput-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
if-eqz v4, :cond_2b2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/ui/prettylist/e;->c(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v4
iput-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v5
invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
:goto_53
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->c(Landroid/view/View;)V
new-instance v4, Landroid/widget/FrameLayout;
invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v5, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v5, Landroid/view/View;
invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v5, v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;
move-result-object v0
if-eqz v0, :cond_15b
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
new-instance v7, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
const/16 v0, 0x11
invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
const/4 v8, -0x2
const/4 v9, -0x2
invoke-direct {v0, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v0
const v8, 0x7f0f023a
invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v8
const v9, 0x7f0f0239
invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-static {v6, v7, v0, v8}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/ToggleButton;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
invoke-virtual {v0}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
const/high16 v8, 0x4100
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v9
invoke-static {v8, v9}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v8
iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
iget-object v8, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bd:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {v6, v7}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
const/16 v6, 0x11
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
const/4 v6, 0x2
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
const/high16 v6, 0x4080
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v8
invoke-static {v6, v8}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v6
int-to-float v6, v6
const/high16 v8, 0x3f80
invoke-virtual {v0, v6, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
const v8, 0x7f01019a
invoke-static {v0, v6, v8}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->an:Landroid/widget/ToggleButton;
invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ao:Landroid/widget/TextView;
invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-interface {v5, v7}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/view/paste/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-direct {v0, v5}, Lcom/spotify/mobile/android/ui/view/paste/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->be:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ap:Lcom/spotify/mobile/android/ui/view/paste/a;
const v5, 0x7f0f0238
invoke-virtual {p0, v5}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/view/paste/a;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bf:Landroid/support/v4/view/ah;
invoke-interface {v0, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/support/v4/view/ah;)V
:cond_15b
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v5, 0x1010054
invoke-static {v0, v5}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v0
invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->b(Landroid/content/Context;)Landroid/view/ViewGroup;
move-result-object v5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
invoke-virtual {v0, v5, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ar:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ar:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bi:Lcom/spotify/mobile/android/ui/view/g;
invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/g;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ar:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
new-instance v5, Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v5, v0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V
const v6, 0x7f0f02e7
invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
const v6, 0x7f0f02e6
invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v6
if-nez v6, :cond_1e1
new-instance v6, Lcom/spotify/android/paste/graphics/f;
sget-object v7, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v6, v0, v7}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
const v7, 0x7f010189
invoke-static {v0, v7}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v7
invoke-virtual {v6, v7}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->k()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0b0067
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v7
int-to-float v7, v7
invoke-virtual {v6, v7}, Lcom/spotify/android/paste/graphics/f;->a(F)V
invoke-virtual {v5, v6}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
:cond_1e1
invoke-static {v0, v5}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v0
const v6, 0x7f0f02cf
invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V
new-instance v6, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$14;
invoke-direct {v6, p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$14;-><init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v5, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/view/View;)V
invoke-virtual {v5, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setClickable(Z)V
iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->au:Landroid/view/View;
const/16 v5, 0x8
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;
move-result-object v0
const/4 v5, 0x4
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {p1, v5, v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bo:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/k;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bn:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/k;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bp:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/util/j;->a(Lcom/spotify/mobile/android/util/k;)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/y;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bc:Lcom/spotify/mobile/android/ui/adapter/z;
iget-object v7, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bb:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v5, v6, v7}, Lcom/spotify/mobile/android/ui/adapter/y;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/z;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ay:Lcom/spotify/mobile/android/ui/adapter/y;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v5, ""
invoke-static {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aq:Lcom/spotify/android/paste/widget/EmptyView;
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_2f7
const v0, 0x7f0f0334
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(I)Ljava/lang/String;
move-result-object v0
:goto_25f
new-instance v5, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-direct {v5, v6}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v5, Lcom/spotify/mobile/android/ui/adapter/x;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-direct {v5, v6}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v6, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ay:Lcom/spotify/mobile/android/ui/adapter/y;
invoke-virtual {v5, v6, v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v5, Lcom/spotify/mobile/android/ui/adapter/t;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aq:Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v5, v6, v2}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v0, v5, v3, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v5, v1, [I
aput v1, v5, v2
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ax:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Landroid/widget/ListAdapter;)V
const v0, 0x7f0300be
invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->av:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->av:Landroid/widget/LinearLayout;
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v4
:cond_2af
move v0, v2
goto/16 :goto_1b
:cond_2b2
iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->Z:Z
if-eqz v4, :cond_2cb
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v4
iput-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v5
invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
goto/16 :goto_53
:cond_2cb
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v4}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;
move-result-object v4
iput-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-static {v0, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v5
invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
invoke-interface {v4}, Lcom/spotify/mobile/android/ui/prettylist/c;->a()Lcom/spotify/mobile/android/ui/prettylist/StickyListView;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/spotify/mobile/android/ui/prettylist/StickyListView;->a(Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->al:Lcom/spotify/mobile/android/ui/prettylist/c;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
invoke-interface {v4, v5}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V
goto/16 :goto_53
:cond_2f7
move-object v0, v3
goto/16 :goto_25f
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
if-nez v0, :cond_c
const v0, 0x7f0f02e5
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_b
return-object v0
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
goto :goto_b
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 8
const/4 v4, -0x1
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h()Landroid/os/Bundle;
move-result-object v1
const-string v0, "playlist_uri"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
const-string v0, "playlist_owner_uri"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aB:Ljava/lang/String;
const-string v0, "filter"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
const-string v0, "sort_order"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
const-string v0, "title"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aH:Ljava/lang/String;
const-string v0, "is_sub_fragment"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
const-string v0, "refresh_timestamp"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aR:J
const-string v0, "referer"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;
if-nez v0, :cond_58
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->be:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;
:cond_58
if-eqz p1, :cond_70
const-string v0, "sort_order"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ab:Ljava/util/List;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
const-string v0, "filter"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
:cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
if-nez v0, :cond_78
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
:cond_78
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
if-nez v0, :cond_80
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ac:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
:cond_80
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aI:Z
if-nez v0, :cond_117
const/4 v0, 0x1
:goto_85
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Z)V
iput v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->af:I
if-nez p1, :cond_11a
const-string v0, "lookup_track_uri"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b9
new-instance v1, Lcom/spotify/mobile/android/util/dr;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v3
const v4, 0x7f0a0195
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->br:Lcom/spotify/mobile/android/util/ds;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/spotify/mobile/android/util/dr;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;ILcom/spotify/mobile/android/util/ds;)V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ag:Lcom/spotify/mobile/android/util/dr;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ag:Lcom/spotify/mobile/android/util/dr;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v0, v3}, Lcom/spotify/mobile/android/util/dr;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
:cond_b9
:goto_b9
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aw:Lcom/spotify/mobile/android/util/f;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aU:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->H:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_116
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/ec;->a(Landroid/app/Activity;Landroid/support/v4/app/y;)Lcom/spotify/mobile/android/util/ec;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aV:Lcom/spotify/mobile/android/util/ec;
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->I:Lcom/spotify/mobile/android/ui/fragments/logic/x;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/x;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "{uri}"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aW:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aV:Lcom/spotify/mobile/android/util/ec;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aW:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bg:Lcom/spotify/mobile/android/util/ef;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/ec;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ef;)V
:cond_116
return-void
:cond_117
const/4 v0, 0x0
goto/16 :goto_85
:cond_11a
const-string v0, "list_position"
invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->af:I
goto :goto_b9
.end method
.method public final a(Landroid/view/Menu;)V
.registers 2
invoke-interface {p1}, Landroid/view/Menu;->clear()V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->c(Landroid/view/Menu;)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$StateFlags;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/j;->b()V
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/j;->a(Ljava/lang/Enum;Z)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/j;->b()V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v2
if-eqz v2, :cond_2d
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aw:Lcom/spotify/mobile/android/util/f;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
invoke-static {v0, p4, p5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->b(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aX:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v2, v1, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:goto_2c
return-void
:cond_2d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aY:Lcom/spotify/mobile/android/ui/actions/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-wide v5, p4
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
invoke-static {v4, p4, p5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aX:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v2, v1, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
goto :goto_2c
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0191
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bl:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0196
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bm:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-eqz v0, :cond_3d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0192
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bk:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aB:Ljava/lang/String;
if-eqz v0, :cond_4d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0193
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bq:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_4d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
return-void
.end method
.method public final c(Landroid/view/Menu;)V
.registers 9
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aQ:I
if-lez v0, :cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
if-eqz v0, :cond_2e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2e
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aQ:I
if-lez v0, :cond_2e
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->am:Landroid/view/View;
:cond_2e
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aQ:I
if-nez v0, :cond_56
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-eqz v0, :cond_55
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-eqz v0, :cond_55
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
if-nez v0, :cond_55
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
if-nez v0, :cond_55
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/e;->d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:goto_55
:cond_55
return-void
:cond_56
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F()Z
move-result v0
if-nez v0, :cond_87
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->E()Z
move-result v0
if-nez v0, :cond_87
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-nez v0, :cond_6a
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
if-eqz v0, :cond_87
:cond_6a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-direct {v1, v4}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v4
iget v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aS:I
iget v6, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aT:I
move-object v1, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
:cond_87
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-eqz v0, :cond_aa
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
if-nez v0, :cond_aa
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
if-nez v0, :cond_aa
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->F:Lcom/spotify/mobile/android/ui/fragments/logic/j;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-nez v0, :cond_140
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_aa
:goto_aa
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F()Z
move-result v0
if-nez v0, :cond_db
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aK:Z
if-eqz v0, :cond_db
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
if-eqz v0, :cond_bc
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-eqz v0, :cond_cd
:cond_bc
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
if-nez v0, :cond_cd
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aL:Z
if-eqz v0, :cond_cd
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
:cond_cd
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->az:Ljava/lang/String;
const-string v4, ""
iget-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
move-object v1, p1
invoke-static/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_db
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F()Z
move-result v0
if-nez v0, :cond_10d
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->E()Z
move-result v0
if-nez v0, :cond_10d
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-eqz v0, :cond_14b
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aM:Z
if-nez v0, :cond_fe
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aN:Z
if-nez v0, :cond_fe
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aG:Z
invoke-static {v0, p1, v2, v1, v3}, Lcom/spotify/mobile/android/ui/menus/e;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
:cond_fe
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aG:Z
if-nez v0, :cond_10d
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aJ:Z
invoke-static {v0, p1, v2, v1, v3}, Lcom/spotify/mobile/android/ui/menus/e;->c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
:cond_10d
:goto_10d
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->F()Z
move-result v0
if-eqz v0, :cond_11a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
:cond_11a
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->H:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_157
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aO:Z
if-nez v0, :cond_12e
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->J:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-nez v0, :cond_157
:cond_12e
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aF:Z
if-nez v0, :cond_157
const/4 v0, 0x1
:goto_133
if-eqz v0, :cond_55
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aW:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/e;->c(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
goto/16 :goto_55
:cond_140
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0, p1, v2, v1}, Lcom/spotify/mobile/android/ui/menus/e;->d(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
goto/16 :goto_aa
:cond_14b
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aE:Z
invoke-static {v0, p1, v2, v1, v3}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;Z)V
goto :goto_10d
:cond_157
const/4 v0, 0x0
goto :goto_133
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
const-string v0, "sort_order"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aD:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "filter"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aC:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
if-lez v0, :cond_2c
const-string v0, "list_position"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ae:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_2c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->clearAnimation()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->w()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bo:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/j;->b(Lcom/spotify/mobile/android/util/k;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bn:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/j;->b(Lcom/spotify/mobile/android/util/k;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ad:Lcom/spotify/mobile/android/util/j;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->bp:Lcom/spotify/mobile/android/util/k;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/j;->b(Lcom/spotify/mobile/android/util/k;)V
invoke-super {p0}, Landroid/support/v4/app/x;->f()V
return-void
.end method
.method public final g_()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aA:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public final r_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->r_()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
return-void
.end method
.method public final x()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->at:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aU:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;-><init>()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Event;)V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aU:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aV:Lcom/spotify/mobile/android/util/ec;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->aV:Lcom/spotify/mobile/android/util/ec;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ec;->b()V
:cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->ba:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
return-void
.end method