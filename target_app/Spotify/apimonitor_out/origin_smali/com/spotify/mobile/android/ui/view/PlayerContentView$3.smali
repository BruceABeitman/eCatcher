.class final Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/PlayerContentView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->k(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->l(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b()V

    goto :goto_19

    :cond_28
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->c(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->d(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_38
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$3;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    goto :goto_19
.end method
