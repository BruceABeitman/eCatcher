.class public Lcom/google/android/gms/internal/na;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/android/gms/internal/jy;

.field protected b:Lcom/google/android/gms/internal/nb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/jy;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/na;->a:Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/na;->a(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/jy;ILcom/google/android/gms/internal/na$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/na;-><init>(Lcom/google/android/gms/internal/jy;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/jy;I)Lcom/google/android/gms/internal/na;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/jo;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/nc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/nc;-><init>(Lcom/google/android/gms/internal/jy;I)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/na;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/na;-><init>(Lcom/google/android/gms/internal/jy;I)V

    goto :goto_b
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/na;->a:Lcom/google/android/gms/internal/jy;

    iget-object v1, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    iget-object v1, v1, Lcom/google/android/gms/internal/nb;->a:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nb;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/jy;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(I)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/nb;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/nb;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/na$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nb;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    iput p1, v0, Lcom/google/android/gms/internal/nb;->b:I

    return-void
.end method

.method public c()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/na;->b:Lcom/google/android/gms/internal/nb;

    iget-object v0, v0, Lcom/google/android/gms/internal/nb;->a:Landroid/os/IBinder;

    return-object v0
.end method
