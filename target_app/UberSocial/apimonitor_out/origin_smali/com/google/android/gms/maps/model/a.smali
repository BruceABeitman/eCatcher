.class public final Lcom/google/android/gms/maps/model/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/c/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/c/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/c/d;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/c/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/c/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/c/d;

    return-object v0
.end method
