.class final Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->h(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->i(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;)V

    :cond_d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment$5;->a:Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;->b(Lcom/spotify/mobile/android/ui/fragments/CosmosTestFragment;Z)V

    return-void
.end method
