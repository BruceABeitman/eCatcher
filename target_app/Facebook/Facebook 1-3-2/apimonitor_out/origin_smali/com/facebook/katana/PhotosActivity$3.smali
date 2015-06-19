.class Lcom/facebook/katana/PhotosActivity$3;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PhotosActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PhotosActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$22(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v3, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/katana/PhotosActivity;->access$19(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->photoDeletePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/katana/PhotosActivity;->access$18(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$3;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/katana/PhotosActivity;->showDialog(I)V

    return-void
.end method
