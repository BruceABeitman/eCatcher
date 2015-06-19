.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$2;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$2;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->enterCutout()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$18(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V

    return-void
.end method
