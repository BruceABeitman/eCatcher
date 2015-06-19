.class public abstract Lcom/google/android/gms/dynamic/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/dynamic/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/dynamic/a$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/a$1;-><init>(Lcom/google/android/gms/dynamic/a;)V

    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/f;

    return-void
.end method
