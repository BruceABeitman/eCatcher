.class public final Lcom/google/android/gms/ads/search/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:Ljava/lang/String; = null

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2


# instance fields
.field private final A:Ljava/lang/String;

.field private final m:Lcom/google/android/gms/internal/q;

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:Ljava/lang/String;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/q;->a:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/a;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->a(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->n:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->b(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->o:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->c(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->p:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->d(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->q:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->e(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->r:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->f(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->s:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->g(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->t:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->h(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->u:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->i(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/a;->v:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->j(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->w:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->k(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/a;->x:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->l(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->y:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->m(Lcom/google/android/gms/ads/search/b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/a;->z:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->n(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/a;->A:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/q;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/b;->o(Lcom/google/android/gms/ads/search/b;)Lcom/google/android/gms/internal/r;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/ads/search/a;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/a;->m:Lcom/google/android/gms/internal/q;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/b;Lcom/google/android/gms/ads/search/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/a;-><init>(Lcom/google/android/gms/ads/search/b;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->n:I

    return v0
.end method

.method public a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->m:Lcom/google/android/gms/internal/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->m:Lcom/google/android/gms/internal/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/q;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->o:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->p:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->q:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->r:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->s:I

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->t:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->u:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->w:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->y:I

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/a;->z:I

    return v0
.end method

.method public n()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->m:Lcom/google/android/gms/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->e()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method p()Lcom/google/android/gms/internal/q;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/a;->m:Lcom/google/android/gms/internal/q;

    return-object v0
.end method
