.class final Lcom/spotify/mobile/android/spotlets/search/view/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/search/view/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$4;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/a$4;->a:Lcom/spotify/mobile/android/spotlets/search/view/a;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/e;

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/search/view/e;->a(Z)V

    goto :goto_8

    :cond_18
    return-void
.end method
