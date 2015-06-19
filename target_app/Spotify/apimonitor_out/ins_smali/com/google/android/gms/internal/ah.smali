.class public final Lcom/google/android/gms/internal/ah;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/k;
.field public final a:I
.field public final b:J
.field public final c:Landroid/os/Bundle;
.field public final d:I
.field public final e:Ljava/util/List;
.field public final f:Z
.field public final g:I
.field public final h:Z
.field public final i:Ljava/lang/String;
.field public final j:Lcom/google/android/gms/internal/av;
.field public final k:Landroid/location/Location;
.field public final l:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/k;
invoke-direct {v0}, Lcom/google/android/gms/internal/k;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/ah;->CREATOR:Lcom/google/android/gms/internal/k;
return-void
.end method
.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/av;Landroid/location/Location;Ljava/lang/String;)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/ah;->a:I
iput-wide p2, p0, Lcom/google/android/gms/internal/ah;->b:J
iput-object p4, p0, Lcom/google/android/gms/internal/ah;->c:Landroid/os/Bundle;
iput p5, p0, Lcom/google/android/gms/internal/ah;->d:I
iput-object p6, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
iput-boolean p7, p0, Lcom/google/android/gms/internal/ah;->f:Z
iput p8, p0, Lcom/google/android/gms/internal/ah;->g:I
iput-boolean p9, p0, Lcom/google/android/gms/internal/ah;->h:Z
iput-object p10, p0, Lcom/google/android/gms/internal/ah;->i:Ljava/lang/String;
iput-object p11, p0, Lcom/google/android/gms/internal/ah;->j:Lcom/google/android/gms/internal/av;
iput-object p12, p0, Lcom/google/android/gms/internal/ah;->k:Landroid/location/Location;
iput-object p13, p0, Lcom/google/android/gms/internal/ah;->l:Ljava/lang/String;
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/ah;Landroid/os/Parcel;I)V
return-void
.end method