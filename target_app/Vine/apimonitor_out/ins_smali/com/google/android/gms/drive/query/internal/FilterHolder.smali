.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
.field final KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
.field final KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
.field final KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
.field final KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
.field final KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
.field final KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
.field private final KT:Lcom/google/android/gms/drive/query/Filter;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/internal/d;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/d;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;)V
.registers 11
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
:goto_1b
return-void
:cond_1c
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_25
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_2e
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_37
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_40
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_49
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
goto :goto_1b
:cond_52
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "At least one filter must be set."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->xJ:I
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
if-eqz v0, :cond_6a
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
:goto_e
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
if-eqz v0, :cond_6c
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
:goto_17
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
if-eqz v0, :cond_6e
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
:goto_20
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/NotFilter;
if-eqz v0, :cond_70
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;
:goto_29
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/InFilter;
if-eqz v0, :cond_72
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;
:goto_32
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
if-eqz v0, :cond_74
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
:goto_3b
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/HasFilter;
if-eqz v0, :cond_76
move-object v0, p1
check-cast v0, Lcom/google/android/gms/drive/query/internal/HasFilter;
:goto_44
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KM:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KN:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KO:Lcom/google/android/gms/drive/query/internal/LogicalFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KP:Lcom/google/android/gms/drive/query/internal/NotFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KQ:Lcom/google/android/gms/drive/query/internal/InFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KR:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
if-nez v0, :cond_78
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KS:Lcom/google/android/gms/drive/query/internal/HasFilter;
if-nez v0, :cond_78
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Invalid filter type or null filter."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6a
move-object v0, v1
goto :goto_e
:cond_6c
move-object v0, v1
goto :goto_17
:cond_6e
move-object v0, v1
goto :goto_20
:cond_70
move-object v0, v1
goto :goto_29
:cond_72
move-object v0, v1
goto :goto_32
:cond_74
move-object v0, v1
goto :goto_3b
:cond_76
move-object v0, v1
goto :goto_44
:cond_78
iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->KT:Lcom/google/android/gms/drive/query/Filter;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/d;->a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V
return-void
.end method