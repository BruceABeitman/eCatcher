.class public Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/a;
.field final a:Lcom/google/android/gms/drive/query/internal/Operator;
.field final b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.field final c:I
.field final d:Lcom/google/android/gms/drive/metadata/a;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/drive/query/internal/a;
invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/a;-><init>()V
sput-object v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/a;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->c:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->a:Lcom/google/android/gms/drive/query/internal/Operator;
iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {p3}, Lcom/google/android/gms/drive/query/internal/e;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/a;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->d:Lcom/google/android/gms/drive/metadata/a;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/a;->a(Lcom/google/android/gms/drive/query/internal/ComparisonFilter;Landroid/os/Parcel;I)V
return-void
.end method