.class final Lcom/spotify/mobile/android/ui/prettylist/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/prettylist/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/prettylist/e;
.end annotation


# instance fields
.field final synthetic b:Lcom/spotify/music/MainActivity;

.field private c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

.field private d:F


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->b:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->d:F

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 4

    iput p1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->d:F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->b:Lcom/spotify/music/MainActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v0, v1}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    :cond_12
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->b:Lcom/spotify/music/MainActivity;

    invoke-direct {v0, v1, p1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    iget v1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->d:F

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarTitle;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->b:Lcom/spotify/music/MainActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/prettylist/e$1;->c:Lcom/spotify/mobile/android/ui/ActionBarTitle;

    invoke-virtual {v0, v1}, Lcom/spotify/music/MainActivity;->a(Lcom/spotify/mobile/android/ui/ActionBarTitle;)V

    return-void
.end method
