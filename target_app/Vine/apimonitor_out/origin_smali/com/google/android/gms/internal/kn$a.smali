.class abstract Lcom/google/android/gms/internal/kn$a;
.super Lcom/google/android/gms/plus/Plus$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/plus/Plus$a",
        "<",
        "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/kn$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/kn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public ao(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/kn$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kn$a$1;-><init>(Lcom/google/android/gms/internal/kn$a;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kn$a;->ao(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/plus/People$LoadPeopleResult;

    move-result-object v0

    return-object v0
.end method
