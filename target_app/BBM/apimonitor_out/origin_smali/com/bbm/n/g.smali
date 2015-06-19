.class final Lcom/bbm/n/g;
.super Ljava/lang/Object;
.source "MediaCallManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer;

.field final synthetic b:Lcom/bbm/n/b;


# direct methods
.method constructor <init>(Lcom/bbm/n/b;Landroid/media/MediaPlayer;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/n/g;->b:Lcom/bbm/n/b;

    iput-object p2, p0, Lcom/bbm/n/g;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/n/g;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
