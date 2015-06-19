.class Lcom/facebook/katana/AlbumsActivity$1;
.super Ljava/lang/Object;
.source "AlbumsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/AlbumsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/AlbumsActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/AlbumsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    iget-object v1, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    #getter for: Lcom/facebook/katana/AlbumsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/AlbumsActivity;->access$16(Lcom/facebook/katana/AlbumsActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    iget-object v3, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    #getter for: Lcom/facebook/katana/AlbumsActivity;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;
    invoke-static {v3}, Lcom/facebook/katana/AlbumsActivity;->access$14(Lcom/facebook/katana/AlbumsActivity;)Lcom/facebook/katana/service/api/FacebookAlbum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->photoDeleteAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/facebook/katana/AlbumsActivity;->mDeleteAlbumReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/katana/AlbumsActivity;->access$13(Lcom/facebook/katana/AlbumsActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/AlbumsActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/AlbumsActivity$1;->this$0:Lcom/facebook/katana/AlbumsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/AlbumsActivity;->showDialog(I)V

    return-void
.end method
