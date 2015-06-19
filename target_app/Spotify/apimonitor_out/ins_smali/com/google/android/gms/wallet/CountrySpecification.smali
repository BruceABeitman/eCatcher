.class public Lcom/google/android/gms/wallet/CountrySpecification;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field private final b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/c;
invoke-direct {v0}, Lcom/google/android/gms/wallet/c;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/CountrySpecification;->b:I
iput-object p2, p0, Lcom/google/android/gms/wallet/CountrySpecification;->a:Ljava/lang/String;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/CountrySpecification;->b:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/c;->a(Lcom/google/android/gms/wallet/CountrySpecification;Landroid/os/Parcel;)V
return-void
.end method