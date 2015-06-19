.class public Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_available"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasFocusable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0258

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->c:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->d:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->d:Lcom/spotify/mobile/android/ui/view/SpotifyImageView;

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/SpotifyImageView;->a(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/cell/TrackCoverCell;->getDefaultSize(II)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-nez v0, :cond_1d

    const/high16 v0, 0x4000

    move v1, v2

    :cond_1d
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v2, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
