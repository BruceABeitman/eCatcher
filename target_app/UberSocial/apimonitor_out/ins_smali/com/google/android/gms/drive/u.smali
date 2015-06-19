.class public Lcom/google/android/gms/drive/u;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
return-void
.end method
.method public a()Lcom/google/android/gms/drive/t;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/t;
iget-object v1, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/t;-><init>(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/t$1;)V
return-object v0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/drive/u;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->b:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public a(Ljava/util/Date;)Lcom/google/android/gms/drive/u;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/js;->e:Lcom/google/android/gms/drive/metadata/c;
invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public a(Z)Lcom/google/android/gms/drive/u;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->d:Lcom/google/android/gms/drive/metadata/b;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/drive/u;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->c:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public b(Z)Lcom/google/android/gms/drive/u;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->g:Lcom/google/android/gms/drive/metadata/b;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/google/android/gms/drive/u;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->x:Lcom/google/android/gms/drive/metadata/b;
invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method
.method public c(Z)Lcom/google/android/gms/drive/u;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/drive/u;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
sget-object v1, Lcom/google/android/gms/internal/jq;->r:Lcom/google/android/gms/drive/metadata/b;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->b(Lcom/google/android/gms/drive/metadata/b;Ljava/lang/Object;)V
return-object p0
.end method