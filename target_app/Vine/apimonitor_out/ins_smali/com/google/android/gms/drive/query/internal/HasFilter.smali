.class public Lcom/google/android/gms/drive/query/internal/HasFilter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/Filter;
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/f;
.field final KJ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.field final KK:Lcom/google/android/gms/drive/metadata/MetadataField;
.field final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/internal/f;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/f;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/HasFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/f;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->KJ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/e;->b(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->KK:Lcom/google/android/gms/drive/metadata/MetadataField;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/f;->a(Lcom/google/android/gms/drive/query/internal/HasFilter;Landroid/os/Parcel;I)V
return-void
.end method