.class Lcom/google/android/gms/tagmanager/eq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/ay;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/eo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/eq;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/tagmanager/eo$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/eq;-><init>(Lcom/google/android/gms/tagmanager/eo;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/rr;)V
    .registers 7

    iget-object v0, p1, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/google/android/gms/internal/rr;->c:Lcom/google/android/gms/internal/cp;

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/eq;->a:Lcom/google/android/gms/tagmanager/eo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/rr;->a:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;Lcom/google/android/gms/internal/cp;JZ)V

    return-void

    :cond_f
    iget-object v1, p1, Lcom/google/android/gms/internal/rr;->b:Lcom/google/android/gms/internal/cl;

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/cp;->b:Lcom/google/android/gms/internal/cl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/cp;->a:[Lcom/google/android/gms/internal/co;

    iget-object v1, v1, Lcom/google/android/gms/internal/cl;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/cp;->c:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Lcom/google/android/gms/tagmanager/az;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eq;->a:Lcom/google/android/gms/tagmanager/eo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/eo;->b(Lcom/google/android/gms/tagmanager/eo;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/eq;->a:Lcom/google/android/gms/tagmanager/eo;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/eo;->a(Lcom/google/android/gms/tagmanager/eo;J)V

    :cond_f
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/rr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/eq;->a(Lcom/google/android/gms/internal/rr;)V

    return-void
.end method
