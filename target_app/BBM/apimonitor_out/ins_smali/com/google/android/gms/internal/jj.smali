.class public final Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  ZA:Ljava/lang/String;
.field  ZB:Ljava/lang/String;
.field  ZC:Ljava/util/ArrayList;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/jk;
invoke-direct {v0}, Lcom/google/android/gms/internal/jk;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/jj;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/internal/jj;->wj:I
invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/jj;->ZC:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/jj;->wj:I
iput-object p2, p0, Lcom/google/android/gms/internal/jj;->ZA:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/jj;->ZB:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/internal/jj;->ZC:Ljava/util/ArrayList;
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/jj;->wj:I
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jk;->a(Lcom/google/android/gms/internal/jj;Landroid/os/Parcel;I)V
return-void
.end method