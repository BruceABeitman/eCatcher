.class public final Lcom/google/android/gms/plus/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/f;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/plus/e;
    .registers 3

    new-instance v0, Lcom/google/android/gms/plus/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/plus/e;-><init>(Lcom/google/android/gms/plus/f;B)V

    return-object v0
.end method
