.class Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;
.super Landroid/database/ContentObserver;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotosActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/PhotosActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/service/api/FacebookAlbum;->readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookAlbum;

    move-result-object v1

    #setter for: Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
    invoke-static {v0, v1}, Lcom/facebook/katana/PhotosActivity;->access$10(Lcom/facebook/katana/PhotosActivity;Lcom/facebook/katana/service/api/FacebookAlbum;)V

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
    invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->access$11(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/service/api/FacebookAlbum;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$AlbumsContentObserver;->this$0:Lcom/facebook/katana/PhotosActivity;

    #calls: Lcom/facebook/katana/PhotosActivity;->updateFatTitleBar()V
    invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->access$12(Lcom/facebook/katana/PhotosActivity;)V

    :cond_1e
    return-void
.end method
