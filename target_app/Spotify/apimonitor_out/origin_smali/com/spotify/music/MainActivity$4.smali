.class final Lcom/spotify/music/MainActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/feature/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$4;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity$4;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->h(Lcom/spotify/music/MainActivity;)Lcom/spotify/music/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/music/a;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/spotify/music/MainActivity$4;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/spotify/music/MainActivity$4;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->D()V

    :cond_1b
    return-void
.end method
