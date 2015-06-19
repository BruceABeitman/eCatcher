.class final Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/artist/view/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/a/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->b(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/a$1;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/a;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_c
.end method
