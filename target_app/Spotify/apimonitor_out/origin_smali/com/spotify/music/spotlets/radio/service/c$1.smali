.class final Lcom/spotify/music/spotlets/radio/service/c$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/service/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/c;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/c$1;->a:Lcom/spotify/music/spotlets/radio/service/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/c$1;->a:Lcom/spotify/music/spotlets/radio/service/c;

    invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/c;->a(Lcom/spotify/music/spotlets/radio/service/c;)Lcom/spotify/music/spotlets/radio/service/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/d;->a()V

    return-void
.end method
