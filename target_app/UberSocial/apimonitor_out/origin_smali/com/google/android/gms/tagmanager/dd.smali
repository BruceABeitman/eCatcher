.class Lcom/google/android/gms/tagmanager/dd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/bs;

.field private b:Lcom/google/android/gms/internal/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/bs;Lcom/google/android/gms/internal/dz;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/dd;->a:Lcom/google/android/gms/tagmanager/bs;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/dd;->b:Lcom/google/android/gms/internal/dz;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/bs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dd;->a:Lcom/google/android/gms/tagmanager/bs;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/dz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dd;->b:Lcom/google/android/gms/internal/dz;

    return-object v0
.end method

.method public c()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dd;->a:Lcom/google/android/gms/tagmanager/bs;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->a()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dd;->b:Lcom/google/android/gms/internal/dz;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dd;->b:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->a()I

    move-result v0

    goto :goto_11
.end method
