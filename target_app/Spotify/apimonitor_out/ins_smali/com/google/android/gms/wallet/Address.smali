.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:Ljava/lang/String;
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:Z
.field  k:Ljava/lang/String;
.field private final l:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/a;
invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/Address;->l:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/Address;->l:I
iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->d:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->e:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->f:Ljava/lang/String;
iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->g:Ljava/lang/String;
iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->h:Ljava/lang/String;
iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->i:Ljava/lang/String;
iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->j:Z
iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->k:Ljava/lang/String;
return-void
.end method
.method public final a()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/Address;->l:I
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;)V
return-void
.end method