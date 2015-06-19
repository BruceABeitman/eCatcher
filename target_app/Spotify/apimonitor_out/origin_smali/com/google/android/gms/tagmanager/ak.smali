.class final Lcom/google/android/gms/tagmanager/ak;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/tagmanager/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/dn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/z;Lcom/google/android/gms/internal/dn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;",
            "Lcom/google/android/gms/internal/dn;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ak;->a:Lcom/google/android/gms/tagmanager/z;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ak;->b:Lcom/google/android/gms/internal/dn;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tagmanager/z;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/z",
            "<",
            "Lcom/google/android/gms/internal/dn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ak;->a:Lcom/google/android/gms/tagmanager/z;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/dn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ak;->b:Lcom/google/android/gms/internal/dn;

    return-object v0
.end method
