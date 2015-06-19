.class  Lcom/android/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.implements Lcom/android/volley/Response$Listener;
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;
.field private final synthetic val$cacheKey:Ljava/lang/String;
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->this$0:Lcom/android/volley/toolbox/ImageLoader;
iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResponse(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$2;->this$0:Lcom/android/volley/toolbox/ImageLoader;
iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;
#calls: Lcom/android/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
invoke-static {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->access$2(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V
return-void
.end method