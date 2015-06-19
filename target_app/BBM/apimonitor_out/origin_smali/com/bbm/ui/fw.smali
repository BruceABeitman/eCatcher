.class public final Lcom/bbm/ui/fw;
.super Lcom/bbm/ui/activities/ajz;
.source "SlideActivityLifeCycleListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/activities/ajy;)V
    .registers 4

    const v0, 0x7f04000d

    const v1, 0x7f04000f

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    return-void
.end method

.method public final c(Lcom/bbm/ui/activities/ajy;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7f04000e

    invoke-virtual {p1, v0, v1}, Lcom/bbm/ui/activities/ajy;->overridePendingTransition(II)V

    return-void
.end method
