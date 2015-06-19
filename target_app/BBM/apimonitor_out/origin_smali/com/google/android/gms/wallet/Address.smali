.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field KB:Ljava/lang/String;

.field KC:Ljava/lang/String;

.field KD:Ljava/lang/String;

.field KI:Ljava/lang/String;

.field KK:Ljava/lang/String;

.field KL:Z

.field KM:Ljava/lang/String;

.field Yd:Ljava/lang/String;

.field Ye:Ljava/lang/String;

.field name:Ljava/lang/String;

.field oQ:Ljava/lang/String;

.field private final wj:I


# direct methods
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

    iput v0, p0, Lcom/google/android/gms/wallet/Address;->wj:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/Address;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->KB:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->KC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->KD:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->oQ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->Yd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->Ye:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->KI:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->KK:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->KL:Z

    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->KM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAddress1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KB:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddress2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KC:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddress3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KD:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Yd:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompanyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KM:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->oQ:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KK:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostalCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->KI:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->Ye:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/Address;->wj:I

    return v0
.end method

.method public final isPostBox()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/Address;->KL:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    return-void
.end method
