.class Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;
.super Lcom/facebook/katana/UserTask;
.source "ViewPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/ViewPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentUserTask"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mFilename:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mPhotoUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {p0, p2}, Lcom/facebook/katana/UserTask;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mFilename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .registers 9

    const-string v7, "doInBackground"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mFilename:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v3, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_1c

    const-string v3, "doInBackground"

    const-string v3, "Unknown MIME type"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-virtual {v3}, Lcom/facebook/katana/ViewPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_1b

    :catch_3b
    move-exception v3

    move-object v0, v3

    const-string v3, "doInBackground"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method protected onPostExecute()V
    .registers 8

    const/4 v5, 0x0

    const-string v6, "android.intent.action.SEND"

    const-string v4, "android.intent.action.ATTACH_DATA"

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const/4 v3, 0x0

    #setter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$28(Lcom/facebook/katana/ViewPhotoActivity;Landroid/app/ProgressDialog;)V

    :cond_1c
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v3, 0x7f080194

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v3, 0x7f08018e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    :cond_3e
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mAction:Ljava/lang/String;

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_5b
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v4, 0x7f080193

    invoke-virtual {v3, v4}, Lcom/facebook/katana/ViewPhotoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/ViewPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;

    #setter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$30(Lcom/facebook/katana/ViewPhotoActivity;Landroid/net/Uri;)V
    :try_end_75
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5b .. :try_end_75} :catch_76

    goto :goto_2c

    :catch_76
    move-exception v2

    move-object v0, v2

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v3, 0x7f080191

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2c

    :cond_85
    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mAction:Ljava/lang/String;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mimeType"

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v4, 0x7f080192

    invoke-virtual {v3, v4}, Lcom/facebook/katana/ViewPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/ViewPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    iget-object v3, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->mPhotoUri:Landroid/net/Uri;

    #setter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotoContentUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/facebook/katana/ViewPhotoActivity;->access$30(Lcom/facebook/katana/ViewPhotoActivity;Landroid/net/Uri;)V

    goto/16 :goto_2c
.end method

.method protected onPreExecute()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$28(Lcom/facebook/katana/ViewPhotoActivity;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    const v2, 0x7f080190

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewPhotoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$IntentUserTask;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #getter for: Lcom/facebook/katana/ViewPhotoActivity;->mUserTaskProgress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$29(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
