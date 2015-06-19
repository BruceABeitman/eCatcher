.class public final Lcom/spotify/mobile/android/ui/stuff/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/i;-><init>(B)V

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/h;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cM:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/stuff/h;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<TT;>;TT;)",
            "Landroid/view/View;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cM:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/stuff/h$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/spotify/mobile/android/ui/stuff/h$1;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/widget/ImageButton;
    .registers 7

    const/4 v4, 0x0

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    invoke-direct {v0, p0, p1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    const v1, 0x7f010187

    invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V

    const/high16 v1, 0x41c0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    new-instance v1, Landroid/widget/ImageButton;

    const/4 v2, 0x0

    const v3, 0x7f0101bb

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setFocusable(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;
    .registers 5

    new-instance v0, Lcom/spotify/android/paste/graphics/d;

    const v1, 0x3f19999a

    invoke-direct {v0, p1, v1}, Lcom/spotify/android/paste/graphics/d;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(Landroid/content/res/ColorStateList;)V

    const/high16 v1, 0x4000

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(F)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<TT;>;TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/ui/stuff/h$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/spotify/mobile/android/ui/stuff/h$2;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
