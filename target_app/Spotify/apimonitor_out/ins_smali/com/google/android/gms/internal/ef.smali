.class public Lcom/google/android/gms/internal/ef;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/ef$1;
invoke-direct {v0}, Lcom/google/android/gms/internal/ef$1;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ef;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ef;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ef;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ef;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method