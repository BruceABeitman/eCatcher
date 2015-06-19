.class public final Lcom/instagram/android/feed/a/b/m;
.super Ljava/lang/Object;
.source "MediaHeaderViewBinder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/s;

.field private final c:Lcom/instagram/feed/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/s;Lcom/instagram/feed/g/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/m;->b:Landroid/support/v4/app/s;

    iput-object p3, p0, Lcom/instagram/android/feed/a/b/m;->c:Lcom/instagram/feed/g/a;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/b/m;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_feed_media_profile_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/m;->a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Landroid/view/View;)Lcom/instagram/android/feed/a/b/r;
    .registers 3

    new-instance v1, Lcom/instagram/android/feed/a/b/r;

    invoke-direct {v1}, Lcom/instagram/android/feed/a/b/r;-><init>()V

    sget v0, Lcom/facebook/av;->row_feed_profile_header:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->a:Landroid/view/View;

    sget v0, Lcom/facebook/av;->row_feed_photo_profile_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    sget v0, Lcom/facebook/av;->row_feed_photo_profile_name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->c:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_feed_photo_profile_metalabel_glyph:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/av;->row_feed_photo_profile_metalabel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_feed_photo_location:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    sget v0, Lcom/facebook/av;->row_feed_photo_location_glyph:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    return-object v1
.end method

.method private a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->O()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->feed_location:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/feed/a/b/n;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/a/b/n;-><init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_28
    return-void

    :cond_29
    iget-object v1, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->feed_location_grey:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_28
.end method

.method static synthetic b(Lcom/instagram/android/feed/a/b/m;)Lcom/instagram/feed/g/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->c:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method private b(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V
    .registers 6

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    sget v2, Lcom/facebook/au;->feed_location:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    sget v2, Lcom/facebook/as;->accent_blue_medium:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/feed/a/b/o;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/a/b/o;-><init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/instagram/android/feed/a/b/m;)Landroid/support/v4/app/s;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->b:Landroid/support/v4/app/s;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/an;Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;Z)V
    .registers 10

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    new-instance v1, Lcom/instagram/android/feed/a/b/p;

    invoke-direct {v1, p0, p3}, Lcom/instagram/android/feed/a/b/p;-><init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/instagram/feed/d/t;->a()Lcom/instagram/feed/d/t;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/instagram/feed/d/t;->a(Lcom/instagram/feed/d/l;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->c:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->A()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ab

    iget-object v1, p2, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p2, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p2, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->M()I

    move-result v0

    sget v1, Lcom/instagram/feed/d/n;->c:I

    if-ne v0, v1, :cond_9f

    invoke-direct {p0, p2, p3}, Lcom/instagram/android/feed/a/b/m;->b(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V

    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/m;->c:Lcom/instagram/feed/g/a;

    invoke-static {p3, v0}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->blue_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/feed/a/b/q;

    invoke-direct {v1, p0, p3}, Lcom/instagram/android/feed/a/b/q;-><init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->ab()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->feed_sponsored:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9e
    return-void

    :cond_9f
    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->M()I

    move-result v0

    sget v1, Lcom/instagram/feed/d/n;->b:I

    if-ne v0, v1, :cond_60

    invoke-direct {p0, p2, p3}, Lcom/instagram/android/feed/a/b/m;->a(Lcom/instagram/android/feed/a/b/r;Lcom/instagram/feed/d/l;)V

    goto :goto_60

    :cond_ab
    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_60

    :cond_b6
    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9e

    :cond_bc
    if-eqz p4, :cond_ed

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->h:Lcom/instagram/user/follow/FollowButton;

    if-nez v0, :cond_de

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->a:Landroid/view/View;

    sget v1, Lcom/facebook/av;->row_feed_photo_follow_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/FollowButton;

    iput-object v0, p2, Lcom/instagram/android/feed/a/b/r;->h:Lcom/instagram/user/follow/FollowButton;

    :cond_de
    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->h:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {v0, v3}, Lcom/instagram/user/follow/FollowButton;->setVisibility(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->h:Lcom/instagram/user/follow/FollowButton;

    invoke-virtual {p3}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/instagram/user/follow/FollowButton;->a(Lcom/instagram/user/c/a;Landroid/support/v4/app/an;)V

    goto :goto_9e

    :cond_ed
    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/m;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/as;->grey_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/au;->feed_clock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p2, Lcom/instagram/android/feed/a/b/r;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9e
.end method
