.class public final Lcom/google/android/gms/internal/ir;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/is;

.field public static final b:Lcom/google/android/gms/internal/it;

.field public static final c:Lcom/google/android/gms/internal/iw;

.field public static final d:Lcom/google/android/gms/internal/iu;

.field public static final e:Lcom/google/android/gms/internal/iy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/is;

    const-string v1, "created"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/is;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->a:Lcom/google/android/gms/internal/is;

    new-instance v0, Lcom/google/android/gms/internal/it;

    const-string v1, "lastOpenedTime"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/it;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->b:Lcom/google/android/gms/internal/it;

    new-instance v0, Lcom/google/android/gms/internal/iw;

    const-string v1, "modified"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/iw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->c:Lcom/google/android/gms/internal/iw;

    new-instance v0, Lcom/google/android/gms/internal/iu;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/iu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->d:Lcom/google/android/gms/internal/iu;

    new-instance v0, Lcom/google/android/gms/internal/iy;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/iy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ir;->e:Lcom/google/android/gms/internal/iy;

    return-void
.end method
