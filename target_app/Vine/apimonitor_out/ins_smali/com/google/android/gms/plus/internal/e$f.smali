.class final Lcom/google/android/gms/plus/internal/e$f;
.super Lcom/google/android/gms/internal/hc$d;
.implements Lcom/google/android/gms/plus/People$LoadPeopleResult;
.field private final HP:Ljava/lang/String;
.field final synthetic abJ:Lcom/google/android/gms/plus/internal/e;
.field private abM:Lcom/google/android/gms/plus/model/people/PersonBuffer;
.field private final yw:Lcom/google/android/gms/common/api/Status;
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$f;->abJ:Lcom/google/android/gms/plus/internal/e;
invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/hc$d;-><init>(Lcom/google/android/gms/internal/hc;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$f;->yw:Lcom/google/android/gms/common/api/Status;
iput-object p5, p0, Lcom/google/android/gms/plus/internal/e$f;->HP:Ljava/lang/String;
return-void
.end method
.method protected a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 4
if-eqz p2, :cond_d
new-instance v0, Lcom/google/android/gms/plus/model/people/PersonBuffer;
invoke-direct {v0, p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
:goto_7
iput-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abM:Lcom/google/android/gms/plus/model/people/PersonBuffer;
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_7
.end method
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$d;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/plus/internal/e$f;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public getNextPageToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->HP:Ljava/lang/String;
return-object v0
.end method
.method public getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abM:Lcom/google/android/gms/plus/model/people/PersonBuffer;
return-object v0
.end method
.method public getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->yw:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public release()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abM:Lcom/google/android/gms/plus/model/people/PersonBuffer;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$f;->abM:Lcom/google/android/gms/plus/model/people/PersonBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V
:cond_9
return-void
.end method