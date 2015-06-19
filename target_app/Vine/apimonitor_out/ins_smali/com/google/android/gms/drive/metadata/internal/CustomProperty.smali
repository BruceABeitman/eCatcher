.class public Lcom/google/android/gms/drive/metadata/internal/CustomProperty;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final JN:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
.field final mValue:Ljava/lang/String;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/c;
invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/c;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;->xJ:I
const-string v0, "key"
invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p2, p0, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;->JN:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;
iput-object p3, p0, Lcom/google/android/gms/drive/metadata/internal/CustomProperty;->mValue:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/c;->a(Lcom/google/android/gms/drive/metadata/internal/CustomProperty;Landroid/os/Parcel;I)V
return-void
.end method