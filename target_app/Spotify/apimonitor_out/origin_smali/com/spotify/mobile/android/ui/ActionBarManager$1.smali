.class final Lcom/spotify/mobile/android/ui/ActionBarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/ActionBarManager;-><init>(Lcom/spotify/music/MainActivity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;

.field final synthetic b:Lcom/spotify/mobile/android/ui/ActionBarManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/ActionBarManager;Lcom/spotify/music/MainActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->b:Lcom/spotify/mobile/android/ui/ActionBarManager;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->b:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->a:Lcom/spotify/music/MainActivity;

    invoke-virtual {v0}, Lcom/spotify/music/MainActivity;->d()Lcom/spotify/mobile/android/ui/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/view/View;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->b:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->b(Lcom/spotify/mobile/android/ui/ActionBarManager;)Lcom/spotify/mobile/android/ui/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/ActionBarManager$1;->b:Lcom/spotify/mobile/android/ui/ActionBarManager;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(Lcom/spotify/mobile/android/ui/ActionBarManager;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
