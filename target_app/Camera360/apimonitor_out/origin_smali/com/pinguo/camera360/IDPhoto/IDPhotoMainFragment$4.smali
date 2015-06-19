.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$4;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->showProgress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$4;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
