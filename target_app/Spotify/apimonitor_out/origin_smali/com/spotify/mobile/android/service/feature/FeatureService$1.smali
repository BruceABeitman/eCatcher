.class final Lcom/spotify/mobile/android/service/feature/FeatureService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/session/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/feature/FeatureService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/feature/FeatureService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/feature/FeatureService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$1;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
    .registers 5

    const-string v0, "Session state changed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$1;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/feature/FeatureService;->a(Lcom/spotify/mobile/android/service/feature/FeatureService;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/feature/FeatureService$1;->a:Lcom/spotify/mobile/android/service/feature/FeatureService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/feature/FeatureService;->a(Lcom/spotify/mobile/android/service/feature/FeatureService;)V

    return-void
.end method
