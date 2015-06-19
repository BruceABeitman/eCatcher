.class public abstract Lcom/lenovo/lps/reaper/sdk/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public run()V
    .registers 3

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isPermitReportData()Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "AbstractReaperHttpRequestTask"

    const-string/jumbo v1, "traffic is not permitted."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/s;->a()Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "AbstractReaperHttpRequestTask"

    const-string/jumbo v1, "network is not ok."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;->a()V

    goto :goto_13
.end method
