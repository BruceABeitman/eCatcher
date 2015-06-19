.class final Lcom/spotify/mobile/android/service/c/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/c/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/c/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 7

    const v3, 0x7f0a0329

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->e:Z

    if-eqz v0, :cond_26

    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    const-string v2, "setImageBitmap"

    invoke-virtual {v0, v3, v2, p1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_26
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    const-string v1, "setImageBitmap"

    invoke-virtual {v0, v3, v1, p1}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/c/d;->c:Lcom/spotify/mobile/android/service/c/b;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/c/b;->a(ILandroid/app/Notification;)V

    goto :goto_b
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const v3, 0x7f0a0329

    const v2, 0x7f020073

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->e:Z

    if-eqz v0, :cond_27

    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_27
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/c/d;->c:Lcom/spotify/mobile/android/service/c/b;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/d$2;->a:Lcom/spotify/mobile/android/service/c/d;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/c/d;->a(Lcom/spotify/mobile/android/service/c/d;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/service/c/b;->a(ILandroid/app/Notification;)V

    goto :goto_e
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method
