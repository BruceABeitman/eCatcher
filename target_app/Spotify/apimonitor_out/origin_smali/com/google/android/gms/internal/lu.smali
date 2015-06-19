.class final Lcom/google/android/gms/internal/lu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/lt;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/lh;

.field public final e:Lcom/google/android/gms/internal/dx;

.field public f:Lcom/google/android/gms/internal/q;

.field public g:Lcom/google/android/gms/internal/eh;

.field public h:Lcom/google/android/gms/internal/ak;

.field public i:Lcom/google/android/gms/internal/dy;

.field public j:Lcom/google/android/gms/internal/dz;

.field public k:Lcom/google/android/gms/internal/z;

.field public l:Lcom/google/android/gms/internal/ct;

.field public m:Lcom/google/android/gms/internal/ee;

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/dz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/dx;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->m:Lcom/google/android/gms/internal/ee;

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->n:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ak;->e:Z

    if-eqz v0, :cond_24

    iput-object v1, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    :goto_e
    iput-object p2, p0, Lcom/google/android/gms/internal/lu;->h:Lcom/google/android/gms/internal/ak;

    iput-object p3, p0, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->c:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/lh;

    iget-object v1, p4, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/kw;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/kw;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lh;-><init>(Lcom/google/android/gms/internal/jb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lu;->d:Lcom/google/android/gms/internal/lh;

    iput-object p4, p0, Lcom/google/android/gms/internal/lu;->e:Lcom/google/android/gms/internal/dx;

    return-void

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/lt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/lt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget v1, p2, Lcom/google/android/gms/internal/ak;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    iget v1, p2, Lcom/google/android/gms/internal/ak;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/lt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->setVisibility(I)V

    goto :goto_e
.end method


# virtual methods
.method public final a()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/dz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->n:Ljava/util/HashSet;

    return-object v0
.end method

.method public final a(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/dz;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->n:Ljava/util/HashSet;

    return-void
.end method
