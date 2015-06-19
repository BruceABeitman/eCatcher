.class public Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  JA:Lcom/google/android/gms/drive/StorageStats;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/ap;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ap;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/StorageStats;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;->JA:Lcom/google/android/gms/drive/StorageStats;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ap;->a(Lcom/google/android/gms/drive/internal/OnStorageStatsResponse;Landroid/os/Parcel;I)V
return-void
.end method