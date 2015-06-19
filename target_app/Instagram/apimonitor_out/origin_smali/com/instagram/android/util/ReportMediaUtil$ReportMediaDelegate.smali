.class Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;
.super Ljava/lang/Object;
.source "ReportMediaUtil.java"

# interfaces
.implements Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/android/util/e;

    invoke-direct {v0}, Lcom/instagram/android/util/e;-><init>()V

    sput-object v0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)V
    .registers 6

    const-string v0, "tag-removed"

    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->V()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->U()Lcom/instagram/model/people/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/instagram/model/people/b;->b(Lcom/instagram/user/c/a;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->y()V

    :cond_33
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/util/ReportMediaUtil$ReportMediaDelegate;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
