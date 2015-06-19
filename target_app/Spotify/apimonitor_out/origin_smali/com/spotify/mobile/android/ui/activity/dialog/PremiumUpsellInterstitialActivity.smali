.class public Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "view_uri"

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->at:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "price"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "30_days_eligible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "trial_eligibility"

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a()Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "trial_duration_days"

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "view_uri"

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->as:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "price"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "30_days_eligible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "set_setting_to_false_on_destroy"

    const-string v2, "should_show_trial_end_notice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ag:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {p0, v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    const-string v0, "com.spotify.mobile.android.service.action.optintrial.START"

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "Setting %s to false"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->p:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->p:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2d
    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    const-wide/16 v4, 0x12c

    const/4 v13, 0x1

    const/4 v2, 0x0

    const/16 v12, 0x8

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "view_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const-string v0, "reason"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "price"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "set_setting_to_false_on_destroy"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->p:Ljava/lang/String;

    const-string v0, "30_days_eligible"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "trial_eligibility"

    sget-object v8, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->a:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    invoke-virtual {v8}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->ordinal()I

    move-result v8

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->values()[Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    move-result-object v8

    aget-object v8, v8, v0

    const-string v0, "trial_duration_days"

    const/4 v9, 0x7

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->setContentView(I)V

    const v0, 0x7f0a0223

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->q:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a022e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_75
    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0233

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_142

    const v3, 0x7f0f02ff

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v6, v10, v2

    invoke-virtual {p0, v3, v10}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ac
    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    const v1, 0x7f0a0231

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f0a0234

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f0a0228

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v6, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;->b:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask$State;

    if-ne v8, v6, :cond_150

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0013

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v0, v1, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_109
    if-nez p1, :cond_19a

    const v0, 0x7f0a0224

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v3, v2

    move-wide v1, v4

    :goto_11a
    if-ge v3, v6, :cond_19a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_13a

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v7, 0x32

    add-long/2addr v1, v7

    :cond_13a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11a

    :cond_13d
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_75

    :cond_142
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ac

    :cond_150
    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_181

    if-eqz v7, :cond_17d

    const v0, 0x7f0f02f1

    :goto_15b
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;Lcom/spotify/mobile/android/ui/actions/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_109

    :cond_17d
    const v0, 0x7f0f02f2

    goto :goto_15b

    :cond_181
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b008e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_109

    :cond_19a
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->n:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
