.class public final Lcom/spotify/mobile/android/service/flow/login/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/spotify/mobile/android/service/flow/login/a/d;
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a/e;-><init>()V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/spotify/mobile/android/service/flow/login/a/d;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/c;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/a/c;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/flow/login/a/f;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0f0451

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/a/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;-><init>(Lcom/spotify/mobile/android/util/be;)V

    return-object v1
.end method
