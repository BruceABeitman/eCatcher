.class Lcom/google/android/gms/internal/nm$7;
.super Lcom/google/android/gms/internal/nq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nm;->b(Lcom/google/android/gms/common/api/e;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/nm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nm;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/nm$7;->d:Lcom/google/android/gms/internal/nm;

    iput-object p2, p0, Lcom/google/android/gms/internal/nm$7;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/nm$7;->b:J

    iput-object p5, p0, Lcom/google/android/gms/internal/nm$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nq;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/jy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nm$7;->a(Lcom/google/android/gms/internal/jy;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jy;)V
    .registers 8

    iget-object v2, p0, Lcom/google/android/gms/internal/nm$7;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nm$7;->b:J

    iget-object v5, p0, Lcom/google/android/gms/internal/nm$7;->c:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/common/api/t;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
