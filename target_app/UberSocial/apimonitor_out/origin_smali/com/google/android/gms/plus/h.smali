.class public final Lcom/google/android/gms/plus/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/util/Set;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/h;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/g$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/plus/h;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/plus/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/plus/h;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/plus/i;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/plus/h;->b:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/i;Lcom/google/android/gms/plus/g$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/h;-><init>(Lcom/google/android/gms/plus/i;)V

    return-void
.end method

.method public static a()Lcom/google/android/gms/plus/i;
    .registers 1

    new-instance v0, Lcom/google/android/gms/plus/i;

    invoke-direct {v0}, Lcom/google/android/gms/plus/i;-><init>()V

    return-object v0
.end method
