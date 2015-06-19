.class public final Lcom/google/android/gms/tagmanager/InstallReferrerService;
.super Landroid/app/IntentService;


# instance fields
.field a:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "InstallReferrerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/analytics/CampaignTrackingService;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/CampaignTrackingService;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    :goto_c
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/ao;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/InstallReferrerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c
.end method
