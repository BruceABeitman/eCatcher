.class public final Lcom/spotify/mobile/android/ui/stuff/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a2

    aput v1, v0, v2

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/b;->a:[I

    new-array v0, v2, [I

    sput-object v0, Lcom/spotify/mobile/android/ui/stuff/b;->b:[I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/widget/ImageButton;
    .registers 7

    const/4 v5, 0x0

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->V:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ah:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const/high16 v2, 0x4200

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v2

    new-instance v3, Lcom/spotify/android/paste/graphics/f;

    invoke-direct {v3, p0, v0}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    invoke-direct {v0, p0, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    sget-object v4, Lcom/spotify/mobile/android/ui/stuff/b;->a:[I

    invoke-static {p0, v3}, Lcom/spotify/mobile/android/ui/stuff/b;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/spotify/mobile/android/ui/stuff/b;->b:[I

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/b;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setFocusable(Z)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setDuplicateParentStateEnabled(Z)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;
    .registers 5

    new-instance v0, Lcom/spotify/android/paste/graphics/d;

    const v1, 0x3f19999a

    invoke-direct {v0, p1, v1}, Lcom/spotify/android/paste/graphics/d;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const v1, 0x7f010188

    invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(I)V

    const v1, 0x7f01018f

    invoke-static {p0, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->b(I)V

    const/high16 v1, 0x4000

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/d;->a(F)V

    return-object v0
.end method
