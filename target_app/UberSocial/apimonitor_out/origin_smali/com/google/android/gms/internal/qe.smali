.class public Lcom/google/android/gms/internal/qe;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Lcom/google/android/gms/internal/pp;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/util/concurrent/BlockingQueue;

.field private final g:Ljava/lang/Object;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/internal/qe;->a:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/gms/internal/qe;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pp;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/qe;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/qe;->c:Lcom/google/android/gms/internal/pp;

    iput-object p2, p0, Lcom/google/android/gms/internal/qe;->d:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/qe;->e:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget v1, Lcom/google/android/gms/internal/qe;->a:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qe;->f:Ljava/util/concurrent/BlockingQueue;

    sget v0, Lcom/google/android/gms/internal/qe;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/qe;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pz;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/qe;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/pz;

    iget v0, p0, Lcom/google/android/gms/internal/qe;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pz;->a(I)Lcom/google/android/gms/internal/pz;

    iget-object v0, p0, Lcom/google/android/gms/internal/qe;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pz;->a()Lcom/google/android/gms/internal/hx$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
