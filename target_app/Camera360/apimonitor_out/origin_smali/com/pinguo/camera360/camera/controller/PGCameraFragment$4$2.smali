.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$2;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4$2;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
