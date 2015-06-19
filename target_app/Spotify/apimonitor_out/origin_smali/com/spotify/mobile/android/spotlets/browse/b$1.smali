.class final Lcom/spotify/mobile/android/spotlets/browse/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a(Lcom/spotify/mobile/android/spotlets/browse/b;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->b(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->c(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->o()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->d(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a()I

    move-result v0

    if-lt p3, v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0, p4}, Lcom/spotify/mobile/android/spotlets/browse/b;->a(Lcom/spotify/mobile/android/spotlets/browse/b;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->e(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->e(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_47
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->f(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->d(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b$1;->a:Lcom/spotify/mobile/android/spotlets/browse/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->d(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->notifyDataSetChanged()V

    goto :goto_20
.end method
