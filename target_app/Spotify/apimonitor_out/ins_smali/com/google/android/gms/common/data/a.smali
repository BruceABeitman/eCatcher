.class public Lcom/google/android/gms/common/data/a;
.super Ljava/lang/Object;
.field private final a:[Ljava/lang/String;
.field private final b:Ljava/util/ArrayList;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/util/HashMap;
.field private e:Z
.field private f:Ljava/lang/String;
.method private constructor <init>([Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/common/data/a;->a:[Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/a;->b:Ljava/util/ArrayList;
iput-object v1, p0, Lcom/google/android/gms/common/data/a;->c:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/a;->d:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->e:Z
iput-object v1, p0, Lcom/google/android/gms/common/data/a;->f:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>([Ljava/lang/String;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>([Ljava/lang/String;)V
return-void
.end method