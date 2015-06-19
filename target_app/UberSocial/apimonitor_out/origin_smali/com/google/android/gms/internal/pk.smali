.class final Lcom/google/android/gms/internal/pk;
.super Lcom/google/android/gms/internal/gn;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pj;

.field private final c:I

.field private final d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/location/i;I[Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/pk;->a:Lcom/google/android/gms/internal/pj;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gn;-><init>(Lcom/google/android/gms/internal/gl;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/m;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/pk;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/pk;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/i;)V
    .registers 4

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/pk;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/pk;->d:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/i;->a(I[Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/location/i;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pk;->a(Lcom/google/android/gms/location/i;)V

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method
