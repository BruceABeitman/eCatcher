.class public final Lcom/spotify/mobile/android/ui/adapter/e;
.super Lcom/spotify/mobile/android/ui/adapter/b;
.source "SourceFile"


# static fields
.field public static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

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

    sput-object v0, Lcom/spotify/mobile/android/ui/adapter/e;->l:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/spotify/mobile/android/ui/adapter/c;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/b;-><init>(Landroid/content/Context;ILcom/spotify/mobile/android/ui/adapter/c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v1

    new-instance v2, Lcom/spotify/android/paste/graphics/f;

    sget-object v3, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v2, v0, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    const v3, 0x7f010187

    invoke-static {v0, v3}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v4, 0x4190

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/e;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/spotify/android/paste/widget/ListItemView;->setPadding(IIII)V

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setFocusable(Z)V

    return-object v1
.end method

.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 6

    check-cast p1, Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {p1}, Lcom/spotify/android/paste/widget/ListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0f02d0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-static {p2, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
