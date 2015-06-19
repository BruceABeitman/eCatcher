.class public Lcom/google/android/gms/drive/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "response_drive_id"


# instance fields
.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Landroid/content/IntentSender;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/drive/v;->c:[Ljava/lang/String;

    const-string v1, "setMimeType(String[]) must be called on this builder before calling build()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->d()Z

    move-result v0

    const-string v1, "Client must be connected"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/drive/b;->a:Lcom/google/android/gms/common/api/c;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;

    move-result-object v0

    :try_start_1c
    new-instance v1, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/v;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/drive/v;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/drive/v;->d:Lcom/google/android/gms/drive/DriveId;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/drive/DriveId;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/OpenFileIntentSenderRequest;)Landroid/content/IntentSender;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2a} :catch_2c

    move-result-object v0

    return-object v0

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect Drive Play Service"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/google/android/gms/drive/DriveId;)Lcom/google/android/gms/drive/v;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/drive/v;->d:Lcom/google/android/gms/drive/DriveId;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/drive/v;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/v;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/google/android/gms/drive/v;
    .registers 4

    if-eqz p1, :cond_e

    array-length v0, p1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_6
    const-string v1, "mimeTypes may not be null and must contain at least one value"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/drive/v;->c:[Ljava/lang/String;

    return-object p0

    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method
