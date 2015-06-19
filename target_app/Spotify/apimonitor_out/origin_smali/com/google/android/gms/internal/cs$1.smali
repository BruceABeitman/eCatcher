.class final Lcom/google/android/gms/internal/cs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cs;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/cs$1;->a:Lcom/google/android/gms/internal/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cs$1;->a:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c_()V

    return-void
.end method
