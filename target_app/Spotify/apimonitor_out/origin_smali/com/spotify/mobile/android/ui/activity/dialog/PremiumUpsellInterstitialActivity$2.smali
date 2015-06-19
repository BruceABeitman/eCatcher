.class final Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->a(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->finish()V

    return-void
.end method
