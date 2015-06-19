.class public final Lcom/google/android/gms/cast/Cast$CastOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;
.field final wv:Lcom/google/android/gms/cast/CastDevice;
.field final ww:Lcom/google/android/gms/cast/Cast$Listener;
.field private final wx:I
.method private constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wy:Lcom/google/android/gms/cast/CastDevice;
iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->wv:Lcom/google/android/gms/cast/CastDevice;
iget-object v0, p1, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wz:Lcom/google/android/gms/cast/Cast$Listener;
iput-object v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->ww:Lcom/google/android/gms/cast/Cast$Listener;
invoke-static {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->wx:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions;->wx:I
return v0
.end method
.method public static builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.registers 4
new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V
return-object v0
.end method