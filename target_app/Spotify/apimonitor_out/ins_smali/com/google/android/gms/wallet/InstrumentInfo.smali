.class public final Lcom/google/android/gms/wallet/InstrumentInfo;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:I
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/h;
invoke-direct {v0}, Lcom/google/android/gms/wallet/h;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->a:I
iput-object p2, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->c:Ljava/lang/String;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->a:I
return v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->c:Ljava/lang/String;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/h;->a(Lcom/google/android/gms/wallet/InstrumentInfo;Landroid/os/Parcel;)V
return-void
.end method