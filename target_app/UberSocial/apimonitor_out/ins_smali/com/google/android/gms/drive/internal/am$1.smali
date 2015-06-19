.class  Lcom/google/android/gms/drive/internal/am$1;
.super Lcom/google/android/gms/drive/internal/ai;
.field final synthetic a:Lcom/google/android/gms/drive/DriveId;
.field final synthetic b:I
.field final synthetic c:Lcom/google/android/gms/drive/internal/bg;
.field final synthetic d:Lcom/google/android/gms/drive/internal/am;
.method constructor <init>(Lcom/google/android/gms/drive/internal/am;Lcom/google/android/gms/drive/DriveId;ILcom/google/android/gms/drive/internal/bg;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/drive/internal/am$1;->d:Lcom/google/android/gms/drive/internal/am;
iput-object p2, p0, Lcom/google/android/gms/drive/internal/am$1;->a:Lcom/google/android/gms/drive/DriveId;
iput p3, p0, Lcom/google/android/gms/drive/internal/am$1;->b:I
iput-object p4, p0, Lcom/google/android/gms/drive/internal/am$1;->c:Lcom/google/android/gms/drive/internal/bg;
invoke-direct {p0}, Lcom/google/android/gms/drive/internal/ai;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
.registers 2
check-cast p1, Lcom/google/android/gms/drive/internal/am;
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/am$1;->a(Lcom/google/android/gms/drive/internal/am;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/drive/internal/am;)V
.registers 7
invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/am;->h()Lcom/google/android/gms/drive/internal/bj;
move-result-object v0
new-instance v1, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;
iget-object v2, p0, Lcom/google/android/gms/drive/internal/am$1;->a:Lcom/google/android/gms/drive/DriveId;
iget v3, p0, Lcom/google/android/gms/drive/internal/am$1;->b:I
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/AddEventListenerRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V
iget-object v2, p0, Lcom/google/android/gms/drive/internal/am$1;->c:Lcom/google/android/gms/drive/internal/bg;
const/4 v3, 0x0
new-instance v4, Lcom/google/android/gms/drive/internal/l;
invoke-direct {v4, p0}, Lcom/google/android/gms/drive/internal/l;-><init>(Lcom/google/android/gms/common/api/t;)V
invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/bj;->a(Lcom/google/android/gms/drive/internal/AddEventListenerRequest;Lcom/google/android/gms/drive/internal/bp;Ljava/lang/String;Lcom/google/android/gms/drive/internal/bm;)V
return-void
.end method