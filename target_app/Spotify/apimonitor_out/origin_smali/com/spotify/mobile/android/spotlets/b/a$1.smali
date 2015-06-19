.class final Lcom/spotify/mobile/android/spotlets/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/session/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/b/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->h()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->b(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->a(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a$1;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/b/a;->b(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_d
.end method
