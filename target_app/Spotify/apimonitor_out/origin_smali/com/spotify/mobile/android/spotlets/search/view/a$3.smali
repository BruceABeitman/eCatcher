.class final Lcom/spotify/mobile/android/spotlets/search/view/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/view/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    if-nez p2, :cond_32

    :cond_7
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    move v0, v2

    :goto_12
    if-eqz v0, :cond_32

    move v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/a;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/e;

    invoke-interface {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/view/e;->b(Ljava/lang/String;)V

    goto :goto_20

    :cond_30
    move v0, v1

    goto :goto_12

    :cond_32
    move v0, v2

    goto :goto_15
.end method
