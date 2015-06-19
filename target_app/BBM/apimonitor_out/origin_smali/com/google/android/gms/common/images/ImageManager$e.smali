.class final Lcom/google/android/gms/common/images/ImageManager$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final Aw:Lcom/google/android/gms/common/images/ImageManager$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Aw:Lcom/google/android/gms/common/images/ImageManager$b;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public final onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Aw:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 4

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Aw:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    const/16 v0, 0x14

    if-lt p1, v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Aw:Lcom/google/android/gms/common/images/ImageManager$b;

    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$e;->Aw:Lcom/google/android/gms/common/images/ImageManager$b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$b;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$b;->trimToSize(I)V

    goto :goto_9
.end method
