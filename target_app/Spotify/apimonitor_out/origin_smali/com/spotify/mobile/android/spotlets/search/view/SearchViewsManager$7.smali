.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;
.super Lcom/spotify/mobile/android/spotlets/common/adapter/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/view/f;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    return v0
.end method
