.class  Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;
.super Landroid/os/Handler;
.source "ImageLoaderAsync.java"
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
.field private final synthetic val$callback:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;
.field private final synthetic val$imagePath:Ljava/lang/String;
.method constructor <init>(Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;->this$0:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;
iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;->val$callback:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;
iput-object p3, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;->val$imagePath:Ljava/lang/String;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;->val$callback:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/graphics/drawable/Drawable;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$1;->val$imagePath:Ljava/lang/String;
invoke-interface {v1, v0, v2}, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;->callback(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
return-void
.end method