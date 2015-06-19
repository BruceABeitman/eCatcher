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


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "referrer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->b:Landroid/content/Context;

    :goto_c
    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    if-nez v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/analytics/CampaignTrackingService;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/CampaignTrackingService;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/InstallReferrerService;->a:Lcom/google/android/gms/analytics/CampaignTrackingService;

    invoke-static {v0, p1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/InstallReferrerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c
.end method
