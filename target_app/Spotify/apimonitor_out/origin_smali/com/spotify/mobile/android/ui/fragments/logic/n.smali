.class public final Lcom/spotify/mobile/android/ui/fragments/logic/n;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:I

.field private ad:Lcom/spotify/a/a;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/content/Intent;

.field private aj:Landroid/content/Intent;

.field private ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

.field private al:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "trial_length"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "trial_time_remaining"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "trial_dialog_shown"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trial_ending_dialog_shown"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "trial_active"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "post_trial_active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "has_wifi_streaming"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "will_have_wifi_streaming"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hide_trial"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f:Z

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i:Z

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->al:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->am:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic D()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ac:I

    return p1
.end method

.method private a(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wifi_streaming"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shuffle_streaming"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Y:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "streaming"

    iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Lcom/spotify/mobile/android/g/a;)Lcom/spotify/mobile/android/g/a;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ah:Lcom/spotify/mobile/android/g/a;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;J)V
    .registers 8

    const/4 v4, 0x0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.spotify.music.spotlets.optintrial.action.TRIAL_REMINDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    if-nez v0, :cond_30

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->c()V

    :cond_30
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/n;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->af:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Y:Z

    return p1
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/logic/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ag:Z

    return p1
.end method

.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ab:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
    .registers 7

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Z:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ab:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ah:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ah:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_26
    if-eqz v0, :cond_32

    const-string v0, "Session state out of date (want to show trial ended dialog while product is premium)"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    move v0, v2

    goto :goto_26

    :cond_32
    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Y:Z

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0014

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->af:Ljava/lang/String;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/di;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/PremiumUpsellInterstitialActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    :goto_5b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    goto :goto_2f

    :cond_65
    const-string v0, "trial_remaining"

    invoke-direct {p0, v0, v2}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    goto :goto_5b
.end method

.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aa:Z

    return v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/logic/n;)V
    .registers 4

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Z:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aa:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    if-nez v0, :cond_39

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Y:Z

    if-eqz v0, :cond_3a

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    const-string v1, "trial_length"

    iget v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ac:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_30
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_39
    return-void

    :cond_3a
    const-string v0, "trial_length"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ac:I

    invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    goto :goto_30
.end method

.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->Z:Z

    return v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    return-object v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/logic/n;)Lcom/spotify/mobile/android/g/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ah:Lcom/spotify/mobile/android/g/a;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    if-ne p1, v0, :cond_e

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    :cond_a
    :goto_a
    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V

    return-void

    :cond_e
    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    if-ne p1, v0, :cond_a

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    goto :goto_a
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_4f

    const-string v0, "display_trial"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    const-string v0, "dialog_shown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    const-string v0, "dialog_ended_shown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    const-string v0, "reminder_added"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f:Z

    const-string v0, "start_request_code"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    const-string v0, "end_request_code"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    const-string v0, "has_wifi_streaming"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i:Z

    const-string v0, "trial_start_request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    const-string v0, "trial_end_request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    :cond_4f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01b6

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->al:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a01b7

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->am:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    new-instance v0, Lcom/spotify/a/a;

    const-string v1, "NTX_end_of_trial_interstitial"

    invoke-direct {v0, v1}, Lcom/spotify/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ad:Lcom/spotify/a/a;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Lcom/spotify/mobile/android/util/DialogPresenter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_15
    return-void
.end method

.method public final c()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Landroid/content/Intent;I)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ai:Landroid/content/Intent;

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/n;->a(Landroid/content/Intent;I)V

    iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->aj:Landroid/content/Intent;

    goto :goto_e
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "display_trial"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialog_shown"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialog_ended_shown"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "reminder_added"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "start_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "end_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "has_wifi_streaming"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "trial_start_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "trial_end_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/n;->ak:Lcom/spotify/mobile/android/ui/activity/upsell/CheckOptInTrialEligibilityTask;

    :cond_f
    return-void
.end method
