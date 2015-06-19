.class Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;
.super Ljava/lang/Object;
.source "OptionsAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/activity/OptionsAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideAlbumInfo"
.end annotation


# instance fields
.field private mAlbumPath:Ljava/lang/String;

.field private mBucketId:Ljava/lang/String;

.field private mCount:I

.field private mFirstPicPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/OptionsAlbum;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->this$0:Lcom/pinguo/camera360/camera/activity/OptionsAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mAlbumPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mFirstPicPath:Ljava/lang/String;

    iput p4, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mCount:I

    iput-object p5, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mBucketId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getmAlbumPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mAlbumPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmBucketId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getmCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mCount:I

    return v0
.end method

.method public getmFirstPicPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/activity/OptionsAlbum$HideAlbumInfo;->mFirstPicPath:Ljava/lang/String;

    return-object v0
.end method
