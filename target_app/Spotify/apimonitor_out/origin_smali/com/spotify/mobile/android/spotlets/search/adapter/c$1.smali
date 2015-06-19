.class final Lcom/spotify/mobile/android/spotlets/search/adapter/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(Lcom/spotify/mobile/android/spotlets/search/adapter/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
