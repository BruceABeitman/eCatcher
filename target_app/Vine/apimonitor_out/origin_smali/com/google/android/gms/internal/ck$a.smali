.class final Lcom/google/android/gms/internal/ck$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final le:Ljava/lang/Runnable;

.field private volatile oL:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ck;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ck$a;->oL:Z

    new-instance v0, Lcom/google/android/gms/internal/ck$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ck$a$1;-><init>(Lcom/google/android/gms/internal/ck$a;Lcom/google/android/gms/internal/ck;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck$a;->le:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ck$a;->oL:Z

    return v0
.end method


# virtual methods
.method public aX()V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ck$a;->le:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ck$a;->oL:Z

    sget-object v0, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ck$a;->le:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
