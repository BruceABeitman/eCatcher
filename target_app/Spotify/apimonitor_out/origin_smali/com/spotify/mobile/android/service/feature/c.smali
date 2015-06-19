.class public final Lcom/spotify/mobile/android/service/feature/c;
.super Lcom/spotify/mobile/android/service/connections/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/connections/f",
        "<",
        "Lcom/spotify/mobile/android/service/feature/a;",
        "Lcom/spotify/mobile/android/service/feature/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/service/connections/f;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->b(Landroid/os/Bundle;)V

    return-void
.end method
