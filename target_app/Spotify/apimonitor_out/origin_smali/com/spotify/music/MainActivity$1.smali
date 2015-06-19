.class final Lcom/spotify/music/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/fragments/logic/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/ui/fragments/logic/g",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/spotify/mobile/android/ui/fragments/logic/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/music/MainActivity$1;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->h(Lcom/spotify/music/MainActivity;)Lcom/spotify/music/a;

    move-result-object v0

    new-instance v1, Lcom/spotify/music/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/spotify/music/MainActivity$1$1;-><init>(Lcom/spotify/music/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/spotify/music/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
