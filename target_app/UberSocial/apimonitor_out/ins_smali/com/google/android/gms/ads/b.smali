.class public final Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field public static final d:I = 0x3
.field public static final e:I = 0x0
.field public static final f:I = 0x1
.field public static final g:I = 0x2
.field public static final h:Ljava/lang/String;
.field private final i:Lcom/google/android/gms/internal/q;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/q;->a:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/b;->h:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/q;
invoke-static {p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/c;)Lcom/google/android/gms/internal/r;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/q;-><init>(Lcom/google/android/gms/internal/r;)V
iput-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/c;Lcom/google/android/gms/ads/b$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b;-><init>(Lcom/google/android/gms/ads/c;)V
return-void
.end method
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/q;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/b/a;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->a()Ljava/util/Date;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/content/Context;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/q;->a(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method public b()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->c()I
move-result v0
return v0
.end method
.method public c()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->d()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public d()Landroid/location/Location;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
invoke-virtual {v0}, Lcom/google/android/gms/internal/q;->e()Landroid/location/Location;
move-result-object v0
return-object v0
.end method
.method  e()Lcom/google/android/gms/internal/q;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->i:Lcom/google/android/gms/internal/q;
return-object v0
.end method