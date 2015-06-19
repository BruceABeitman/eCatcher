.class Lcom/facebook/katana/ViewPhotoActivity$3;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/ViewPhotoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
    invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$32(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$14(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoId:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/katana/ViewPhotoActivity;->access$15(Lcom/facebook/katana/ViewPhotoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->photoDeletePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/facebook/katana/ViewPhotoActivity;->mDeletePhotoReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$12(Lcom/facebook/katana/ViewPhotoActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$3;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->showDialog(I)V

    return-void
.end method
