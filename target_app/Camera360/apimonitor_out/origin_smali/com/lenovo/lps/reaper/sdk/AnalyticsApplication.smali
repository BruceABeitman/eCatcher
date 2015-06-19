.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsApplication;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->smartInitialize(Landroid/content/Context;)V

    return-void
.end method
