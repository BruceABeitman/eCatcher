.class final Lcom/spotify/mobile/android/ui/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/r;Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/f$1;->a:Lcom/spotify/mobile/android/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/f$1;->a:Lcom/spotify/mobile/android/ui/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/f;->a(Lcom/spotify/mobile/android/ui/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/j;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    return-void
.end method
