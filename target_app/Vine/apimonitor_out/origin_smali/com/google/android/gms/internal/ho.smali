.class public final Lcom/google/android/gms/internal/ho;
.super Lcom/google/android/gms/dynamic/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/g",
        "<",
        "Lcom/google/android/gms/internal/hk;",
        ">;"
    }
.end annotation


# static fields
.field private static final GI:Lcom/google/android/gms/internal/ho;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ho;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ho;->GI:Lcom/google/android/gms/internal/ho;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;II)Landroid/view/View;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ho;->GI:Lcom/google/android/gms/internal/ho;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ho;->c(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;II)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/g$a;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ho;->D(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hk;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/hk;->a(Lcom/google/android/gms/dynamic/d;II)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/g$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get button with size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and color "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/g$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hk;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/hk$a;->M(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ho;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hk;

    move-result-object v0

    return-object v0
.end method
