.class Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/tagmanager/be;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bf;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    new-instance v0, Lcom/google/android/gms/tagmanager/al;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/al;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/tagmanager/am;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/am;-><init>()V

    goto :goto_d
.end method

.method b()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
