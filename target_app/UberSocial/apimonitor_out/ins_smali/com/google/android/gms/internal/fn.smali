.class final Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/cast/b;
.field private final a:Lcom/google/android/gms/common/api/Status;
.field private final b:Lcom/google/android/gms/cast/ApplicationMetadata;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Z
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
.registers 8
const/4 v2, 0x0
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/common/api/Status;
iput-object p2, p0, Lcom/google/android/gms/internal/fn;->b:Lcom/google/android/gms/cast/ApplicationMetadata;
iput-object p3, p0, Lcom/google/android/gms/internal/fn;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/fn;->d:Ljava/lang/String;
iput-boolean p5, p0, Lcom/google/android/gms/internal/fn;->e:Z
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fn;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/cast/ApplicationMetadata;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fn;->b:Lcom/google/android/gms/cast/ApplicationMetadata;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fn;->c:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/fn;->d:Ljava/lang/String;
return-object v0
.end method
.method public e()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->e:Z
return v0
.end method