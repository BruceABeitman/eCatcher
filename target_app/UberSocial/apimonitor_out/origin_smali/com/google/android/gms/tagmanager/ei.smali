.class Lcom/google/android/gms/tagmanager/ei;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/tagmanager/ej;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/ei$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/ei$1;-><init>(Lcom/google/android/gms/tagmanager/ei;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ei;->a:Lcom/google/android/gms/tagmanager/ej;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public a(ILcom/google/android/gms/tagmanager/ej;)Lcom/google/android/gms/tagmanager/eh;
    .registers 5

    if-gtz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ei;->a()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_18

    new-instance v0, Lcom/google/android/gms/tagmanager/dm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/dm;-><init>(ILcom/google/android/gms/tagmanager/ej;)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/tagmanager/at;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/at;-><init>(ILcom/google/android/gms/tagmanager/ej;)V

    goto :goto_17
.end method
