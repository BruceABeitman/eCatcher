.class public final Lcom/google/android/gms/internal/jv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/internal/jr;

.field d:Lcom/google/android/gms/internal/jt;

.field e:Lcom/google/android/gms/internal/jt;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/sh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/sh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jv;->f:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/jt;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jv;->f:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jv;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jv;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/jv;->c:Lcom/google/android/gms/internal/jr;

    iput-object p5, p0, Lcom/google/android/gms/internal/jv;->d:Lcom/google/android/gms/internal/jt;

    iput-object p6, p0, Lcom/google/android/gms/internal/jv;->e:Lcom/google/android/gms/internal/jt;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jv;->f:I

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/sh;->a(Lcom/google/android/gms/internal/jv;Landroid/os/Parcel;I)V

    return-void
.end method
