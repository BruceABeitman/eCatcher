.class  Lcom/google/android/gms/wearable/internal/ae$1;
.super Lcom/google/android/gms/wearable/internal/d;
.field final synthetic alO:Ljava/lang/String;
.field final synthetic alP:Ljava/lang/String;
.field final synthetic alQ:Lcom/google/android/gms/wearable/internal/ae;
.field final synthetic yI:[B
.method constructor <init>(Lcom/google/android/gms/wearable/internal/ae;Ljava/lang/String;Ljava/lang/String;[B)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alQ:Lcom/google/android/gms/wearable/internal/ae;
iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alO:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alP:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wearable/internal/ae$1;->yI:[B
invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/d;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/wearable/internal/au;
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$1;->a(Lcom/google/android/gms/wearable/internal/au;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/wearable/internal/au;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alO:Ljava/lang/String;
iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ae$1;->alP:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ae$1;->yI:[B
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[B)V
return-void
.end method
.method protected au(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/ae$a;
const/4 v1, -0x1
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/ae$a;-><init>(Lcom/google/android/gms/common/api/Status;I)V
return-object v0
.end method
.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/ae$1;->au(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;
move-result-object v0
return-object v0
.end method