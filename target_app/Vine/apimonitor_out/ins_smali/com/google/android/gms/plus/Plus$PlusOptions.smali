.class public final Lcom/google/android/gms/plus/Plus$PlusOptions;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.field final abo:Ljava/lang/String;
.field final abp:Ljava/util/Set;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abo:Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abp:Ljava/util/Set;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$1;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>()V
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abo:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abo:Ljava/lang/String;
iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->abp:Ljava/util/Set;
iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->abp:Ljava/util/Set;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
return-void
.end method
.method public static builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
.registers 1
new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;-><init>()V
return-object v0
.end method