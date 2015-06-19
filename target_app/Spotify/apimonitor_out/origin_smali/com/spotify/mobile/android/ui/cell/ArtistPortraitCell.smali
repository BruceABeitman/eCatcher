.class public Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public b:I

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

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

    const-string v2, "image_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_available"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_radio_available"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "collection_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "offline_state"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sync_progress"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasFocusable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 6

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const/4 v1, -0x1

    iget v2, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->b:I

    int-to-long v2, v2

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {p0, p1, p0, v0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->c:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->e:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/high16 v1, 0x4000

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->getDefaultSize(II)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v2, :cond_2d

    move v2, v3

    :goto_1d
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void

    :cond_2d
    if-nez v0, :cond_34

    move v0, v1

    move v3, v4

    move v1, v2

    move v2, v4

    goto :goto_1d

    :cond_34
    move v1, v2

    move v2, v4

    goto :goto_1d
.end method

.method public setPressed(Z)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/ArtistPortraitCell;->e:Landroid/view/View;

    if-eqz p1, :cond_c

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    return-void

    :cond_c
    const/16 v0, 0x8

    goto :goto_5
.end method
