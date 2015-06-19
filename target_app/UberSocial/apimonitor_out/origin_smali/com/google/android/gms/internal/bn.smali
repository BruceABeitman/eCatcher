.class public final Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bf;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/bf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bn;->CREATOR:Lcom/google/android/gms/internal/bf;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/bn;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/bn;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bn;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bn;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/bn;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/bn;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/bn;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/bn;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/bn;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bf;->a(Lcom/google/android/gms/internal/bn;Landroid/os/Parcel;I)V

    return-void
.end method
