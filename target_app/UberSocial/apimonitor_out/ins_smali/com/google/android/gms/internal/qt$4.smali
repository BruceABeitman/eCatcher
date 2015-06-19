.class  Lcom/google/android/gms/internal/qt$4;
.super Lcom/google/android/gms/internal/qv;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/google/android/gms/internal/qt;
.method constructor <init>(Lcom/google/android/gms/internal/qt;Lcom/google/android/gms/common/api/c;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/qt$4;->b:Lcom/google/android/gms/internal/qt;
iput-object p3, p0, Lcom/google/android/gms/internal/qt$4;->a:Ljava/lang/String;
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/qv;-><init>(Lcom/google/android/gms/common/api/c;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/internal/l;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qt$4;->a(Lcom/google/android/gms/plus/internal/l;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/plus/internal/l;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/qt$4;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/google/android/gms/plus/internal/l;->a(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qt$4;->a(Lcom/google/android/gms/common/api/m;)V
return-void
.end method