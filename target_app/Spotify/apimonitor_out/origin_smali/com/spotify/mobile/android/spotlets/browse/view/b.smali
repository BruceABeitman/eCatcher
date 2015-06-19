.class public final Lcom/spotify/mobile/android/spotlets/browse/view/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/util/c;

    const-class v1, Lcom/spotify/mobile/android/spotlets/browse/view/GenreCell;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v0, p1, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/b;->a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_31

    :goto_2c
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/b;->b:I

    return-void

    :cond_31
    move v0, v1

    goto :goto_2c
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/view/b;->a:Lcom/spotify/mobile/android/spotlets/browse/util/c;

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/browse/view/b;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/c;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method
