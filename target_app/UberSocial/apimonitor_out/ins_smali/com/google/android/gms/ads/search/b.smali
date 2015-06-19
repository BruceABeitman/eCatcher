.class public final Lcom/google/android/gms/ads/search/b;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/r;
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.field private i:I
.field private j:Ljava/lang/String;
.field private k:I
.field private l:Ljava/lang/String;
.field private m:I
.field private n:I
.field private o:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/r;
invoke-direct {v0}, Lcom/google/android/gms/internal/r;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/ads/search/b;->h:I
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->b:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->c:I
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->d:I
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->e:I
return v0
.end method
.method static synthetic e(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->f:I
return v0
.end method
.method static synthetic f(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->g:I
return v0
.end method
.method static synthetic g(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->h:I
return v0
.end method
.method static synthetic h(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->i:I
return v0
.end method
.method static synthetic i(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->j:Ljava/lang/String;
return-object v0
.end method
.method static synthetic j(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->k:I
return v0
.end method
.method static synthetic k(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->l:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->m:I
return v0
.end method
.method static synthetic m(Lcom/google/android/gms/ads/search/b;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/ads/search/b;->n:I
return v0
.end method
.method static synthetic n(Lcom/google/android/gms/ads/search/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->o:Ljava/lang/String;
return-object v0
.end method
.method static synthetic o(Lcom/google/android/gms/ads/search/b;)Lcom/google/android/gms/internal/r;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
return-object v0
.end method
.method public a()Lcom/google/android/gms/ads/search/a;
.registers 3
new-instance v0, Lcom/google/android/gms/ads/search/a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/a;-><init>(Lcom/google/android/gms/ads/search/b;Lcom/google/android/gms/ads/search/a$1;)V
return-object v0
.end method
.method public a(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->b:I
return-object p0
.end method
.method public a(II)Lcom/google/android/gms/ads/search/b;
.registers 4
const/4 v0, 0x0
invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/b;->c:I
iput p2, p0, Lcom/google/android/gms/ads/search/b;->d:I
iput p1, p0, Lcom/google/android/gms/ads/search/b;->e:I
return-object p0
.end method
.method public a(Landroid/location/Location;)Lcom/google/android/gms/ads/search/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Landroid/location/Location;)V
return-object p0
.end method
.method public a(Lcom/google/android/gms/ads/b/a;)Lcom/google/android/gms/ads/search/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/ads/b/a;)V
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/search/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->b(Ljava/lang/String;)V
return-object p0
.end method
.method public a(Z)Lcom/google/android/gms/ads/search/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/search/b;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->b(Z)V
return-object p0
.end method
.method public b(I)Lcom/google/android/gms/ads/search/b;
.registers 4
const/4 v1, 0x0
iput p1, p0, Lcom/google/android/gms/ads/search/b;->c:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/b;->d:I
invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
iput v0, p0, Lcom/google/android/gms/ads/search/b;->e:I
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/ads/search/b;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/b;->j:Ljava/lang/String;
return-object p0
.end method
.method public c(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->f:I
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/google/android/gms/ads/search/b;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/b;->l:Ljava/lang/String;
return-object p0
.end method
.method public d(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->g:I
return-object p0
.end method
.method public d(Ljava/lang/String;)Lcom/google/android/gms/ads/search/b;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/ads/search/b;->o:Ljava/lang/String;
return-object p0
.end method
.method public e(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->h:I
return-object p0
.end method
.method public f(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->i:I
return-object p0
.end method
.method public g(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->k:I
return-object p0
.end method
.method public h(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->m:I
return-object p0
.end method
.method public i(I)Lcom/google/android/gms/ads/search/b;
.registers 2
iput p1, p0, Lcom/google/android/gms/ads/search/b;->n:I
return-object p0
.end method