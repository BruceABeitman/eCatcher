.class Lcom/google/android/gms/plus/PlusClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic abr:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

.field final synthetic abs:Lcom/google/android/gms/plus/PlusClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$2;->abs:Lcom/google/android/gms/plus/PlusClient;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$2;->abr:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/plus/Moments$LoadMomentsResult;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$2;->abr:Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eM()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getMomentBuffer()Lcom/google/android/gms/plus/model/moments/MomentBuffer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getNextPageToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;->getUpdated()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;->onMomentsLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/moments/MomentBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/plus/Moments$LoadMomentsResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$2;->a(Lcom/google/android/gms/plus/Moments$LoadMomentsResult;)V

    return-void
.end method
