.class public Lcom/google/android/gms/wearable/internal/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final alG:Landroid/os/ParcelFileDescriptor;

.field private final yw:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/f$c;->yw:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/f$c;->alG:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->alG:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/f$c;->alG:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->yw:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/f$c;->alG:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method
