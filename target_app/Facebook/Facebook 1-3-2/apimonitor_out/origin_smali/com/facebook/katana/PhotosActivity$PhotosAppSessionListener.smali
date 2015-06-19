.class Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotosActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/PhotosActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/PhotosActivity;Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;-><init>(Lcom/facebook/katana/PhotosActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadPhotoThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_c

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAdapter:Lcom/facebook/katana/PhotosAdapter;
    invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->access$21(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/PhotosAdapter;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/facebook/katana/PhotosAdapter;->onDownloadPhotoError(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onPhotoDeleteAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 11

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x0

    #setter for: Lcom/facebook/katana/PhotosActivity;->mDeleteAlbumReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/facebook/katana/PhotosActivity;->access$17(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_29

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const v3, 0x7f0800cb

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/PhotosActivity;->finish()V

    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_28
.end method

.method public onPhotoDeletePhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #setter for: Lcom/facebook/katana/PhotosActivity;->mDeletePhotoReqId:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/facebook/katana/PhotosActivity;->access$18(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2a

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$19(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #setter for: Lcom/facebook/katana/PhotosActivity;->mPhotoId:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/facebook/katana/PhotosActivity;->access$20(Lcom/facebook/katana/PhotosActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/facebook/katana/PhotosActivity;->removeDialog(I)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_29
.end method

.method public onPhotoGetAlbumsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
    .registers 14

    const/4 v4, 0x1

    if-eqz p6, :cond_33

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p6, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_33

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumTask:Lcom/facebook/katana/util/TaskContext;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$13(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/util/TaskContext;

    move-result-object v1

    iput-boolean v4, v1, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    const/16 v1, 0xc8

    if-eq v1, p3, :cond_33

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_33
    return-void
.end method

.method public onPhotoGetPhotosComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 15

    const/4 v4, 0x1

    if-eqz p6, :cond_49

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mAlbumId:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$9(Lcom/facebook/katana/PhotosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #getter for: Lcom/facebook/katana/PhotosActivity;->mPhotosTask:Lcom/facebook/katana/util/TaskContext;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$14(Lcom/facebook/katana/PhotosActivity;)Lcom/facebook/katana/util/TaskContext;

    move-result-object v1

    iput-boolean v4, v1, Lcom/facebook/katana/util/TaskContext;->receivedResponse:Z

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_44

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    iget-object v2, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Lcom/facebook/katana/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3, p4, p5}, Lcom/facebook/katana/util/StringUtils;->getErrorString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #calls: Lcom/facebook/katana/PhotosActivity;->gridView()Landroid/widget/GridView;
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$15(Lcom/facebook/katana/PhotosActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/PhotosActivity;->finish()V

    :cond_44
    iget-object v1, p0, Lcom/facebook/katana/PhotosActivity$PhotosAppSessionListener;->this$0:Lcom/facebook/katana/PhotosActivity;

    #calls: Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
    invoke-static {v1}, Lcom/facebook/katana/PhotosActivity;->access$16(Lcom/facebook/katana/PhotosActivity;)V

    :cond_49
    return-void
.end method
