.class  Lcom/google/android/gms/internal/gi$b;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.field final synthetic BZ:Lcom/google/android/gms/internal/gi;
.method private constructor <init>(Lcom/google/android/gms/internal/gi;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/gi$b;->BZ:Lcom/google/android/gms/internal/gi;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gi;Lcom/google/android/gms/internal/gi$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gi$b;-><init>(Lcom/google/android/gms/internal/gi;)V
return-void
.end method
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gi$b;->BZ:Lcom/google/android/gms/internal/gi;
invoke-static {v0}, Lcom/google/android/gms/internal/gi;->j(Lcom/google/android/gms/internal/gi;)V
return-void
.end method