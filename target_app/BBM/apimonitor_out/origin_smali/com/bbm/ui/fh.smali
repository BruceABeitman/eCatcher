.class final Lcom/bbm/ui/fh;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/fj;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Lcom/bbm/ui/QuickShareVoicenoteView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;Lcom/bbm/ui/fj;Landroid/media/MediaPlayer;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/fh;->c:Lcom/bbm/ui/QuickShareVoicenoteView;

    iput-object p2, p0, Lcom/bbm/ui/fh;->a:Lcom/bbm/ui/fj;

    iput-object p3, p0, Lcom/bbm/ui/fh;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/fh;->a:Lcom/bbm/ui/fj;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/fh;->a:Lcom/bbm/ui/fj;

    invoke-interface {v0}, Lcom/bbm/ui/fj;->a()V

    :cond_9
    iget-object v0, p0, Lcom/bbm/ui/fh;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
