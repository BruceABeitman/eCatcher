.class public final Lcom/google/android/gms/internal/ao;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ah;

.field public final c:Lcom/google/android/gms/internal/av;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/al;


# direct methods
.method public constructor <init>(I)V
    .registers 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ao;-><init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/av;Ljava/lang/String;Lcom/google/android/gms/internal/al;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/av;Ljava/lang/String;Lcom/google/android/gms/internal/al;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ao;->b:Lcom/google/android/gms/internal/ah;

    iput-object p2, p0, Lcom/google/android/gms/internal/ao;->c:Lcom/google/android/gms/internal/av;

    iput-object p3, p0, Lcom/google/android/gms/internal/ao;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ao;->e:Lcom/google/android/gms/internal/al;

    iput p5, p0, Lcom/google/android/gms/internal/ao;->a:I

    return-void
.end method
