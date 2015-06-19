.class Lcom/pinguo/album/activities/PGAlbumGuideActivity$2;
.super Ljava/lang/Object;
.source "PGAlbumGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/activities/PGAlbumGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/activities/PGAlbumGuideActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/album/activities/PGAlbumGuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/activities/PGAlbumGuideActivity$2;->this$0:Lcom/pinguo/album/activities/PGAlbumGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/activities/PGAlbumGuideActivity$2;->this$0:Lcom/pinguo/album/activities/PGAlbumGuideActivity;

    const/16 v1, 0x1b9e

    const/16 v2, -0x3e7

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/login/StartLoginPageAdapter;->launchLoginPageAdapte(Landroid/app/Activity;II)V

    return-void
.end method
