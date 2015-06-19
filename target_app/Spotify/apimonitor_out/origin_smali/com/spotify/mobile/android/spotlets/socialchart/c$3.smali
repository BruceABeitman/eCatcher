.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/c;->G()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->d(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->c(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$3;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->b()V

    return-void
.end method
