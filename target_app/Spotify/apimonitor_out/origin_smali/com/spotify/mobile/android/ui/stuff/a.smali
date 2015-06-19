.class public final Lcom/spotify/mobile/android/ui/stuff/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 11

    const v6, 0x3f19999a

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->k:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    sget-object v1, Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;->d:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-instance v4, Lcom/spotify/android/paste/graphics/f;

    int-to-float v5, p2

    mul-float/2addr v5, v6

    invoke-direct {v4, p0, v0, v5}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V

    invoke-virtual {v4, v2}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    new-instance v0, Lcom/spotify/android/paste/graphics/d;

    invoke-direct {v0, v4, v6}, Lcom/spotify/android/paste/graphics/d;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/graphics/d;->a(I)V

    invoke-static {}, Lcom/spotify/android/paste/graphics/BadgedDrawable;->a()Lcom/spotify/android/paste/graphics/c;

    move-result-object v2

    iput-object v1, v2, Lcom/spotify/android/paste/graphics/c;->a:Lcom/spotify/android/paste/graphics/BadgedDrawable$BadgePosition;

    iput p3, v2, Lcom/spotify/android/paste/graphics/c;->d:I

    iput p3, v2, Lcom/spotify/android/paste/graphics/c;->e:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/spotify/android/paste/graphics/c;->f:Z

    new-instance v1, Lcom/spotify/android/paste/graphics/BadgedDrawable;

    invoke-direct {v1, p1, v0, v2}, Lcom/spotify/android/paste/graphics/BadgedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/spotify/android/paste/graphics/c;)V

    return-object v1
.end method
