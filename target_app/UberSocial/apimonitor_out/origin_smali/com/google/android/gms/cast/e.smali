.class public final Lcom/google/android/gms/cast/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field final a:Lcom/google/android/gms/cast/CastDevice;

.field final b:Lcom/google/android/gms/cast/g;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/cast/f;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object v0, p0, Lcom/google/android/gms/cast/e;->a:Lcom/google/android/gms/cast/CastDevice;

    iget-object v0, p1, Lcom/google/android/gms/cast/f;->b:Lcom/google/android/gms/cast/g;

    iput-object v0, p0, Lcom/google/android/gms/cast/e;->b:Lcom/google/android/gms/cast/g;

    invoke-static {p1}, Lcom/google/android/gms/cast/f;->a(Lcom/google/android/gms/cast/f;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/e;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/f;Lcom/google/android/gms/cast/a$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/e;-><init>(Lcom/google/android/gms/cast/f;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/e;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/cast/e;->c:I

    return v0
.end method

.method public static a(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/g;)Lcom/google/android/gms/cast/f;
    .registers 4

    new-instance v0, Lcom/google/android/gms/cast/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/cast/f;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/g;Lcom/google/android/gms/cast/a$1;)V

    return-object v0
.end method
