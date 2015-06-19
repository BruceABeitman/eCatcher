.class final Lcom/spotify/mobile/android/ui/view/PlayButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/view/PlayButton;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayButton;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayButton;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton$1;->a:Lcom/spotify/mobile/android/ui/view/PlayButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton$1;->a:Lcom/spotify/mobile/android/ui/view/PlayButton;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Lcom/spotify/mobile/android/ui/view/PlayButton;)Lcom/spotify/mobile/android/ui/view/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/view/o;->a()V

    return-void
.end method
