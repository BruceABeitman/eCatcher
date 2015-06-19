.class Lcom/pinguo/album/fragment/PGAlbumFragment$7;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGAlbumFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v1}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/cloud/settings/CloudSettingsForUploadSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$7;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v1, v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
