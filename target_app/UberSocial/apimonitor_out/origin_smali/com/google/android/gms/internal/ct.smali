.class public final Lcom/google/android/gms/internal/ct;
.super Lcom/google/android/gms/internal/cs;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cs;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 1

    return-void
.end method

.method public d()Lcom/google/android/gms/internal/cz;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/af;

    invoke-direct {v1}, Lcom/google/android/gms/internal/af;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ad;)Lcom/google/android/gms/internal/dd;

    move-result-object v0

    return-object v0
.end method
