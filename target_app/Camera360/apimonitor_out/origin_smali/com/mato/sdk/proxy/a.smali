.class final Lcom/mato/sdk/proxy/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/mato/sdk/proxy/Address;
    .registers 2

    new-instance v0, Lcom/mato/sdk/proxy/Address;

    invoke-direct {v0, p0}, Lcom/mato/sdk/proxy/Address;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/mato/sdk/proxy/Address;
    .registers 2

    new-array v0, p0, [Lcom/mato/sdk/proxy/Address;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/mato/sdk/proxy/Address;

    invoke-direct {v0, p1}, Lcom/mato/sdk/proxy/Address;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    new-array v0, p1, [Lcom/mato/sdk/proxy/Address;

    return-object v0
.end method
