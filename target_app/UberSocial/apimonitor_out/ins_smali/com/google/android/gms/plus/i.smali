.class public final Lcom/google/android/gms/plus/i;
.super Ljava/lang/Object;
.field  a:Ljava/lang/String;
.field final b:Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/plus/i;->b:Ljava/util/Set;
return-void
.end method
.method public a()Lcom/google/android/gms/plus/h;
.registers 3
new-instance v0, Lcom/google/android/gms/plus/h;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/plus/h;-><init>(Lcom/google/android/gms/plus/i;Lcom/google/android/gms/plus/g$1;)V
return-object v0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/plus/i;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/plus/i;->a:Ljava/lang/String;
return-object p0
.end method
.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/plus/i;
.registers 5
const-string v0, "activityTypes may not be null."
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
:goto_6
array-length v1, p1
if-ge v0, v1, :cond_13
iget-object v1, p0, Lcom/google/android/gms/plus/i;->b:Ljava/util/Set;
aget-object v2, p1, v0
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_13
return-object p0
.end method