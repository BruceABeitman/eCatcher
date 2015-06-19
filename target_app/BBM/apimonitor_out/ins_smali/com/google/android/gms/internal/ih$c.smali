.class final Lcom/google/android/gms/internal/ih$c;
.super Lcom/google/android/gms/internal/eh$b;
.implements Lcom/google/android/gms/panorama/Panorama$PanoramaResult;
.field private final QE:Lcom/google/android/gms/common/api/Status;
.field private final QF:Landroid/content/Intent;
.field final synthetic QG:Lcom/google/android/gms/internal/ih;
.method public constructor <init>(Lcom/google/android/gms/internal/ih;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/ih$c;->QG:Lcom/google/android/gms/internal/ih;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/ih$c;->QE:Lcom/google/android/gms/common/api/Status;
iput-object p4, p0, Lcom/google/android/gms/internal/ih$c;->QF:Landroid/content/Intent;
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ih$c;->c(Lcom/google/android/gms/common/api/a$c;)V
return-void
.end method
.method protected final c(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih$c;->QE:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public final getViewerIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ih$c;->QF:Landroid/content/Intent;
return-object v0
.end method