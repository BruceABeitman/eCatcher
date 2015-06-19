.class public Lcom/spotify/mobile/android/ui/view/PlayerContentView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final M:[I

.field private static final N:[I

.field public static final d:[Ljava/lang/String;


# instance fields
.field private A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

.field private B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Lcom/spotify/mobile/android/ui/view/p;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/spotify/mobile/android/ui/actions/a;

.field private K:Lcom/spotify/mobile/android/ui/actions/c;

.field private L:Lcom/spotify/mobile/android/ui/actions/d;

.field private O:Landroid/view/View;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Landroid/view/View$OnClickListener;

.field private S:Landroid/view/View$OnClickListener;

.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field private e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/net/Uri;

.field private y:Landroid/net/Uri;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "artist_name"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "album_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_image_large_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "artist_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_starred"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_available"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_album_browsable"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_artist_browsable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_radio_available"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "focused_row"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_ad"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ad_url"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ad_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "is_hidden"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "is_in_collection"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is_queued"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "is_queueable"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "can_add_to_collection"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d:[Ljava/lang/String;

    new-array v0, v3, [I

    sput-object v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->M:[I

    new-array v0, v4, [I

    const v1, 0x10100a0

    aput v1, v0, v3

    sput-object v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->N:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->J:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->K:Lcom/spotify/mobile/android/ui/actions/c;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->L:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->R:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$6;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->S:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->J:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->K:Lcom/spotify/mobile/android/ui/actions/c;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->L:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->R:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$6;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->S:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->s:Z

    return v0
.end method

.method public static d()V
    .registers 2

    const-string v0, "Video Ad Rejected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    return v0
.end method

.method static synthetic f()[I
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->M:[I

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Landroid/widget/ImageButton;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic g()[I
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->N:[I

    return-object v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->K:Lcom/spotify/mobile/android/ui/actions/c;

    return-object v0
.end method

.method private h()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->p:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->s:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->t:Z

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->x:Landroid/net/Uri;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->y:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->C:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->m:I

    return-void
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->J:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method private i()V
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->D:Z

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f:Landroid/view/View;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    if-eqz v0, :cond_e5

    move v0, v1

    :goto_16
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    if-eqz v0, :cond_e8

    move v0, v2

    :goto_20
    invoke-virtual {v4, v0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->x:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->y:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    if-eqz v0, :cond_eb

    const/4 v0, 0x4

    :goto_38
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->n:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    sget-object v4, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->N:[I

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageButton;->setImageState([IZ)V

    :goto_56
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->s:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    if-eqz v0, :cond_f7

    :cond_60
    move v0, v3

    :goto_61
    invoke-virtual {v4, v0}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->s:Z

    if-nez v4, :cond_6e

    iget-boolean v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    if-eqz v4, :cond_fa

    :cond_6e
    :goto_6e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    if-nez v3, :cond_80

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    if-eqz v3, :cond_fd

    :cond_80
    move v3, v2

    :goto_81
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    if-nez v3, :cond_8e

    iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    if-eqz v3, :cond_ff

    :cond_8e
    move v3, v2

    :goto_8f
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a()Z

    move-result v3

    if-eqz v3, :cond_101

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->S:Landroid/view/View$OnClickListener;

    :goto_9c
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/fragments/j;->m(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/j;->l(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v3, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v3, :cond_129

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    if-ne v0, v3, :cond_103

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->F:Lcom/spotify/mobile/android/ui/view/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/p;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i:Landroid/widget/Button;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/PlayerContentView$4;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$4;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_e5
    move v0, v2

    goto/16 :goto_16

    :cond_e8
    move v0, v1

    goto/16 :goto_20

    :cond_eb
    move v0, v1

    goto/16 :goto_38

    :cond_ee
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    sget-object v4, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->M:[I

    invoke-virtual {v0, v4, v3}, Landroid/widget/ImageButton;->setImageState([IZ)V

    goto/16 :goto_56

    :cond_f7
    move v0, v1

    goto/16 :goto_61

    :cond_fa
    move v3, v1

    goto/16 :goto_6e

    :cond_fd
    move v3, v1

    goto :goto_81

    :cond_ff
    move v3, v1

    goto :goto_8f

    :cond_101
    const/4 v3, 0x0

    goto :goto_9c

    :cond_103
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->F:Lcom/spotify/mobile/android/ui/view/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/p;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/PlayerContentView$5;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$5;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_129
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->F:Lcom/spotify/mobile/android/ui/view/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/p;->a()V

    goto/16 :goto_8
.end method

.method private j()V
    .registers 18

    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;

    invoke-direct/range {v16 .. v17}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$7;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->l:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->G:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->H:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->t:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->u:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->r:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->Q:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->I:Z

    invoke-static/range {v1 .. v14}, Lcom/spotify/mobile/android/model/m;->a(ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/model/n;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j()V

    return-void
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->u:Z

    return v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->t:Z

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->m:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_a
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i()V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->n:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->p:Ljava/lang/String;

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->q:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->r:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b:Z

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->s:Z

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->p:Ljava/lang/String;

    if-eqz v0, :cond_110

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_110

    move v0, v1

    :goto_64
    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->t:Z

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->r:Ljava/lang/String;

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_113

    :goto_7a
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->u:Z

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->v:Z

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->w:Z

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c:Z

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->P:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->Q:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->P:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->x:Landroid/net/Uri;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->y:Landroid/net/Uri;

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    const/16 v0, 0xf

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->C:Ljava/lang/String;

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->l:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->G:Z

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->H:Z

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->I:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    if-eqz v0, :cond_10b

    const-string v0, "ad_type"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->values()[Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->A:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v1, :cond_10b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/b;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/ads/b;->b()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->B:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    :cond_10b
    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i()V

    goto/16 :goto_10

    :cond_110
    move v0, v2

    goto/16 :goto_64

    :cond_113
    move v1, v2

    goto/16 :goto_7a
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->z:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_d
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_1b} :catch_25

    :goto_1b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->J:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/a;->b(Landroid/content/Context;)V

    return-void

    :catch_25
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open ad URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public final c()V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;-><init>(Landroid/content/Context;Z)V

    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->m:I

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_9
    return-void

    :cond_a
    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->R:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f:Landroid/view/View;

    const v0, 0x7f0a0361

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h:Landroid/view/View;

    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i:Landroid/widget/Button;

    const v0, 0x7f0a0364

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v0, Lcom/spotify/mobile/android/ui/view/q;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/q;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    :goto_5e
    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->F:Lcom/spotify/mobile/android/ui/view/p;

    const v0, 0x7f0a0360

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$1;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->E:Ljava/lang/String;

    const v0, 0x7f0a0362

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->O:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->O:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->e:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(I)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->D:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->i()V

    goto/16 :goto_9

    :cond_a8
    new-instance v0, Lcom/spotify/mobile/android/ui/view/r;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/view/r;-><init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    goto :goto_5e
.end method
