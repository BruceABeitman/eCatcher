.class public final Lcom/google/android/gms/games/internal/JingleLog;
.super Ljava/lang/Object;


# static fields
.field private static final OS:Lcom/google/android/gms/internal/hg;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/hg;

    const-string v1, "GamesJingle"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/JingleLog;->OS:Lcom/google/android/gms/internal/hg;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
