.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$8;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$8;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/view/f;->K()V

    return-void
.end method
