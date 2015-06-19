.class Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;
.super Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->onServiceConnected(Lcom/spotify/cosmos/android/Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver",
        "<",
        "Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;Landroid/os/Handler;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonHttpCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
    .registers 5

    const-string v0, "Failed checking trial eligibility"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method

.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
    .registers 7

    check-cast p2, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;

    invoke-virtual {p2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->isViable()Z

    move-result v1

    invoke-virtual {p2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$EligibilityResponse;->getTrialDurationDays()I

    move-result v2

    if-eqz v1, :cond_5c

    sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    :goto_e
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->e()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h()Lcom/spotify/mobile/android/util/cz;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1$1;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f()Lcom/spotify/mobile/android/util/cz;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    return-void

    :cond_5c
    sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->c:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    goto :goto_e
.end method
