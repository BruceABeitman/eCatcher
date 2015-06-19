.class public Lcom/spotify/mobile/android/service/flow/login/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/util/be;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/spotify/mobile/android/service/flow/login/ae;)V
    .registers 12

    const v0, 0x7f0f0451

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/service/flow/login/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/spotify/mobile/android/service/flow/login/ae;Lcom/spotify/mobile/android/util/be;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/spotify/mobile/android/service/flow/login/ae;Lcom/spotify/mobile/android/util/be;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/be;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ad;->a:Lcom/spotify/mobile/android/util/be;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suggest"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "validate"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2d

    const-string v1, "username"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    if-eqz p3, :cond_38

    const-string v1, "birthday"

    invoke-static {p3}, Lcom/spotify/mobile/android/util/an;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ad;->a:Lcom/spotify/mobile/android/util/be;

    const-string v2, ""

    new-instance v3, Lcom/spotify/mobile/android/service/flow/login/af;

    invoke-direct {v3, p4}, Lcom/spotify/mobile/android/service/flow/login/af;-><init>(Lcom/spotify/mobile/android/service/flow/login/ae;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/spotify/mobile/android/util/be;->b(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V

    return-void
.end method
