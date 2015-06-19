.class final Lcom/spotify/mobile/android/util/bj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/util/bj;->a(Ljava/lang/String;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Exception when logging over https: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Log message: %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
