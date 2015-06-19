.class public final Lcom/google/android/gms/ads/b;
.super Ljava/lang/Object;
.field public static final a:Ljava/lang/String;
.field private final b:Lcom/google/android/gms/internal/ac;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/google/android/gms/internal/ac;->a:Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/ads/b;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/ads/c;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/ac;
invoke-static {p1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/c;)Lcom/google/android/gms/internal/ad;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ac;-><init>(Lcom/google/android/gms/internal/ad;)V
iput-object v0, p0, Lcom/google/android/gms/ads/b;->b:Lcom/google/android/gms/internal/ac;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/ads/c;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b;-><init>(Lcom/google/android/gms/ads/c;)V
return-void
.end method
.method final a()Lcom/google/android/gms/internal/ac;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/b;->b:Lcom/google/android/gms/internal/ac;
return-object v0
.end method