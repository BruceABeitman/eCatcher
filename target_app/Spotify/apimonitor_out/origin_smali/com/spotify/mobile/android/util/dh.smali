.class public final Lcom/spotify/mobile/android/util/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/ai;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private b:Lcom/spotify/mobile/android/util/dg;

.field private c:Lcom/squareup/picasso/f;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/dh;->b:Lcom/spotify/mobile/android/util/dg;

    iput-boolean p3, p0, Lcom/spotify/mobile/android/util/dh;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->c:Lcom/squareup/picasso/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->c:Lcom/squareup/picasso/f;

    invoke-interface {v0}, Lcom/squareup/picasso/f;->a()V

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/dh;->b:Lcom/spotify/mobile/android/util/dg;

    invoke-interface {v1, p1}, Lcom/spotify/mobile/android/util/dg;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/spotify/mobile/android/util/dh;->d:Z

    invoke-static {v0, v1, p2, v2}, Lcom/spotify/mobile/android/util/bk;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/squareup/picasso/Picasso$LoadedFrom;Z)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->c:Lcom/squareup/picasso/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->c:Lcom/squareup/picasso/f;

    invoke-interface {v0}, Lcom/squareup/picasso/f;->b()V

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method final a(Lcom/spotify/mobile/android/util/dg;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dh;->b:Lcom/spotify/mobile/android/util/dg;

    return-void
.end method

.method final a(Lcom/squareup/picasso/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/dh;->c:Lcom/squareup/picasso/f;

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/util/bk;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lcom/spotify/mobile/android/util/dh;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/spotify/mobile/android/util/dh;

    iget-object v1, p1, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/spotify/mobile/android/util/dh;->b:Lcom/spotify/mobile/android/util/dg;

    iget-object v2, p0, Lcom/spotify/mobile/android/util/dh;->b:Lcom/spotify/mobile/android/util/dg;

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dh;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
