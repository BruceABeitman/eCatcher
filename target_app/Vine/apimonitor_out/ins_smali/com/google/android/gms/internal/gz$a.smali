.class public final Lcom/google/android/gms/internal/gz$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/hm;
.field private final DF:I
.field private final DH:Ljava/lang/String;
.field private final Ec:Ljava/util/List;
.field private final xJ:I
.field private final yN:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/hm;
invoke-direct {v0}, Lcom/google/android/gms/internal/hm;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/gz$a;->CREATOR:Lcom/google/android/gms/internal/hm;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/gz$a;->Ec:Ljava/util/List;
iput p1, p0, Lcom/google/android/gms/internal/gz$a;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/internal/gz$a;->yN:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/internal/gz$a;->Ec:Ljava/util/List;
invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iput p4, p0, Lcom/google/android/gms/internal/gz$a;->DF:I
iput-object p5, p0, Lcom/google/android/gms/internal/gz$a;->DH:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V
.registers 11
const/4 v1, 0x3
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
move-object v0, p0
move-object v2, p1
move v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gz$a;-><init>(ILjava/lang/String;Ljava/util/List;ILjava/lang/String;)V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public fe()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz$a;->yN:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/internal/gz$a;->yN:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, "<<default account>>"
goto :goto_6
.end method
.method public ff()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gz$a;->DF:I
return v0
.end method
.method public fg()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/internal/gz$a;->Ec:Ljava/util/List;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public fi()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz$a;->DH:Ljava/lang/String;
return-object v0
.end method
.method public getAccountName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/gz$a;->yN:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/gz$a;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/internal/gz$a;Landroid/os/Parcel;I)V
return-void
.end method