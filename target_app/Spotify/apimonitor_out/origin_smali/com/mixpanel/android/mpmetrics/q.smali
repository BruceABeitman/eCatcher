.class final Lcom/mixpanel/android/mpmetrics/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/l;

.field private b:Z

.field private c:Ljava/lang/Integer;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/q;->b:Z

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/q;->d:J

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/q;->a:Lcom/mixpanel/android/mpmetrics/l;

    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/q;)Lcom/mixpanel/android/mpmetrics/l;
    .registers 2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q;->a:Lcom/mixpanel/android/mpmetrics/l;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mixpanel/android/mpmetrics/q;->b:Z

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q;->a:Lcom/mixpanel/android/mpmetrics/l;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v2

    new-instance v3, Lcom/mixpanel/android/mpmetrics/q$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/mixpanel/android/mpmetrics/q$1;-><init>(Lcom/mixpanel/android/mpmetrics/q;JLandroid/app/Activity;)V

    invoke-interface {v2, v3, p1}, Lcom/mixpanel/android/mpmetrics/o;->a(Lcom/mixpanel/android/mpmetrics/x;Landroid/app/Activity;)V

    goto :goto_2
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/q;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/q;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_2b

    const/4 v0, 0x1

    :goto_17
    if-nez v0, :cond_22

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/q;->a(Landroid/app/Activity;)V

    :cond_22
    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/q;->c:Ljava/lang/Integer;

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/q;->b:Z

    if-nez v0, :cond_1d

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/q;->c:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/q;->a(Landroid/app/Activity;)V

    :cond_1d
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
