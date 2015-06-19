.class public Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;
.super Lcom/pinguo/camera360/adapter/AdapterBase;
.source "PuzzleSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000


# instance fields
.field mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/adapter/AdapterBase;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mSelection:I

    new-instance v0, Landroid/support/v4/util/LruCache;

    const/high16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mMemoryCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private bindData(Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Penn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getSelection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getSelection()I

    move-result v2

    if-ne v2, p2, :cond_6b

    const-string/jumbo v2, "pressed"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_36
    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5d

    const-string/jumbo v2, "Penn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "decode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    iget-object v3, p1, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;->ivEffectIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_6b
    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_36
.end method

.method private getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_d
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_19

    :goto_18
    return-object v2

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18
.end method


# virtual methods
.method public getSelection()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mSelection:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_25

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;

    invoke-direct {v0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;-><init>()V

    const v1, 0x7f0a0292

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;->ivEffectIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_21
    invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->bindData(Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;I)V

    return-object p2

    :cond_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter$Holder;

    goto :goto_21
.end method

.method public setSelection(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->mSelection:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/template/PuzzleSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method
