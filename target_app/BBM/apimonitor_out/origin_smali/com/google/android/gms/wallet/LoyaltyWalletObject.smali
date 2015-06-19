.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field YC:Ljava/lang/String;

.field YD:Ljava/lang/String;

.field YE:Ljava/lang/String;

.field YF:Ljava/lang/String;

.field YG:Ljava/lang/String;

.field YH:Ljava/lang/String;

.field YI:Ljava/lang/String;

.field YJ:Ljava/lang/String;

.field YK:Ljava/lang/String;

.field YL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jv;",
            ">;"
        }
    .end annotation
.end field

.field YM:Lcom/google/android/gms/internal/jr;

.field YN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field YO:Ljava/lang/String;

.field YP:Ljava/lang/String;

.field YQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jj;",
            ">;"
        }
    .end annotation
.end field

.field YR:Z

.field YS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field

.field YT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jp;",
            ">;"
        }
    .end annotation
.end field

.field YU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;"
        }
    .end annotation
.end field

.field YV:Lcom/google/android/gms/internal/jl;

.field eN:Ljava/lang/String;

.field state:I

.field private final wj:I


# direct methods
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

    iput v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->wj:I

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YN:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YQ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YS:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YT:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/fj;->eH()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YU:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/internal/jr;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/internal/jl;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jv;",
            ">;",
            "Lcom/google/android/gms/internal/jr;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jj;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jp;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/jt;",
            ">;",
            "Lcom/google/android/gms/internal/jl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eN:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YC:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YE:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YF:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YG:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YH:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YI:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YJ:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YK:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    iput-object p13, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YL:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YM:Lcom/google/android/gms/internal/jr;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YN:Ljava/util/ArrayList;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YO:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YP:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YQ:Ljava/util/ArrayList;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YR:Z

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YS:Ljava/util/ArrayList;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YT:Ljava/util/ArrayList;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YU:Ljava/util/ArrayList;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YV:Lcom/google/android/gms/internal/jl;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getAccountId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YC:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YF:Ljava/lang/String;

    return-object v0
.end method

.method public final getBarcodeAlternateText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YG:Ljava/lang/String;

    return-object v0
.end method

.method public final getBarcodeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YH:Ljava/lang/String;

    return-object v0
.end method

.method public final getBarcodeValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YI:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->eN:Ljava/lang/String;

    return-object v0
.end method

.method public final getIssuerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YD:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->YE:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->wj:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/j;->a(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
