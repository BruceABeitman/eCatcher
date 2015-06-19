.class final Lcom/spotify/mobile/android/ui/contextmenu/delegates/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/contextmenu/b/c/b",
        "<",
        "Lcom/spotify/mobile/android/ui/contextmenu/b/b/b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V

    return-void
.end method
