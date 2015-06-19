.class Lcom/pinguo/album/fragment/PGFullImageFragment$6;
.super Ljava/lang/Object;
.source "PGFullImageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGFullImageFragment;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

.field private final synthetic val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;Lcom/pinguo/album/data/image/download/PictureDownloadManager;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    iput-object p2, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$6;->val$downloader:Lcom/pinguo/album/data/image/download/PictureDownloadManager;

    invoke-virtual {v0}, Lcom/pinguo/album/data/image/download/PictureDownloadManager;->cancelDownload()V

    return-void
.end method
