.class final Lcom/spotify/mobile/android/spotlets/openaccess/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->a(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->g(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->g(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/ui/adapter/o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(II)I

    move-result v1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->c(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/c;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v3

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;->isCurrentTrack()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->d()V

    :goto_55
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->b(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    :cond_60
    return-void

    :cond_61
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->f(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/spotlets/openaccess/a/a;->a(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->d(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/openaccess/c$4;->a:Lcom/spotify/mobile/android/spotlets/openaccess/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/openaccess/c;->e(Lcom/spotify/mobile/android/spotlets/openaccess/c;)Lcom/spotify/mobile/android/spotlets/openaccess/util/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/openaccess/util/OpenPreviewPlayer;->a(Ljava/util/List;Lcom/spotify/mobile/android/spotlets/openaccess/util/f;Lcom/spotify/mobile/android/spotlets/openaccess/util/e;)V

    goto :goto_55
.end method
