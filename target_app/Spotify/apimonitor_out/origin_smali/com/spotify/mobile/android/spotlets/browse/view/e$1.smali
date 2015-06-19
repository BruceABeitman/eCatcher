.class final Lcom/spotify/mobile/android/spotlets/browse/view/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/view/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

.field final synthetic b:Lcom/spotify/mobile/android/a/a;

.field final synthetic c:Lcom/spotify/mobile/android/spotlets/browse/view/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/e;Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;Lcom/spotify/mobile/android/a/a;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->c:Lcom/spotify/mobile/android/spotlets/browse/view/e;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->a:Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/a/a;->b()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/e$1;->b:Lcom/spotify/mobile/android/a/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/a/a;->a()V

    goto :goto_d
.end method
