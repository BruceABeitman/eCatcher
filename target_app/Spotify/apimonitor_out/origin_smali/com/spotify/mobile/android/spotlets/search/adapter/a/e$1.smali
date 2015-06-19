.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 6

    check-cast p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->uri:Ljava/lang/String;

    iget-object v2, p2, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/adapter/a/e;->a:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->j_()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method
