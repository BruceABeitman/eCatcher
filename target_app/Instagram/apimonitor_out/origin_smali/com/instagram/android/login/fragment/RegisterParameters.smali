.class public Lcom/instagram/android/login/fragment/RegisterParameters;
.super Ljava/lang/Object;
.source "RegisterParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/login/fragment/RegisterParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/android/login/fragment/by;

    invoke-direct {v0}, Lcom/instagram/android/login/fragment/by;-><init>()V

    sput-object v0, Lcom/instagram/android/login/fragment/RegisterParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .registers 2

    invoke-static {p0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Parcel;)Lcom/instagram/android/login/fragment/RegisterParameters;
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/instagram/android/login/fragment/RegisterParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/login/fragment/RegisterParameters;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
