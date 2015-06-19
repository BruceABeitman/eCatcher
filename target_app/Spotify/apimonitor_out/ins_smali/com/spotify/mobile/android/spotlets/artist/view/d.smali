.class final Lcom/spotify/mobile/android/spotlets/artist/view/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
.field private final b:Ljava/lang/String;
.field private final c:Landroid/graphics/Bitmap;
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->c:Landroid/graphics/Bitmap;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/view/d;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v4, 0x3
const/4 v7, 0x0
const/4 v6, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->c:Landroid/graphics/Bitmap;
sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_e
:goto_d
:cond_d
return-object v7
:cond_e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/d;->isCancelled()Z
move-result v1
if-nez v1, :cond_d
new-instance v1, Landroid/media/FaceDetector;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V
new-array v2, v4, [Landroid/media/FaceDetector$Face;
invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I
move-result v1
const-string v3, "Found [%d] faces"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Ljava/util/List;
move-result-object v3
invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-interface {v2, v6, v1}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v1
invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->b(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Lcom/spotify/mobile/android/spotlets/artist/util/a;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->b:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Ljava/util/List;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a(Ljava/lang/String;Ljava/util/List;)V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_d
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/artist/view/d;->isCancelled()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->c(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/d;->c:Landroid/graphics/Bitmap;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;->a(Lcom/spotify/mobile/android/spotlets/artist/view/ImageViewWithFaceDetection;Landroid/graphics/Bitmap;)V
:cond_1b
return-void
.end method