.class public Lcom/google/android/gms/internal/di;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private mValue:Ljava/lang/String;
.field private uS:Ljava/lang/String;
.field private uT:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/di$1;
invoke-direct {v0}, Lcom/google/android/gms/internal/di$1;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/di;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/di;->readFromParcel(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/di;->uS:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/gms/internal/di;->uT:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/di;->mValue:Ljava/lang/String;
return-void
.end method
.method private readFromParcel(Landroid/os/Parcel;)V
.registers 3
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/di;->uS:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/di;->uT:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/di;->mValue:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/di;->uS:Ljava/lang/String;
return-object v0
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/di;->mValue:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/di;->uS:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/di;->uT:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/di;->mValue:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method