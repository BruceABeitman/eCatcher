.class  Lcom/google/android/gms/internal/ef$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/google/android/gms/internal/bg;
.field final synthetic b:Lcom/google/android/gms/internal/ef;
.method constructor <init>(Lcom/google/android/gms/internal/ef;Lcom/google/android/gms/internal/bg;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/ef$1;->b:Lcom/google/android/gms/internal/ef;
iput-object p2, p0, Lcom/google/android/gms/internal/ef$1;->a:Lcom/google/android/gms/internal/bg;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ef$1;->a:Lcom/google/android/gms/internal/bg;
invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->j()V
return-void
.end method