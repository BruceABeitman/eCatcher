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
.field final a:I

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field private volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/DriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JJ)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/DriveId;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcom/google/android/gms/internal/hh;->b(Z)V

    if-nez p2, :cond_20

    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-eqz v0, :cond_21

    :cond_20
    move v2, v1

    :cond_21
    invoke-static {v2}, Lcom/google/android/gms/internal/hh;->b(Z)V

    iput-wide p3, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    return-void

    :cond_29
    move v0, v2

    goto :goto_15
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
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

    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->d:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1a

    const-string v1, "DriveId"

    const-string v2, "Attempt to compare invalid DriveId detected. Has local storage been cleared?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1a
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2f

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2f

    iget-object v0, p1, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_2f
    iget-wide v1, p1, Lcom/google/android/gms/drive/DriveId;->c:J

    iget-wide v3, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/DriveId;->c:J

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
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    if-nez v0, :cond_5c

    new-instance v1, Lcom/google/android/gms/drive/internal/y;

    invoke-direct {v1}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    iget v0, p0, Lcom/google/android/gms/drive/DriveId;->a:I

    iput v0, v1, Lcom/google/android/gms/drive/internal/y;->a:I

    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    if-nez v0, :cond_42

    const-string v0, ""

    :goto_13
    iput-object v0, v1, Lcom/google/android/gms/drive/internal/y;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->c:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/y;->c:J

    iget-wide v2, p0, Lcom/google/android/gms/drive/DriveId;->d:J

    iput-wide v2, v1, Lcom/google/android/gms/drive/internal/y;->d:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ld;->a()I

    move-result v0

    new-array v0, v0, [B

    array-length v2, v0

    :try_start_24
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ko;->a([BI)Lcom/google/android/gms/internal/ko;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ld;->a(Lcom/google/android/gms/internal/ko;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ko;->a()I

    move-result v1

    if-eqz v1, :cond_45

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_39

    :catch_39
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->b:Ljava/lang/String;

    goto :goto_13

    :cond_45
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

    iput-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/drive/DriveId;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/drive/b;->a(Lcom/google/android/gms/drive/DriveId;Landroid/os/Parcel;)V

    return-void
.end method
