.class public Lcom/google/android/gms/common/data/DataHolder$a;
.super Ljava/lang/Object;
.field private final ED:[Ljava/lang/String;
.field private final EM:Ljava/util/ArrayList;
.field private final EN:Ljava/lang/String;
.field private final EO:Ljava/util/HashMap;
.field private EP:Z
.field private EQ:Ljava/lang/String;
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->ED:[Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EM:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EN:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EO:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EP:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EQ:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder$a;-><init>([Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->ED:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EM:Ljava/util/ArrayList;
return-object v0
.end method