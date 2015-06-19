.class final Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/dg;)Lcom/spotify/mobile/android/util/dg;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/dg;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/dg;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->a:Lcom/spotify/mobile/android/util/dg;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->a:Lcom/spotify/mobile/android/util/dg;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->a:Lcom/spotify/mobile/android/util/dg;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/util/dg;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    const-class v1, Lcom/spotify/mobile/android/ui/stuff/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/spotify/mobile/android/ui/stuff/a;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_2c
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method
