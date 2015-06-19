.class final Lcom/spotify/mobile/android/ui/activity/upsell/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/a;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v2

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h()Lcom/spotify/mobile/android/util/cz;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v2

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h()Lcom/spotify/mobile/android/util/cz;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v3

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g()Lcom/spotify/mobile/android/util/cz;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v4

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f()Lcom/spotify/mobile/android/util/cz;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/util/cx;->c(Lcom/spotify/mobile/android/util/cz;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f()Lcom/spotify/mobile/android/util/cz;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_50
    if-nez v1, :cond_64

    const-string v1, "Ignore persisted state due to no trial duration"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_59
    :goto_59
    sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    :goto_5b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_64
    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    if-eqz v2, :cond_7c

    sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    :goto_74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_5b

    :cond_7c
    sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->c:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    goto :goto_74

    :cond_7f
    const-string v1, "Ignore persisted state due to username mismatch (%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v4}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->h()Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->g()Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->f()Lcom/spotify/mobile/android/util/cz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;)Lcom/spotify/mobile/android/util/cy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cy;->a()V

    goto :goto_59
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/a;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b(Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;Ljava/lang/String;I)V

    return-void
.end method
