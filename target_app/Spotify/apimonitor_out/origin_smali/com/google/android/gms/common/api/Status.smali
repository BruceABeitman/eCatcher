.class public final Lcom/google/android/gms/common/api/Status;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/o;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/api/r;

.field public static final a:Lcom/google/android/gms/common/api/Status;

.field public static final b:Lcom/google/android/gms/common/api/Status;

.field public static final c:Lcom/google/android/gms/common/api/Status;

.field public static final d:Lcom/google/android/gms/common/api/Status;

.field public static final e:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->b:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->e:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/r;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->f:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->g:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method final a()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/common/api/Status;
    .registers 1

    return-object p0
.end method

.method final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    return-object v0
.end method

.method final d()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->f:I

    return v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->g:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/common/api/Status;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->f:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->f:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->g:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->g:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->g:I

    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/common/api/Status;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/api/Status;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v1

    const-string v2, "statusCode"

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->h:Ljava/lang/String;

    :goto_c
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    iget v0, p0, Lcom/google/android/gms/common/api/Status;->g:I

    sparse-switch v0, :sswitch_data_6c

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown status code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :sswitch_32
    const-string v0, "SUCCESS_CACHE"

    goto :goto_c

    :sswitch_35
    const-string v0, "SUCCESS"

    goto :goto_c

    :sswitch_38
    const-string v0, "SERVICE_MISSING"

    goto :goto_c

    :sswitch_3b
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_c

    :sswitch_3e
    const-string v0, "SERVICE_DISABLED"

    goto :goto_c

    :sswitch_41
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_c

    :sswitch_44
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_c

    :sswitch_47
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_c

    :sswitch_4a
    const-string v0, "NETWORK_ERROR"

    goto :goto_c

    :sswitch_4d
    const-string v0, "INTERNAL_ERROR"

    goto :goto_c

    :sswitch_50
    const-string v0, "SERVICE_INVALID"

    goto :goto_c

    :sswitch_53
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_c

    :sswitch_56
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_c

    :sswitch_59
    const-string v0, "AUTH_API_INVALID_CREDENTIALS"

    goto :goto_c

    :sswitch_5c
    const-string v0, "AUTH_API_ACCESS_FORBIDDEN"

    goto :goto_c

    :sswitch_5f
    const-string v0, "AUTH_API_CLIENT_ERROR"

    goto :goto_c

    :sswitch_62
    const-string v0, "AUTH_API_SERVER_ERROR"

    goto :goto_c

    :sswitch_65
    const-string v0, "AUTH_TOKEN_ERROR"

    goto :goto_c

    :sswitch_68
    const-string v0, "AUTH_URL_RESOLUTION"

    goto :goto_c

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x1 -> :sswitch_32
        0x0 -> :sswitch_35
        0x1 -> :sswitch_38
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_41
        0x5 -> :sswitch_44
        0x6 -> :sswitch_47
        0x7 -> :sswitch_4a
        0x8 -> :sswitch_4d
        0x9 -> :sswitch_50
        0xa -> :sswitch_53
        0xb -> :sswitch_56
        0xbb8 -> :sswitch_59
        0xbb9 -> :sswitch_5c
        0xbba -> :sswitch_5f
        0xbbb -> :sswitch_62
        0xbbc -> :sswitch_65
        0xbbd -> :sswitch_68
    .end sparse-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/Parcel;I)V

    return-void
.end method
