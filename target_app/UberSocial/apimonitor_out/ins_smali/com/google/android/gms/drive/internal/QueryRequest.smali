.class public Lcom/google/android/gms/drive/internal/QueryRequest;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final a:I
.field final b:Lcom/google/android/gms/drive/query/Query;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/internal/j;
invoke-direct {v0}, Lcom/google/android/gms/drive/internal/j;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/Query;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->a:I
iput-object p2, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->b:Lcom/google/android/gms/drive/query/Query;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/query/Query;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/google/android/gms/drive/internal/QueryRequest;-><init>(ILcom/google/android/gms/drive/query/Query;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/j;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Landroid/os/Parcel;I)V
return-void
.end method