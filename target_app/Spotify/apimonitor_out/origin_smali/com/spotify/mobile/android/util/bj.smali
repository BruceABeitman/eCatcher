.class public final Lcom/spotify/mobile/android/util/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
    .registers 9

    const/4 v5, 0x3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s\t%d\t%s\t%s\t%s\t%s\t%s\t\t\t%s"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ClientEvent"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/ViewUri$SubView;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/ClientEvent;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/ClientEvent;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/ClientEvent;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/spotify/mobile/android/util/ClientEvent;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bj;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/util/dz;J)V
    .registers 15

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {}, Lcom/spotify/mobile/android/util/ao;->j()Lcom/spotify/mobile/android/util/ap;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Android OS %s API %d (%s, %s, %.1f)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {}, Lcom/spotify/mobile/android/util/ao;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/spotify/mobile/android/util/ap;->d:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v1, v1, Lcom/spotify/mobile/android/util/ap;->b:Ljava/lang/String;

    aput-object v1, v4, v10

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->d()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v11

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->f()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->g()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_47
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s\t%d\t%s\t%d\t%s\t%s\t%s\t%s\t"

    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "ViewExternal"

    aput-object v0, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/dz;->c()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/dz;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v0, 0x5

    aput-object v2, v5, v0

    const/4 v2, 0x6

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x7

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/bj;->a(Ljava/lang/String;)V

    return-void

    :cond_8c
    const-string v0, "00000000000000000000000000000000"

    move-object v1, v0

    goto :goto_47
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "m"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://log.spotify.com"

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Doing insecure logging over HTTP and not HTTPS"

    invoke-static {v1, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    const-string v1, "https://log.spotify.com"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Lcom/spotify/mobile/android/util/bj$1;

    invoke-direct {v3}, Lcom/spotify/mobile/android/util/bj$1;-><init>()V

    invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bi;)V

    return-void
.end method
