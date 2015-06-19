.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/follow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Lcom/spotify/mobile/android/spotlets/follow/a;)Lcom/spotify/mobile/android/spotlets/follow/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->o(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Lcom/spotify/mobile/android/spotlets/follow/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->v(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c$4;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->u(Lcom/spotify/mobile/android/spotlets/collection/fragments/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
