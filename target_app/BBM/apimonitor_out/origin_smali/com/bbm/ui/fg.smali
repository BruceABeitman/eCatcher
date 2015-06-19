.class final Lcom/bbm/ui/fg;
.super Ljava/lang/Object;
.source "QuickShareVoicenoteView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:Lcom/bbm/ui/QuickShareVoicenoteView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;Landroid/media/MediaPlayer;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/fg;->b:Lcom/bbm/ui/QuickShareVoicenoteView;

    iput-object p2, p0, Lcom/bbm/ui/fg;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/fg;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/bbm/ui/fg;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
