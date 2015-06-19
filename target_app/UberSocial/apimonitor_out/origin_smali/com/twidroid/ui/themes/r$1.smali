.class Lcom/twidroid/ui/themes/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/r;->a(Landroid/content/res/AssetFileDescriptor;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/themes/r;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/themes/r;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/themes/r$1;->a:Lcom/twidroid/ui/themes/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    return-void
.end method
