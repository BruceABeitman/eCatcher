.class public final Lcom/google/android/gms/identity/intents/model/UserAddress;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  KB:Ljava/lang/String;
.field  KC:Ljava/lang/String;
.field  KD:Ljava/lang/String;
.field  KE:Ljava/lang/String;
.field  KF:Ljava/lang/String;
.field  KG:Ljava/lang/String;
.field  KH:Ljava/lang/String;
.field  KI:Ljava/lang/String;
.field  KJ:Ljava/lang/String;
.field  KK:Ljava/lang/String;
.field  KL:Z
.field  KM:Ljava/lang/String;
.field  KN:Ljava/lang/String;
.field  name:Ljava/lang/String;
.field  oQ:Ljava/lang/String;
.field private final wj:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/identity/intents/model/b;
invoke-direct {v0}, Lcom/google/android/gms/identity/intents/model/b;-><init>()V
sput-object v0, Lcom/google/android/gms/identity/intents/model/UserAddress;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->wj:I
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.registers 18
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->wj:I
iput-object p2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KB:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KC:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KD:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KE:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KF:Ljava/lang/String;
iput-object p8, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KG:Ljava/lang/String;
iput-object p9, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KH:Ljava/lang/String;
iput-object p10, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->oQ:Ljava/lang/String;
iput-object p11, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KI:Ljava/lang/String;
iput-object p12, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KJ:Ljava/lang/String;
iput-object p13, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KK:Ljava/lang/String;
iput-boolean p14, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KL:Z
move-object/from16 v0, p15
iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KM:Ljava/lang/String;
move-object/from16 v0, p16
iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KN:Ljava/lang/String;
return-void
.end method
.method public static fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/identity/intents/model/UserAddress;
.registers 2
if-eqz p0, :cond_a
const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"
invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
const-string v0, "com.google.android.gms.identity.intents.EXTRA_ADDRESS"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/google/android/gms/identity/intents/model/UserAddress;
goto :goto_b
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getAddress1()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KB:Ljava/lang/String;
return-object v0
.end method
.method public final getAddress2()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KC:Ljava/lang/String;
return-object v0
.end method
.method public final getAddress3()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KD:Ljava/lang/String;
return-object v0
.end method
.method public final getAddress4()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KE:Ljava/lang/String;
return-object v0
.end method
.method public final getAddress5()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KF:Ljava/lang/String;
return-object v0
.end method
.method public final getAdministrativeArea()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KG:Ljava/lang/String;
return-object v0
.end method
.method public final getCompanyName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KM:Ljava/lang/String;
return-object v0
.end method
.method public final getCountryCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->oQ:Ljava/lang/String;
return-object v0
.end method
.method public final getEmailAddress()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KN:Ljava/lang/String;
return-object v0
.end method
.method public final getLocality()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KH:Ljava/lang/String;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;
return-object v0
.end method
.method public final getPhoneNumber()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KK:Ljava/lang/String;
return-object v0
.end method
.method public final getPostalCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KI:Ljava/lang/String;
return-object v0
.end method
.method public final getSortingCode()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KJ:Ljava/lang/String;
return-object v0
.end method
.method public final getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->wj:I
return v0
.end method
.method public final isPostBox()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->KL:Z
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/model/b;->a(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;I)V
return-void
.end method