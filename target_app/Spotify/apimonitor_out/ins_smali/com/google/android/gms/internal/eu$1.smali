.class final Lcom/google/android/gms/internal/eu$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/cc;
.field final synthetic b:Lcom/google/android/gms/internal/eu;
.method constructor <init>(Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/internal/cc;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/eu$1;->b:Lcom/google/android/gms/internal/eu;
iput-object p2, p0, Lcom/google/android/gms/internal/eu$1;->a:Lcom/google/android/gms/internal/cc;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/eu$1;->a:Lcom/google/android/gms/internal/cc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->k()V
return-void
.end method