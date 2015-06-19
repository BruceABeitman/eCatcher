.class final Lcom/spotify/mobile/android/spotlets/collection/adapter/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/f",
        "<",
        "Lcom/spotify/mobile/android/model/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Lcom/spotify/mobile/android/model/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b$1;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->a(Lcom/spotify/mobile/android/spotlets/collection/adapter/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/l;->a(Lcom/spotify/mobile/android/model/b;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/j;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/i;->a(Z)Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V

    return-void
.end method
