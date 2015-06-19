.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/view/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$5;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$5;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-interface {v0, p2, v1, p1, p1}, Lcom/spotify/mobile/android/spotlets/search/view/f;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;II)V

    return-void
.end method
