.class public Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fm;

.field public static final xQ:I


# instance fields
.field final xJ:I

.field public final xR:Ljava/lang/String;

.field final xS:Lcom/google/android/gms/internal/fq;

.field public final xT:I

.field public final xU:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/fl;->xQ:I

    new-instance v0, Lcom/google/android/gms/internal/fm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/fq;I[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/fl;->xQ:I

    if-eq p4, v0, :cond_d

    invoke-static {p4}, Lcom/google/android/gms/internal/fp;->H(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    :cond_d
    const/4 v0, 0x1

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/internal/fl;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fl;->xR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fl;->xS:Lcom/google/android/gms/internal/fq;

    iput p4, p0, Lcom/google/android/gms/internal/fl;->xT:I

    iput-object p5, p0, Lcom/google/android/gms/internal/fl;->xU:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->dJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    const/4 v0, 0x0

    goto :goto_e

    :cond_3c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fq;)V
    .registers 9

    const/4 v1, 0x1

    sget v4, Lcom/google/android/gms/internal/fl;->xQ:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fl;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fq;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fq;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    invoke-static {p3}, Lcom/google/android/gms/internal/fp;->Y(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fl;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fq;I[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/internal/fq;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v4, Lcom/google/android/gms/internal/fl;->xQ:I

    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fl;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fq;I[B)V

    return-void
.end method


# virtual methods
.method public dJ()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/fl;->xT:I

    sget v1, Lcom/google/android/gms/internal/fl;->xQ:I

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/fl;->xT:I

    invoke-static {v0}, Lcom/google/android/gms/internal/fp;->H(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid section type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fl;->xT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->xR:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->xU:[B

    if-eqz v0, :cond_2f

    const-string v0, "Both content and blobContent set"

    goto :goto_23

    :cond_2f
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fl;Landroid/os/Parcel;I)V

    return-void
.end method
