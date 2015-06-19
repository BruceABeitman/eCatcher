.class final Lcom/spotify/music/spotlets/radio/service/RadioActionsService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/session/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/radio/service/RadioActionsService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/RadioActionsService;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/RadioActionsService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService$1;->a:Lcom/spotify/music/spotlets/radio/service/RadioActionsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
    .registers 3

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->e()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/RadioActionsService$1;->a:Lcom/spotify/music/spotlets/radio/service/RadioActionsService;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/RadioActionsService;->stopSelf()V

    :cond_11
    return-void
.end method
