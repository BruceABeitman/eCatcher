.class  Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/print/PrintDocumentAdapter;
.source "SourceFile"
.field  loadBitmap:Landroid/os/AsyncTask;
.field private mAttributes:Landroid/print/PrintAttributes;
.field  mBitmap:Landroid/graphics/Bitmap;
.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;
.field final synthetic val$fittingMode:I
.field final synthetic val$imageFile:Landroid/net/Uri;
.field final synthetic val$jobName:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;I)V
.registers 6
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;
iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$100(Landroid/support/v4/print/PrintHelperKitkat$2;)V
.registers 1
invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V
return-void
.end method
.method private cancelLoad()V
.registers 4
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
#getter for: Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat;->access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
const/4 v2, 0x0
iput-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
:cond_19
monitor-exit v1
return-void
:catchall_1b
move-exception v0
monitor-exit v1
:try_end_1d
.catchall {:try_start_7 .. :try_end_1d} :catchall_1b
throw v0
.end method
.method public onFinish()V
.registers 3
invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V
invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
return-void
.end method
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.registers 13
const/4 v6, 0x0
const/4 v0, 0x1
invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
:goto_d
return-void
:cond_e
iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
if-eqz v1, :cond_31
new-instance v1, Landroid/print/PrintDocumentInfo$Builder;
iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;
move-result-object v1
invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2f
:goto_2b
invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
goto :goto_d
:cond_2f
move v0, v6
goto :goto_2b
:cond_31
new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;
move-object v1, p0
move-object v2, p3
move-object v3, p2
move-object v4, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->loadBitmap:Landroid/os/AsyncTask;
new-array v1, v6, [Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
goto :goto_d
.end method
.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.registers 12
new-instance v1, Landroid/print/pdf/PrintedPdfDocument;
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
invoke-direct {v1, v0, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
const/4 v0, 0x1
:try_start_c
invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
move-result-object v0
new-instance v2, Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;
move-result-object v3
invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iget-object v5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
iget v6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
#calls: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
invoke-static {v3, v4, v5, v2, v6}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
move-result-object v2
invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;
const/4 v5, 0x0
invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
:try_end_3e
.catchall {:try_start_c .. :try_end_3e} :catchall_6d
:try_start_3e
new-instance v0, Ljava/io/FileOutputStream;
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
const/4 v0, 0x1
new-array v0, v0, [Landroid/print/PageRange;
const/4 v2, 0x0
sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;
aput-object v3, v0, v2
invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
:goto_55
:try_end_55
.catchall {:try_start_3e .. :try_end_55} :catchall_6d
.catch Ljava/io/IOException; {:try_start_3e .. :try_end_55} :catch_60
if-eqz v1, :cond_5a
invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_5a
if-eqz p2, :cond_5f
:try_start_5c
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:goto_5f
:try_end_5f
.catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_79
:cond_5f
return-void
:catch_60
move-exception v0
:try_start_61
const-string v2, "PrintHelperKitkat"
const-string v3, "Error writing printed content"
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v0, 0x0
invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
:try_end_6c
.catchall {:try_start_61 .. :try_end_6c} :catchall_6d
goto :goto_55
:catchall_6d
move-exception v0
if-eqz v1, :cond_73
invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:cond_73
if-eqz p2, :cond_78
:try_start_75
invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
:cond_78
:try_end_78
.catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7b
:goto_78
throw v0
:catch_79
move-exception v0
goto :goto_5f
:catch_7b
move-exception v1
goto :goto_78
.end method