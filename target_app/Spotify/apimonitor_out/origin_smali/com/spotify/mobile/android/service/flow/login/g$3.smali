.class final Lcom/spotify/mobile/android/service/flow/login/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/k;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/g;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    const/4 v2, 0x0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/g;->b(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "in_available_market"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    const-string v2, "sign_in"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    const-string v2, "sign_up"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/g;->b(Lcom/spotify/mobile/android/service/flow/login/g;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_48} :catch_62

    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/flow/login/g;->b(Lcom/spotify/mobile/android/service/flow/login/g;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/login/g;->c(Lcom/spotify/mobile/android/service/flow/login/g;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;ZZ)V

    return-void

    :catch_62
    move-exception v0

    goto :goto_48
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$3;->a:Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v0, v1, v1}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/g;ZZ)V

    return-void
.end method
