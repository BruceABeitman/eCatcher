.class public Lcom/google/android/gms/plus/a/a/d;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Lcom/google/android/gms/internal/im;
.field private c:Ljava/lang/String;
.field private d:Lcom/google/android/gms/internal/im;
.field private e:Ljava/lang/String;
.field private final f:Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
return-void
.end method
.method public a()Lcom/google/android/gms/plus/a/a/c;
.registers 8
new-instance v0, Lcom/google/android/gms/internal/io;
iget-object v1, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
iget-object v2, p0, Lcom/google/android/gms/plus/a/a/d;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/plus/a/a/d;->b:Lcom/google/android/gms/internal/im;
iget-object v4, p0, Lcom/google/android/gms/plus/a/a/d;->c:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/gms/plus/a/a/d;->d:Lcom/google/android/gms/internal/im;
iget-object v6, p0, Lcom/google/android/gms/plus/a/a/d;->e:Ljava/lang/String;
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/io;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/google/android/gms/internal/im;Ljava/lang/String;Lcom/google/android/gms/internal/im;Ljava/lang/String;)V
return-object v0
.end method
.method public a(Lcom/google/android/gms/plus/a/a/a;)Lcom/google/android/gms/plus/a/a/d;
.registers 4
check-cast p1, Lcom/google/android/gms/internal/im;
iput-object p1, p0, Lcom/google/android/gms/plus/a/a/d;->b:Lcom/google/android/gms/internal/im;
iget-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
const/4 v1, 0x4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/plus/a/a/d;
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/a/a/d;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
const/4 v1, 0x2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public b(Lcom/google/android/gms/plus/a/a/a;)Lcom/google/android/gms/plus/a/a/d;
.registers 4
check-cast p1, Lcom/google/android/gms/internal/im;
iput-object p1, p0, Lcom/google/android/gms/plus/a/a/d;->d:Lcom/google/android/gms/internal/im;
iget-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
const/4 v1, 0x6
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/plus/a/a/d;
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/a/a/d;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public c(Ljava/lang/String;)Lcom/google/android/gms/plus/a/a/d;
.registers 4
iput-object p1, p0, Lcom/google/android/gms/plus/a/a/d;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/plus/a/a/d;->f:Ljava/util/Set;
const/4 v1, 0x7
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-object p0
.end method