.class public Lcom/millennialmedia/android/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/df;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMSDK"

    const-string v1, "Millennial Media Ad View overlay closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMSDK"

    const-string v1, "Millennial Media Ad View overlay launched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMSDK"

    const-string v1, "Millennial Media Ad View caching request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMSDK"

    const-string v1, "Ad tapped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/bo;)V
    .registers 4

    const-string v0, "MMSDK"

    const-string v1, "Ad request succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/bo;Lcom/millennialmedia/android/cc;)V
    .registers 8

    const-string v0, "MMSDK"

    const-string v1, "Ad request failed with error: %d %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/cc;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/cc;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
