.class final Lcom/spotify/mobile/android/ui/view/LoadingView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/LoadingView;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/LoadingView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/LoadingView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->b:Lcom/spotify/mobile/android/ui/view/LoadingView$State;

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    sget-object v1, Lcom/spotify/mobile/android/ui/view/LoadingView$State;->c:Lcom/spotify/mobile/android/ui/view/LoadingView$State;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Lcom/spotify/mobile/android/ui/view/LoadingView;Lcom/spotify/mobile/android/ui/view/LoadingView$State;)Lcom/spotify/mobile/android/ui/view/LoadingView$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b(Lcom/spotify/mobile/android/ui/view/LoadingView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->c(Lcom/spotify/mobile/android/ui/view/LoadingView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/LoadingView$2;->a:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d(Lcom/spotify/mobile/android/ui/view/LoadingView;)Lcom/spotify/mobile/android/ui/view/l;

    move-result-object v2

    invoke-interface {v2}, Lcom/spotify/mobile/android/ui/view/l;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/view/LoadingView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method
