.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;
.super Lcom/loopj/android/http/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-direct {p0}, Lcom/loopj/android/http/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 7

    const-string v0, "Eligibility check failure: (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    const-string v0, "Eligibility check failure: (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p3, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 8

    const-string v0, "Eligibility check failure: (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method

.method public final a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "Eligibility check failure: (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method

.method public final a(ILorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0, p2}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .registers 4

    const-string v0, "Eligibility check failure, expected object got array"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d$2;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-static {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->c(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method
