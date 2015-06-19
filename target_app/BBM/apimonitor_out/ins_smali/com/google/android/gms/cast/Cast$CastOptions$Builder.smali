.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;
.field private wA:I
.field  wy:Lcom/google/android/gms/cast/CastDevice;
.field  wz:Lcom/google/android/gms/cast/Cast$Listener;
.method private constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "CastDevice parameter cannot be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "CastListener parameter cannot be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wy:Lcom/google/android/gms/cast/CastDevice;
iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wz:Lcom/google/android/gms/cast/Cast$Listener;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
return v0
.end method
.method public final build()Lcom/google/android/gms/cast/Cast$CastOptions;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V
return-object v0
.end method
.method public final setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
:goto_8
return-object p0
:cond_9
iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I
goto :goto_8
.end method