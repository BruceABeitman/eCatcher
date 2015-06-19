.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    move-result-object v0

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;

    if-eqz v0, :cond_3e

    const-string v0, "Opening intent: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    move-result-object v2

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;

    move-result-object v1

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_36
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(J)V

    return-void

    :cond_3e
    const-string v0, "No intent to open"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36
.end method
