.class final Lcom/spotify/mobile/android/spotlets/search/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/b/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/b;->F()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$4;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Z
    .registers 5

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$4;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$4;->a:Lcom/spotify/mobile/android/spotlets/search/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/b;->F()V

    const/4 v0, 0x1

    goto :goto_7
.end method
