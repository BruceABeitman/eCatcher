.class public Lcom/google/android/gms/drive/query/internal/Operator;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public static final Fa:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fb:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fc:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fd:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fe:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Ff:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fg:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fh:Lcom/google/android/gms/drive/query/internal/Operator;
.field public static final Fi:Lcom/google/android/gms/drive/query/internal/Operator;
.field final mTag:Ljava/lang/String;
.field final wj:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/android/gms/drive/query/internal/h;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/h;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->CREATOR:Landroid/os/Parcelable$Creator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "="
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fa:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "<"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fb:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "<="
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fc:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, ">"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fd:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, ">="
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fe:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "and"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Ff:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "or"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fg:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "not"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fh:Lcom/google/android/gms/drive/query/internal/Operator;
new-instance v0, Lcom/google/android/gms/drive/query/internal/Operator;
const-string v1, "contains"
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/google/android/gms/drive/query/internal/Operator;->Fi:Lcom/google/android/gms/drive/query/internal/Operator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/Operator;->wj:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/query/internal/Operator;-><init>(ILjava/lang/String;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/google/android/gms/drive/query/internal/Operator;
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
if-nez v2, :cond_21
iget-object v2, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
iget-object v3, p1, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_5
add-int/lit8 v0, v0, 0x1f
return v0
:cond_8
iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/Operator;->mTag:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/h;->a(Lcom/google/android/gms/drive/query/internal/Operator;Landroid/os/Parcel;I)V
return-void
.end method