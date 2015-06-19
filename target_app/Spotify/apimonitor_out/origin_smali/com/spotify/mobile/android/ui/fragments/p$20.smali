.class final Lcom/spotify/mobile/android/ui/fragments/p$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->r(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;->b:Lcom/spotify/mobile/android/provider/Metadata$Track$AdType;

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->s(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;->b:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$AdOfferType;

    if-ne v0, v1, :cond_25

    new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;-><init>(Landroid/content/Context;Z)V

    const-string v1, "test"

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/AdEventReporter;->a(Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->t(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->u(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->u(Lcom/spotify/mobile/android/ui/fragments/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/a;->b(Landroid/content/Context;)V

    goto :goto_25

    :cond_5f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->v(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/model/c;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->v(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/model/c;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$20;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->w(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Intent;)V

    goto :goto_25
.end method
