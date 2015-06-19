.class Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;
.super Ljava/lang/Object;
.source "ReportCommentUtil.java"

# interfaces
.implements Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/instagram/feed/comments/util/b;

    invoke-direct {v0}, Lcom/instagram/feed/comments/util/b;-><init>()V

    sput-object v0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_19

    :goto_16
    iput-boolean v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->c:Z

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)V
    .registers 8

    iget-boolean v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->c:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->a:Ljava/lang/String;

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->e(Ljava/lang/String;)Lcom/instagram/feed/d/b;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Landroid/support/v4/app/an;

    move-result-object v2

    sget v3, Lcom/instagram/feed/comments/c/b;->b:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/instagram/feed/comments/b/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;ILcom/instagram/api/j/a;)V

    :cond_28
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/instagram/feed/comments/util/ReportCommentUtil$ReportCommentDelegate;->c:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_f
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method
