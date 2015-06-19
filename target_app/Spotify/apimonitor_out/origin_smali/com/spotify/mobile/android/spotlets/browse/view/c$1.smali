.class final Lcom/spotify/mobile/android/spotlets/browse/view/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/browse/view/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/view/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/view/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;->a()Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/c$1;->a:Lcom/spotify/mobile/android/spotlets/browse/view/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/view/c;->a(Lcom/spotify/mobile/android/spotlets/browse/view/c;)Lcom/spotify/mobile/android/spotlets/browse/b/c;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/spotify/mobile/android/spotlets/browse/b/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
