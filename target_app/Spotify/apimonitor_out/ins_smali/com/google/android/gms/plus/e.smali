.class public final Lcom/google/android/gms/plus/e;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/e;
.field final a:Ljava/lang/String;
.field final b:Ljava/util/Set;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/plus/e;->a:Ljava/lang/String;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/plus/e;->b:Ljava/util/Set;
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/plus/e;-><init>()V
return-void
.end method
.method private constructor <init>(Lcom/google/android/gms/plus/f;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/google/android/gms/plus/f;->a:Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/plus/e;->a:Ljava/lang/String;
iget-object v0, p1, Lcom/google/android/gms/plus/f;->b:Ljava/util/Set;
iput-object v0, p0, Lcom/google/android/gms/plus/e;->b:Ljava/util/Set;
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/plus/f;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/plus/e;-><init>(Lcom/google/android/gms/plus/f;)V
return-void
.end method