.class public final Lcom/spotify/mobile/android/util/tracking/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ARG_VIEW_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "TYPE_VIEW_VISIBILITY"

    const-string v1, "EVENT_VIEW_APPEAR"

    invoke-static {p1}, Lcom/spotify/mobile/android/util/tracking/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const-string v0, "TYPE_VIEW_VISIBILITY"

    const-string v1, "EVENT_VIEW_DISAPPEAR"

    invoke-static {p1}, Lcom/spotify/mobile/android/util/tracking/k;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/tracking/TrackingService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
