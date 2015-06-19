.class public final Lcom/google/android/gms/internal/cb$a;
.super Lcom/google/android/gms/internal/cb;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final aD()V
    .registers 1

    return-void
.end method

.method public final aE()Lcom/google/android/gms/internal/ch;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$a;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/av;

    invoke-direct {v1}, Lcom/google/android/gms/internal/av;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/ci;

    move-result-object v0

    return-object v0
.end method
