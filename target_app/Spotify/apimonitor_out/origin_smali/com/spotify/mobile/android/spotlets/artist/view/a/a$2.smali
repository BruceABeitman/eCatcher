.class final Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;
.super Lcom/spotify/mobile/android/spotlets/artist/view/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Landroid/view/ContextMenu;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ContextMenu;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;Landroid/view/ContextMenu;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->a:Landroid/view/ContextMenu;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/k;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->d(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Lcom/spotify/mobile/android/spotlets/artist/view/a/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->a:Landroid/view/ContextMenu;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/e;->a(Ljava/lang/String;Landroid/view/ContextMenu;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/artist/view/b/l;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->b:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->c(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Lcom/spotify/mobile/android/spotlets/artist/view/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/artist/view/b/l;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$2;->a:Landroid/view/ContextMenu;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/f;->a(Ljava/lang/String;Landroid/view/ContextMenu;)V

    return-void
.end method
