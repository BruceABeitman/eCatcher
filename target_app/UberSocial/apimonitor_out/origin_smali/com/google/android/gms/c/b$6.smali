.class Lcom/google/android/gms/c/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/c/b;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/c/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/c/b$6;->a:Lcom/google/android/gms/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/google/android/gms/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/c/b$6;->a:Lcom/google/android/gms/c/b;

    invoke-static {v0}, Lcom/google/android/gms/c/b;->b(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/c/a;->b()V

    return-void
.end method
