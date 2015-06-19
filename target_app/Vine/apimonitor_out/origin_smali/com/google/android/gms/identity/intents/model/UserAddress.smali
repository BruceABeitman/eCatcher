.class public final Lcom/google/android/gms/identity/intents/model/UserAddress;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/intents/model/UserAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field UE:Ljava/lang/String;

.field UF:Ljava/lang/String;

.field UG:Ljava/lang/String;

.field UH:Ljava/lang/String;

.field UI:Ljava/lang/String;

.field UJ:Ljava/lang/String;

.field UK:Ljava/lang/String;

.field UL:Ljava/lang/String;

.field UM:Ljava/lang/String;

.field UN:Ljava/lang/String;

.field UO:Z

.field UP:Ljava/lang/String;

.field UQ:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rc:Ljava/lang/String;

.field private final xJ:I


# direct methods
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

    iput v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xJ:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UE:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UF:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UH:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UI:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UJ:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UK:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->rc:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UL:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UM:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UN:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UO:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UP:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UQ:Ljava/lang/String;

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


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UE:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UF:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UG:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UH:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UI:Ljava/lang/String;

    return-object v0
.end method

.method public getAdministrativeArea()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UJ:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UP:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->rc:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UQ:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UK:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UN:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UL:Ljava/lang/String;

    return-object v0
.end method

.method public getSortingCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UM:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->xJ:I

    return v0
.end method

.method public isPostBox()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/identity/intents/model/UserAddress;->UO:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/model/b;->a(Lcom/google/android/gms/identity/intents/model/UserAddress;Landroid/os/Parcel;I)V

    return-void
.end method
