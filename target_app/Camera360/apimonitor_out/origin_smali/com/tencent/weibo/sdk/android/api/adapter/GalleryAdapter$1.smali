.class Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;
.super Ljava/lang/Object;
.source "GalleryAdapter.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/api/util/ImageLoaderAsync$callBackImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;Landroid/widget/ImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;->this$0:Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter;

    iput-object p2, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/api/adapter/GalleryAdapter$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method
