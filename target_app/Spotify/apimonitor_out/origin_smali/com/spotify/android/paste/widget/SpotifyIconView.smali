.class public Lcom/spotify/android/paste/widget/SpotifyIconView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

.field private b:Lcom/spotify/android/paste/graphics/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/spotify/android/paste/widget/SpotifyIconView;->c:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x61t 0x1t 0x1t 0x1t
        0x62t 0x1t 0x1t 0x1t
        0x63t 0x1t 0x1t 0x1t
        0x64t 0x1t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/SpotifyIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/SpotifyIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    const/4 v3, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->b:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iput-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const-class v0, Lcom/spotify/android/paste/widget/SpotifyIconView;

    invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    sget-object v0, Lcom/spotify/android/paste/e;->y:[I

    invoke-virtual {p1, p2, v0, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v8, :cond_24

    invoke-static {}, Lcom/spotify/android/paste/graphics/SpotifyIcon;->values()[Lcom/spotify/android/paste/graphics/SpotifyIcon;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    :cond_24
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/spotify/android/paste/widget/SpotifyIconView;->c:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SpotifyIconView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v6, v7}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    iput-object v1, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    iget-object v1, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    if-eqz v0, :cond_65

    :goto_57
    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/SpotifyIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/spotify/android/paste/graphics/f;->a(FFFI)V

    return-void

    :cond_65
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_57
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    return-void
.end method

.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    iget-object v0, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->b:Lcom/spotify/android/paste/graphics/f;

    iget-object v1, p0, Lcom/spotify/android/paste/widget/SpotifyIconView;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call this method in SpotifyIconView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    instance-of v0, p1, Lcom/spotify/android/paste/graphics/f;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Drawable must be instance of SpotifyIconDrawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call this method in SpotifyIconView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
