.class public final Lcom/google/android/gms/internal/ey;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/internal/iw;
.field public static final CREATOR:Lcom/google/android/gms/internal/ic;
.field private final a:I
.field private final b:Ljava/util/HashMap;
.field private final c:Ljava/util/HashMap;
.field private final d:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/ic;
invoke-direct {v0}, Lcom/google/android/gms/internal/ic;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ey;->CREATOR:Lcom/google/android/gms/internal/ic;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/ey;->a:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->c:Ljava/util/HashMap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->d:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/util/ArrayList;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ey;->a:I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->c:Ljava/util/HashMap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/ey;->d:Ljava/util/ArrayList;
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ey;->a(Ljava/util/ArrayList;)V
return-void
.end method
.method private a(Ljava/util/ArrayList;)V
.registers 5
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ey$a;
iget-object v2, v0, Lcom/google/android/gms/internal/ey$a;->b:Ljava/lang/String;
iget v0, v0, Lcom/google/android/gms/internal/ey$a;->c:I
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;
goto :goto_4
:cond_18
return-void
.end method
.method  a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/ey;->a:I
return v0
.end method
.method public a(Ljava/lang/String;I)Lcom/google/android/gms/internal/ey;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/google/android/gms/internal/ey;->c:Ljava/util/HashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
.end method
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ey;->a(Ljava/lang/Integer;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/Integer;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/ey;->c:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_16
iget-object v1, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
const-string v2, "gms_unknown"
invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
const-string v0, "gms_unknown"
:cond_16
return-object v0
.end method
.method  b()Ljava/util/ArrayList;
.registers 6
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v4, Lcom/google/android/gms/internal/ey$a;
iget-object v1, p0, Lcom/google/android/gms/internal/ey;->b:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ey$a;-><init>(Ljava/lang/String;I)V
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_f
:cond_30
return-object v2
.end method
.method public c()I
.registers 2
const/4 v0, 0x7
return v0
.end method
.method public d()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public describeContents()I
.registers 2
sget-object v0, Lcom/google/android/gms/internal/ey;->CREATOR:Lcom/google/android/gms/internal/ic;
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
sget-object v0, Lcom/google/android/gms/internal/ey;->CREATOR:Lcom/google/android/gms/internal/ic;
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ey;Landroid/os/Parcel;I)V
return-void
.end method