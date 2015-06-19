.class final Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/PlayerContentView;->onFinishInflate()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V

    :cond_15
    return-void
.end method
