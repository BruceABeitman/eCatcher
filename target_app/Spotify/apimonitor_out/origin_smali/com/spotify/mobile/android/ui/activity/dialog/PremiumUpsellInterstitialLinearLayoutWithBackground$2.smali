.class final Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$2;->a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground$2;->a:Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialLinearLayoutWithBackground;->invalidate()V

    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    return-void
.end method
