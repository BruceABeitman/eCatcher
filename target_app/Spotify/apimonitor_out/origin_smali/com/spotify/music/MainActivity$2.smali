.class final Lcom/spotify/music/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$2;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 3

    iget-object v0, p0, Lcom/spotify/music/MainActivity$2;->a:Lcom/spotify/music/MainActivity;

    invoke-virtual {v0}, Lcom/spotify/music/MainActivity;->d()Lcom/spotify/mobile/android/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/spotify/mobile/android/model/l;

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    check-cast v0, Lcom/spotify/mobile/android/model/l;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/l;->g_()Landroid/net/Uri;

    move-result-object v0

    goto :goto_f
.end method
