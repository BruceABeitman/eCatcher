.class public final Lcom/spotify/mobile/android/ui/fragments/p;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/j;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;


# static fields
.field static final a:[Ljava/lang/String;

.field private static final f:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static g:F

.field private static h:F


# instance fields
.field private Y:Landroid/widget/TextView;

.field private Z:Landroid/widget/TextView;

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

.field private aG:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

.field private aH:Z

.field private aI:Z

.field private aJ:Z

.field private aK:I

.field private aL:I

.field private aM:Z

.field private aN:I

.field private aO:Lcom/spotify/mobile/android/model/c;

.field private aP:Ljava/lang/String;

.field private aQ:I

.field private aR:I

.field private aS:Lcom/spotify/mobile/android/ui/page/a/c;

.field private aT:Lcom/spotify/mobile/android/ui/page/a/f;

.field private aU:Lcom/spotify/mobile/android/ui/page/a/f;

.field private aV:Lcom/spotify/mobile/android/ui/page/a/f;

.field private aW:Lcom/spotify/mobile/android/ui/page/a/f;

.field private aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

.field private aY:I

.field private aZ:Lcom/spotify/mobile/android/service/connections/b;

.field private aa:Landroid/widget/ImageButton;

.field private ab:Landroid/widget/ImageButton;

.field private ac:Landroid/widget/ImageButton;

.field private ad:Landroid/widget/ImageButton;

.field private ae:Landroid/widget/ImageButton;

.field private af:Landroid/widget/ImageButton;

.field private ag:Landroid/widget/ImageButton;

.field private ah:Landroid/widget/ImageButton;

.field private ai:Landroid/widget/ImageButton;

.field private aj:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

.field private ak:Landroid/view/View;

.field private al:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

.field private am:Landroid/widget/FrameLayout;

.field private an:Landroid/view/View;

.field private ao:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

.field private ap:Landroid/widget/TextView;

.field private aq:Landroid/widget/TextView;

.field private final ar:Lcom/spotify/mobile/android/util/by;

.field private final as:Ljava/lang/Runnable;

.field private at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

.field private final au:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/spotify/mobile/android/ui/view/PlayerContentView;",
            ">;"
        }
    .end annotation
.end field

.field private av:Landroid/os/Handler;

.field private final aw:Ljava/lang/Object;

.field private ax:Lcom/spotify/mobile/android/ui/fragments/q;

.field private ay:Z

.field private az:I

.field protected b:Landroid/database/Cursor;

.field private ba:Z

.field private bb:Z

.field private bc:Lcom/spotify/mobile/android/ui/actions/a;

.field private bd:Lcom/spotify/mobile/android/ui/actions/d;

.field private be:Lcom/spotify/mobile/android/util/z;

.field private bf:Lcom/spotify/mobile/android/ui/b/c;

.field private bg:Landroid/net/Uri;

.field private bh:Lcom/squareup/picasso/ai;

.field private bi:Z

.field private bj:Lcom/spotify/mobile/android/ui/page/a/e;

.field private bk:Lcom/spotify/mobile/android/ui/page/a/b;

.field public c:I

.field d:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const-string v0, "is_skip_limit_ad_played"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/p;->f:Lcom/spotify/mobile/android/util/cz;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "paused"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "length"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "shuffle"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "repeat_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_prev_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_next_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_seek_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_radio"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_mock_radio"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_radio_loading"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_radio_improving"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "radio_thumb_state"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "context_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "context_title"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "context_owner"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "context_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_ad_playing"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ad_url"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ad_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "skips_remaining"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "is_queue_available"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "is_suggested_track"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "state_cached_on"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "is_shuffle_restricted"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "row"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/p;->a:[Ljava/lang/String;

    sput v3, Lcom/spotify/mobile/android/ui/fragments/p;->g:F

    sput v3, Lcom/spotify/mobile/android/ui/fragments/p;->h:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/util/by;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/by;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ar:Lcom/spotify/mobile/android/util/by;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/p$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/p$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->as:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->au:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aw:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ax:Lcom/spotify/mobile/android/ui/fragments/q;

    iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aY:I

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ba:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bb:Z

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bc:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bd:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/b/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/b/c;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bf:Lcom/spotify/mobile/android/ui/b/c;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/p$12;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/p$12;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bh:Lcom/squareup/picasso/ai;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/p$11;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/p$11;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->d:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/p$13;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/p$13;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->e:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic A(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    return v0
.end method

.method static synthetic B(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    return v0
.end method

.method static synthetic C(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic D(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->D:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->F()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/ui/fragments/p;->f:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method private E()Z
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->F()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic E(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ay:Z

    return v0
.end method

.method static synthetic F(Lcom/spotify/mobile/android/ui/fragments/p;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->az:I

    return v0
.end method

.method private F()Z
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic G(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic H(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bg:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic I(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/squareup/picasso/ai;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bh:Lcom/squareup/picasso/ai;

    return-object v0
.end method

.method static synthetic J(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a()Landroid/support/v4/view/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ah;->c()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_26
    if-ltz v0, :cond_36

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->c:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a(IZ)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    :cond_36
    return-void
.end method

.method static synthetic K(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic L(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->as:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic M(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/util/by;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ar:Lcom/spotify/mobile/android/util/by;

    return-object v0
.end method

.method static synthetic N(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic O(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic P(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic Q(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->al:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    return-object v0
.end method

.method static synthetic R(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ak:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bg:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aO:Lcom/spotify/mobile/android/model/c;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aG:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/ui/fragments/q;)Lcom/spotify/mobile/android/ui/fragments/q;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ax:Lcom/spotify/mobile/android/ui/fragments/q;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ao:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p$14;->a:[I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->a:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    :goto_10
    return-object v0

    :pswitch_11
    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->b:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    goto :goto_10

    :pswitch_14
    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    goto :goto_10

    :pswitch_17
    sget-object v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->d:Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aP:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/view/ConnectIconView;ILcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 9

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    if-eq v0, p3, :cond_9

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    if-eq v0, p3, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->G:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/p$14;->b:[I

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a()Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/spotify/mobile/android/ui/view/ConnectIconView$Aspect;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_5c

    :goto_1e
    new-instance v4, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aq:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v4, p3, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    if-ne p3, v1, :cond_59

    const-string v1, "last-hit"

    :goto_2b
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "last-animation"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-string v1, "numberOfDevices"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    const-class v1, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aR:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v1, v0, v4}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto :goto_8

    :pswitch_53
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->F:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_1e

    :pswitch_56
    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri$SubView;->H:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    goto :goto_1e

    :cond_59
    const-string v1, "last-impression"

    goto :goto_2b

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;I)V
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    div-int/lit8 v0, p1, 0x3c

    move v1, v2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v0, v0, 0xa

    if-gtz v0, :cond_b

    add-int/lit8 v0, v1, 0x2

    int-to-float v5, v0

    sget v0, Lcom/spotify/mobile/android/ui/fragments/p;->g:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3a

    const-string v6, "01234567890"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    new-array v7, v0, [F

    invoke-virtual {v4, v6, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move v0, v2

    move v1, v3

    :goto_27
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_38

    aget v8, v7, v0

    cmpl-float v8, v8, v1

    if-lez v8, :cond_35

    aget v1, v7, v0

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_38
    sput v1, Lcom/spotify/mobile/android/ui/fragments/p;->g:F

    :cond_3a
    sget v0, Lcom/spotify/mobile/android/ui/fragments/p;->g:F

    mul-float/2addr v0, v5

    sget v1, Lcom/spotify/mobile/android/ui/fragments/p;->h:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_52

    const-string v1, ":"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-array v3, v3, [F

    invoke-virtual {v4, v1, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    aget v1, v3, v2

    sput v1, Lcom/spotify/mobile/android/ui/fragments/p;->h:F

    :cond_52
    sget v1, Lcom/spotify/mobile/android/ui/fragments/p;->h:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-eq v1, v0, :cond_68

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    :cond_68
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/fragments/p;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Landroid/widget/SeekBar;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ar:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->as:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bd:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Lcom/spotify/mobile/android/model/c;Z)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v1, :cond_23

    :cond_c
    const-string v1, ""

    const-string v0, ""

    :goto_10
    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Y:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/spotify/mobile/android/model/c;->a(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->k()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/spotify/mobile/android/model/c;->b(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;ZLjava/lang/String;ZZZ)V
    .registers 15

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_e4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    const-string v0, "up"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v0, "down"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v4, :cond_3d

    if-nez v7, :cond_3d

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    if-eqz v0, :cond_d5

    :cond_3d
    move v0, v1

    :goto_3e
    iget-object v8, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-eqz v3, :cond_d8

    if-nez v0, :cond_d8

    move v3, v1

    :goto_47
    invoke-virtual {v8, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    iget-boolean v8, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-eqz v8, :cond_db

    if-nez v0, :cond_db

    move v0, v1

    :goto_53
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-nez v0, :cond_de

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    if-nez v0, :cond_de

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->E()Z

    move-result v0

    if-nez v0, :cond_de

    move v0, v1

    :goto_67
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-eqz v0, :cond_e0

    if-eqz v4, :cond_e0

    move v0, v1

    :goto_73
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-eqz v3, :cond_e2

    if-eqz v7, :cond_e2

    :goto_7e
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->an:Landroid/view/View;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->an:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->c:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v1, :cond_c5

    :cond_9b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p1, :cond_145

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_bb
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_c5
    if-eqz p3, :cond_d4

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->E:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_d4
    return-void

    :cond_d5
    move v0, v2

    goto/16 :goto_3e

    :cond_d8
    move v3, v2

    goto/16 :goto_47

    :cond_db
    move v0, v2

    goto/16 :goto_53

    :cond_de
    move v0, v2

    goto :goto_67

    :cond_e0
    move v0, v2

    goto :goto_73

    :cond_e2
    move v1, v2

    goto :goto_7e

    :cond_e4
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p3, :cond_ed

    if-eqz p4, :cond_139

    :cond_ed
    move v3, v1

    :goto_ee
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v3, :cond_13b

    const/16 v0, 0x10

    move v4, v0

    :goto_f9
    instance-of v0, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_107

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_107
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    if-eqz v3, :cond_13f

    move v0, v5

    :goto_10c
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    if-eqz p4, :cond_141

    move v0, v5

    :goto_114
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->an:Landroid/view/View;

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->an:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_120
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    if-eqz p5, :cond_143

    move v0, v2

    :goto_12f
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_8f

    :cond_139
    move v3, v2

    goto :goto_ee

    :cond_13b
    const/16 v0, 0x30

    move v4, v0

    goto :goto_f9

    :cond_13f
    move v0, v2

    goto :goto_10c

    :cond_141
    move v0, v2

    goto :goto_114

    :cond_143
    move v0, v6

    goto :goto_12f

    :cond_145
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_bb
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aM:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/p;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aY:I

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/b/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bf:Lcom/spotify/mobile/android/ui/b/c;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/p;Ljava/lang/String;)V
    .registers 8

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aA:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    if-nez v0, :cond_60

    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/page/a/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/mobile/android/ui/page/a/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;I)V

    :cond_24
    :goto_24
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    :cond_35
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bj:Lcom/spotify/mobile/android/ui/page/a/e;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bk:Lcom/spotify/mobile/android/ui/page/a/b;

    :cond_4a
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aA:Z

    if-nez v0, :cond_5f

    :cond_52
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    :cond_5f
    return-void

    :cond_60
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-eqz v0, :cond_c2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-nez v0, :cond_c2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    if-nez v0, :cond_c2

    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/page/a/d;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;I)V

    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aB:Z

    if-nez v0, :cond_24

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_ac

    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/e;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/page/a/e;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bj:Lcom/spotify/mobile/android/ui/page/a/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bj:Lcom/spotify/mobile/android/ui/page/a/e;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;)V

    :cond_ac
    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/page/a/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bk:Lcom/spotify/mobile/android/ui/page/a/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bk:Lcom/spotify/mobile/android/ui/page/a/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;)V

    goto/16 :goto_24

    :cond_c2
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-nez v0, :cond_ef

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-nez v0, :cond_ef

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    if-nez v0, :cond_ef

    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/g;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    const v3, 0x7f0f02d8

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/fragments/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/page/a/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1, v4}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;I)V

    goto/16 :goto_24

    :cond_ef
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-nez v0, :cond_116

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aM:Z

    if-eqz v0, :cond_116

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    if-ltz v0, :cond_116

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    new-instance v1, Lcom/spotify/mobile/android/ui/page/a/h;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/page/a/h;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;)V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aL:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aM:Z

    goto/16 :goto_24

    :cond_116
    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aI:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    new-instance v1, Lcom/spotify/mobile/android/ui/page/a/i;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/ui/page/a/i;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/page/a/c;->a(Lcom/spotify/mobile/android/ui/page/a/f;I)V

    goto/16 :goto_24
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aA:Z

    return p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/p;I)Lcom/spotify/mobile/android/ui/view/PlayerContentView;
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->au:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    :goto_1a
    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(I)V

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/p;->d(I)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a(Landroid/database/Cursor;)V

    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->au:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    goto :goto_1a
.end method

.method static synthetic c()Lcom/spotify/mobile/android/util/cz;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/p;->f:Lcom/spotify/mobile/android/util/cz;

    return-object v0
.end method

.method static synthetic c(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ba:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ay:Z

    return p1
.end method

.method private d(I)Landroid/database/Cursor;
    .registers 7

    const/4 v0, 0x0

    if-gez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_28

    :cond_18
    const-string v1, "No song information associated with position: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_28
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    goto :goto_3
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/p;I)Landroid/database/Cursor;
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/p;->d(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aj:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    return p1
.end method

.method private static e(I)Ljava/lang/String;
    .registers 7

    rem-int/lit8 v0, p0, 0x3c

    div-int/lit8 v1, p0, 0x3c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/p;I)V
    .registers 5

    const/4 v0, -0x1

    move v1, v0

    :goto_2
    const/4 v0, 0x1

    if-gt v1, v0, :cond_35

    add-int v0, p1, v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->b:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/picasso/ad;->d()V

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_35
    return-void
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bb:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aB:Z

    return p1
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/p;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aY:I

    return v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/p;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->az:I

    return p1
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aD:Z

    return p1
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/p;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    return p1
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bb:Z

    return v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    return p1
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/p;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aN:I

    return p1
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aJ:Z

    return p1
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aJ:Z

    return v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aH:Z

    return p1
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bc:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aI:Z

    return p1
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->E()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bd:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->F()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aK:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic n(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aw:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->av:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/fragments/q;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ax:Lcom/spotify/mobile/android/ui/fragments/q;

    return-object v0
.end method

.method static synthetic q(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->au:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic r(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aF:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object v0
.end method

.method static synthetic s(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aG:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    return-object v0
.end method

.method static synthetic t(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aE:Z

    return v0
.end method

.method static synthetic u(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/model/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aO:Lcom/spotify/mobile/android/model/c;

    return-object v0
.end method

.method static synthetic w(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aO:Lcom/spotify/mobile/android/model/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/model/c;->b()Lcom/spotify/mobile/android/model/ContextType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/model/ContextType;->e:Lcom/spotify/mobile/android/model/ContextType;

    if-ne v0, v1, :cond_36

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aO:Lcom/spotify/mobile/android/model/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/model/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Z:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aN:I

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aO:Lcom/spotify/mobile/android/model/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/model/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Z:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_35
.end method

.method static synthetic x(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aH:Z

    return v0
.end method

.method static synthetic y(Lcom/spotify/mobile/android/ui/fragments/p;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aA:Z

    return v0
.end method

.method static synthetic z(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ad:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    const v0, 0x7f0300b9

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bf:Lcom/spotify/mobile/android/ui/b/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->k()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Lcom/spotify/mobile/android/ui/b/c;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bf:Lcom/spotify/mobile/android/ui/b/c;

    invoke-static {v2, v0}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a034f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b(I)V

    const v0, 0x7f0a0352

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ao:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    const v0, 0x7f0a0223

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    const v0, 0x7f0a034d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    const v0, 0x7f0a034a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->i:Landroid/view/View;

    const v0, 0x7f0a034b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Y:Landroid/widget/TextView;

    const v0, 0x7f0a034c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->Z:Landroid/widget/TextView;

    const v0, 0x7f0a0359

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    const v0, 0x7f0a035a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ad:Landroid/widget/ImageButton;

    const v0, 0x7f0a035b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    const v0, 0x7f0a0355

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    const v0, 0x7f0a0356

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    const v0, 0x7f0a0358

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    const v0, 0x7f0a0357

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    const v0, 0x7f0a0327

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ak:Landroid/view/View;

    const v0, 0x7f0a035d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->al:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    const v0, 0x7f0a0351

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ap:Landroid/widget/TextView;

    const v0, 0x7f0a0353

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aq:Landroid/widget/TextView;

    const v0, 0x7f0a0350

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    const v0, 0x7f0a035c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aj:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aj:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    new-instance v3, Lcom/spotify/mobile/android/ui/fragments/p$16;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/fragments/p$16;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aj:Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_22d

    move v0, v1

    :goto_113
    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V

    const v0, 0x7f0a0354

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->an:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ad:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->i(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->j(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->o(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aR:I

    iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aQ:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$17;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$17;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$18;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$18;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a(Landroid/support/v4/view/ah;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aa:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$19;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$19;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->i:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$20;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$20;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ab:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$21;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$21;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ac:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ad:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ae:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$4;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->af:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$5;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ag:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$6;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$7;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$7;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$8;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ao:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$9;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$9;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a(Lcom/spotify/mobile/android/ui/view/b;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->at:Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$10;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$10;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a(Landroid/support/v4/view/br;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->al:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->al:Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->h:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/ui/view/PremiumUpsellBanner;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->av:Landroid/os/Handler;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p;->am:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/ui/page/a/c;-><init>(Landroid/os/Handler;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aT:Lcom/spotify/mobile/android/ui/page/a/f;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aV:Lcom/spotify/mobile/android/ui/page/a/f;

    iput-object v5, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aW:Lcom/spotify/mobile/android/ui/page/a/f;

    return-object v2

    :cond_22d
    const/4 v0, 0x4

    goto/16 :goto_113
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const v0, 0x7f0f02d1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->av:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Z)V

    new-instance v0, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->be:Lcom/spotify/mobile/android/util/z;

    return-void
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1b

    const-string v0, "connect_state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->values()[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    move-result-object v0

    const-string v1, "connect_state"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    :cond_1b
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    if-eqz v0, :cond_12

    const-string v0, "connect_state"

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public final d(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bi:Z

    if-nez p1, :cond_2f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bj:Lcom/spotify/mobile/android/ui/page/a/e;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bj:Lcom/spotify/mobile/android/ui/page/a/e;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    :cond_1e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bk:Lcom/spotify/mobile/android/ui/page/a/b;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aS:Lcom/spotify/mobile/android/ui/page/a/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bk:Lcom/spotify/mobile/android/ui/page/a/b;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/page/a/c;->b(Lcom/spotify/mobile/android/ui/page/a/f;)V

    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aU:Lcom/spotify/mobile/android/ui/page/a/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aC:Z

    :cond_2f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ah:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ai:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method public final r_()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ba:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_11
    return-void
.end method

.method public final u_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ba:Z

    return-void
.end method

.method public final v_()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ba:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/p$15;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/p$15;-><init>(Lcom/spotify/mobile/android/ui/fragments/p;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aX:Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->aZ:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->c()V

    :cond_1b
    return-void
.end method

.method public final x()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bb:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018c

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->e:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018d

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->d:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018b

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p;->be:Lcom/spotify/mobile/android/util/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final z()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->av:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p;->ar:Lcom/spotify/mobile/android/util/by;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->as:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/by;->a(Ljava/lang/Runnable;)V

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p;->bh:Lcom/squareup/picasso/ai;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Lcom/squareup/picasso/ai;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/p;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a018b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    return-void
.end method
