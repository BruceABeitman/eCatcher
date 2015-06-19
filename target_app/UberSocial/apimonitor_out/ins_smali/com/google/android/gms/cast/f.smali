.class public final Lcom/google/android/gms/cast/f;
.super Ljava/lang/Object;
.field  a:Lcom/google/android/gms/cast/CastDevice;
.field  b:Lcom/google/android/gms/cast/g;
.field private c:I
.method private constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/g;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "CastDevice parameter cannot be null"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "CastListener parameter cannot be null"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/cast/f;->a:Lcom/google/android/gms/cast/CastDevice;
iput-object p2, p0, Lcom/google/android/gms/cast/f;->b:Lcom/google/android/gms/cast/g;
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/cast/f;->c:I
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/g;Lcom/google/android/gms/cast/a$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/f;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/g;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/cast/f;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/cast/f;->c:I
return v0
.end method
.method public a()Lcom/google/android/gms/cast/e;
.registers 3
new-instance v0, Lcom/google/android/gms/cast/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/e;-><init>(Lcom/google/android/gms/cast/f;Lcom/google/android/gms/cast/a$1;)V
return-object v0
.end method
.method public a(Z)Lcom/google/android/gms/cast/f;
.registers 3
if-eqz p1, :cond_9
iget v0, p0, Lcom/google/android/gms/cast/f;->c:I
or-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/android/gms/cast/f;->c:I
:goto_8
return-object p0
:cond_9
iget v0, p0, Lcom/google/android/gms/cast/f;->c:I
and-int/lit8 v0, v0, -0x2
iput v0, p0, Lcom/google/android/gms/cast/f;->c:I
goto :goto_8
.end method