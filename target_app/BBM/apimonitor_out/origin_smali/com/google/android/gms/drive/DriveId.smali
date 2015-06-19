.class public Lcom/google/android/gms/drive/DriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dc:Ljava/lang/String;

.field final Dd:J

.field final De:J

.field private volatile Df:Ljava/lang/String;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/d;

    invoke-direct {v0}, Lcom/google/android/gms/drive/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Df:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/internal/er;->x(Z)V

    if-nez p2, :cond_20

    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-eqz v0, :cond_21

    :cond_20
    move v2, v1

    :cond_21
    invoke-static {v2}, Lcom/google/android/gms/internal/er;->x(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->De:J

    return-void

    :cond_29
    move v0, v2

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 13

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    return-void
.end method

.method public static aq(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 7

    const-wide/16 v2, -0x1

    invoke-static {p0}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public static decodeFromString(Ljava/lang/String;)Lcom/google/android/gms/drive/DriveId;
    .registers 4

    const-string v0, "DriveId:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid DriveId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/DriveId;->f([B)Lcom/google/android/gms/drive/DriveId;

    move-result-object v0

    return-object v0
.end method

.method static f([B)Lcom/google/android/gms/drive/DriveId;
    .registers 8

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/drive/internal/y;->g([B)Lcom/google/android/gms/drive/internal/y;
    :try_end_3
    .catch Lcom/google/android/gms/internal/kd; {:try_start_0 .. :try_end_3} :catch_1b

    move-result-object v5

    const-string v0, ""

    iget-object v1, v5, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v2, 0x0

    :goto_f
    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    iget v1, v5, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    iget-wide v3, v5, Lcom/google/android/gms/drive/internal/y;->DW:J

    iget-wide v5, v5, Lcom/google/android/gms/drive/internal/y;->DX:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(ILjava/lang/String;JJ)V

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_22
    iget-object v2, v5, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    goto :goto_f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final eR()[B
    .registers 5

    new-instance v1, Lcom/google/android/gms/drive/internal/y;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->wj:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    if-nez v0, :cond_1e

    const-string v0, ""

    :goto_f
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/y;->DW:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->De:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/y;->DX:J

    invoke-static {v1}, Lcom/google/android/gms/internal/ke;->d(Lcom/google/android/gms/internal/ke;)[B

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    goto :goto_f
.end method

.method public final encodeToString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Df:Ljava/lang/String;

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->eR()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DriveId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Df:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Df:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/drive/DriveId;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    check-cast p1, Lcom/google/android/gms/drive/DriveId;

    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->De:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->De:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    const-string v1, "DriveId"

    const-string v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1a
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->Dd:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2f

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2f

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_2f
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->Dd:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getResourceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->Dc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->De:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->Dd:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/drive/DriveId;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/d;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;I)V

    return-void
.end method
