.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  ajf:Ljava/lang/String;
.field  ajg:Ljava/lang/String;
.field  ajh:Ljava/lang/String;
.field  aji:Ljava/lang/String;
.field  ajj:Ljava/lang/String;
.field  ajk:Ljava/lang/String;
.field  ajl:Ljava/lang/String;
.field  ajm:Ljava/lang/String;
.field  ajn:Ljava/lang/String;
.field  ajo:Ljava/util/ArrayList;
.field  ajp:Lcom/google/android/gms/wallet/wobs/l;
.field  ajq:Ljava/util/ArrayList;
.field  ajr:Ljava/lang/String;
.field  ajs:Ljava/lang/String;
.field  ajt:Ljava/util/ArrayList;
.field  aju:Z
.field  ajv:Ljava/util/ArrayList;
.field  ajw:Ljava/util/ArrayList;
.field  ajx:Ljava/util/ArrayList;
.field  ajy:Lcom/google/android/gms/wallet/wobs/f;
.field  eC:Ljava/lang/String;
.field  state:I
.field private final xJ:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/wallet/j;
invoke-direct {v0}, Lcom/google/android/gms/wallet/j;-><init>()V
sput-object v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x4
iput v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xJ:I
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajo:Ljava/util/ArrayList;
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajq:Ljava/util/ArrayList;
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajt:Ljava/util/ArrayList;
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajv:Ljava/util/ArrayList;
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajw:Ljava/util/ArrayList;
invoke-static {}, Lcom/google/android/gms/internal/ih;->fV()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajx:Ljava/util/ArrayList;
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/l;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/f;)V
.registers 25
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xJ:I
iput-object p2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajf:Ljava/lang/String;
iput-object p4, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajg:Ljava/lang/String;
iput-object p5, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajh:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aji:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajj:Ljava/lang/String;
iput-object p8, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajk:Ljava/lang/String;
iput-object p9, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajl:Ljava/lang/String;
iput-object p10, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajm:Ljava/lang/String;
iput-object p11, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajn:Ljava/lang/String;
iput p12, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I
iput-object p13, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajo:Ljava/util/ArrayList;
iput-object p14, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajp:Lcom/google/android/gms/wallet/wobs/l;
move-object/from16 v0, p15
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajq:Ljava/util/ArrayList;
move-object/from16 v0, p16
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajr:Ljava/lang/String;
move-object/from16 v0, p17
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajs:Ljava/lang/String;
move-object/from16 v0, p18
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajt:Ljava/util/ArrayList;
move/from16 v0, p19
iput-boolean v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aju:Z
move-object/from16 v0, p20
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajv:Ljava/util/ArrayList;
move-object/from16 v0, p21
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajw:Ljava/util/ArrayList;
move-object/from16 v0, p22
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajx:Ljava/util/ArrayList;
move-object/from16 v0, p23
iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajy:Lcom/google/android/gms/wallet/wobs/f;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getAccountId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajf:Ljava/lang/String;
return-object v0
.end method
.method public getAccountName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->aji:Ljava/lang/String;
return-object v0
.end method
.method public getBarcodeAlternateText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajj:Ljava/lang/String;
return-object v0
.end method
.method public getBarcodeType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajk:Ljava/lang/String;
return-object v0
.end method
.method public getBarcodeValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajl:Ljava/lang/String;
return-object v0
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eC:Ljava/lang/String;
return-object v0
.end method
.method public getIssuerName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajg:Ljava/lang/String;
return-object v0
.end method
.method public getProgramName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->ajh:Ljava/lang/String;
return-object v0
.end method
.method public getVersionCode()I
.registers 2
iget v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->xJ:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/j;->a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V
return-void
.end method