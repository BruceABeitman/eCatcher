.class public final Lcom/google/android/gms/wallet/LineItem;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:Ljava/lang/String;
.field  d:Ljava/lang/String;
.field  e:I
.field  f:Ljava/lang/String;
.field private final g:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/w;
invoke-direct {v0}, Lcom/google/android/gms/wallet/w;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->g:I
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->e:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->g:I
iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->c:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->d:Ljava/lang/String;
iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->e:I
iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->f:Ljava/lang/String;
return-void
.end method
.method public static a()Lcom/google/android/gms/wallet/c;
.registers 3
new-instance v0, Lcom/google/android/gms/wallet/c;
new-instance v1, Lcom/google/android/gms/wallet/LineItem;
invoke-direct {v1}, Lcom/google/android/gms/wallet/LineItem;-><init>()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/c;-><init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
return-object v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->g:I
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->a:Ljava/lang/String;
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->b:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->c:Ljava/lang/String;
return-object v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->d:Ljava/lang/String;
return-object v0
.end method
.method public g()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->e:I
return v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->f:Ljava/lang/String;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/w;->a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V
return-void
.end method