.class Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;
.super Ljava/lang/Thread;
.source "ImageLoaderAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;->loadImage(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->this$0:Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync;

    iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->val$imagePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->loadImageFromUrl(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$2;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
