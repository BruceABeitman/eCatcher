.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V

    :cond_13
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->a:I

    if-ne v0, p1, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;->i_()V

    :cond_31
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->d(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;Lcom/spotify/mobile/android/spotlets/collection/fragments/g;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;->h_()V

    :cond_53
    iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;->a:I

    goto :goto_1f
.end method

.method public final a(IFI)V
    .registers 4

    return-void
.end method

.method public final b(I)V
    .registers 2

    return-void
.end method
