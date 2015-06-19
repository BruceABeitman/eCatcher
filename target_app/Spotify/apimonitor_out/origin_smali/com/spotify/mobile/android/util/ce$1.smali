.class final Lcom/spotify/mobile/android/util/ce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/ce;-><init>(Lcom/spotify/mobile/android/util/cf;Lcom/spotify/mobile/android/service/flow/logic/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/ce;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pli"

    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "pli_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pre-launch interest: country=%s, pli=%s, pli_url=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_6a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/ce;->a(Lcom/spotify/mobile/android/util/ce;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/ce;->a(Lcom/spotify/mobile/android/util/ce;Ljava/lang/String;)Ljava/lang/String;

    :goto_3f
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ce;->a(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cf;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ce;->a(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/ce;->b(Lcom/spotify/mobile/android/util/ce;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v2}, Lcom/spotify/mobile/android/util/ce;->c(Lcom/spotify/mobile/android/util/ce;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/util/cf;->a(ZLjava/lang/String;)V

    :cond_60
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ce;->d(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->e()V

    return-void

    :cond_6a
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/ce;->a(Lcom/spotify/mobile/android/util/ce;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_3f
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ce$1;->a:Lcom/spotify/mobile/android/util/ce;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ce;->d(Lcom/spotify/mobile/android/util/ce;)Lcom/spotify/mobile/android/util/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->f()V

    return-void
.end method
