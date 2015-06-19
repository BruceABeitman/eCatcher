.class final Lcom/spotify/music/MainActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$6;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/music/MainActivity$6;->a:Lcom/spotify/music/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spotify/music/MainActivity$6;->a:Lcom/spotify/music/MainActivity;

    const-class v3, Lcom/spotify/mobile/android/ui/activity/UpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/music/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
