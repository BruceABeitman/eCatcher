.class public Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/Filter;
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/a;
.field final KI:Lcom/google/android/gms/drive/query/internal/Operator;
.field final KJ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
.field final KK:Lcom/google/android/gms/drive/metadata/MetadataField;
.field final xJ:I
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
iput p1, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->KI:Lcom/google/android/gms/drive/query/internal/Operator;
iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->KJ:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
invoke-static {p3}, Lcom/google/android/gms/drive/query/internal/e;->b(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/MetadataField;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;->KK:Lcom/google/android/gms/drive/metadata/MetadataField;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
.registers 6
const/4 v0, 0x1
invoke-static {p2, p3}, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;->a(Lcom/google/android/gms/drive/metadata/MetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
move-result-object v1
invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(ILcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
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