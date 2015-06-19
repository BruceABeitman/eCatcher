.class public Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:Lcom/google/android/gms/drive/query/internal/Operator;
.field final b:Ljava/util/List;
.field final c:I
.field private d:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/internal/f;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/f;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/internal/Operator;Ljava/util/List;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->c:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
return-void
.end method
.method public varargs constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/a;[Lcom/google/android/gms/drive/query/a;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->c:I
iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Ljava/util/ArrayList;
array-length v1, p3
add-int/lit8 v1, v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;
invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/a;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Ljava/util/ArrayList;
array-length v1, p3
add-int/lit8 v1, v1, 0x1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->d:Ljava/util/List;
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->d:Ljava/util/List;
invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
array-length v1, p3
const/4 v0, 0x0
:goto_2d
if-ge v0, v1, :cond_43
aget-object v2, p3, v0
iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
new-instance v4, Lcom/google/android/gms/drive/query/internal/FilterHolder;
invoke-direct {v4, v2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/a;)V
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v3, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->d:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2d
:cond_43
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->c:I
iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->d:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/query/a;
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->d:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;->b:Ljava/util/List;
new-instance v3, Lcom/google/android/gms/drive/query/internal/FilterHolder;
invoke-direct {v3, v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/a;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1a
:cond_36
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/f;->a(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Landroid/os/Parcel;I)V
return-void
.end method