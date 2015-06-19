.class public final Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.super Ljava/lang/Object;
.field  abo:Ljava/lang/String;
.field final abp:Ljava/util/Set;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abp:Ljava/util/Set;
return-void
.end method
.method public varargs addActivityTypes([Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.registers 5
const-string v0, "activityTypes may not be null."
invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
:goto_6
array-length v1, p1
if-ge v0, v1, :cond_13
iget-object v1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abp:Ljava/util/Set;
aget-object v2, p1, v0
invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_13
return-object p0
.end method
.method public build()Lcom/google/android/gms/plus/Plus$PlusOptions;
.registers 3
new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
return-object v0
.end method
.method public setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abo:Ljava/lang/String;
return-object p0
.end method