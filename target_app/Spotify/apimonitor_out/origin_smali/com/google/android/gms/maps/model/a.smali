.class public final Lcom/google/android/gms/maps/model/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/b;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/a;->a:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method
