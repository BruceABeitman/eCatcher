.class Lcom/google/android/gms/analytics/be$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/be;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/be;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/be;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/be$2;->a:Lcom/google/android/gms/analytics/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/be$2;->a:Lcom/google/android/gms/analytics/be;

    invoke-static {v0}, Lcom/google/android/gms/analytics/be;->a(Lcom/google/android/gms/analytics/be;)V

    return-void
.end method
