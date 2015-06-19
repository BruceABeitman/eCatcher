.class Lcom/facebook/katana/PhotoUploader$1;
.super Ljava/lang/Object;
.source "PhotoUploader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PhotoUploader;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotoUploader;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PhotoUploader;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    packed-switch p2, :pswitch_data_30

    :goto_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;

    #getter for: Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/katana/PhotoUploader;->access$0(Lcom/facebook/katana/PhotoUploader;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;

    #getter for: Lcom/facebook/katana/PhotoUploader;->mPickExistingPhotoRequestCode:I
    invoke-static {v2}, Lcom/facebook/katana/PhotoUploader;->access$1(Lcom/facebook/katana/PhotoUploader;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :pswitch_20
    iget-object v1, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;

    #getter for: Lcom/facebook/katana/PhotoUploader;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/katana/PhotoUploader;->access$0(Lcom/facebook/katana/PhotoUploader;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/PhotoUploader$1;->this$0:Lcom/facebook/katana/PhotoUploader;

    #getter for: Lcom/facebook/katana/PhotoUploader;->mTakeCameraPhotoRequestCode:I
    invoke-static {v2}, Lcom/facebook/katana/PhotoUploader;->access$2(Lcom/facebook/katana/PhotoUploader;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->takePicture(Landroid/app/Activity;I)V

    goto :goto_3

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_7
        :pswitch_20
    .end packed-switch
.end method
