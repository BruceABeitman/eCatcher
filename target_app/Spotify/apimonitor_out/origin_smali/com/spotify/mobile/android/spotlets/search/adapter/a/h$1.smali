.class final Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->a(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->b(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h$1;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;->c(Lcom/spotify/mobile/android/spotlets/search/adapter/a/h;)Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;->a(ILcom/spotify/mobile/android/spotlets/search/model/entity/Playlist;)V

    return-void
.end method
