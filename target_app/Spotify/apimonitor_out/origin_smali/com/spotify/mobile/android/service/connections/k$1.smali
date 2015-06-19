.class final Lcom/spotify/mobile/android/service/connections/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/connections/k;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/k;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/k;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/k;->a(Lcom/spotify/mobile/android/service/connections/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/connections/k;->b(Lcom/spotify/mobile/android/service/connections/k;)Lcom/spotify/mobile/android/service/connections/l;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/spotify/mobile/android/service/connections/l;->a(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/k;->b(Lcom/spotify/mobile/android/service/connections/k;)Lcom/spotify/mobile/android/service/connections/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/connections/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/k;->a(Lcom/spotify/mobile/android/service/connections/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/connections/k$1;->a:Lcom/spotify/mobile/android/service/connections/k;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/connections/k;->b(Lcom/spotify/mobile/android/service/connections/k;)Lcom/spotify/mobile/android/service/connections/l;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/spotify/mobile/android/service/connections/l;->b(Ljava/lang/Object;)V

    goto :goto_16

    :cond_2a
    return-void
.end method
