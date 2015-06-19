.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;"
        }
    .end annotation
.end field

.field final ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

.field final ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

.field final EV:Lcom/google/android/gms/drive/query/internal/InFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;"
        }
    .end annotation
.end field

.field private final EW:Lcom/google/android/gms/drive/query/Filter;

.field final wj:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/ComparisonFilter",
            "<*>;",
            "Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;",
            "Lcom/google/android/gms/drive/query/internal/LogicalFilter;",
            "Lcom/google/android/gms/drive/query/internal/NotFilter;",
            "Lcom/google/android/gms/drive/query/internal/InFilter",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EV:Lcom/google/android/gms/drive/query/internal/InFilter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_17

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_17

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_17

    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EV:Lcom/google/android/gms/drive/query/internal/InFilter;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EV:Lcom/google/android/gms/drive/query/internal/InFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

    goto :goto_17

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one filter must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->wj:I

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    :goto_e
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-eqz v0, :cond_52

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    :goto_17
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-eqz v0, :cond_54

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    :goto_20
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-eqz v0, :cond_56

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/NotFilter;

    :goto_29
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/InFilter;

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/InFilter;

    :goto_32
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EV:Lcom/google/android/gms/drive/query/internal/InFilter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ER:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ES:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->ET:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EU:Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EV:Lcom/google/android/gms/drive/query/internal/InFilter;

    if-nez v0, :cond_5a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid filter type or null filter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    move-object v0, v1

    goto :goto_e

    :cond_52
    move-object v0, v1

    goto :goto_17

    :cond_54
    move-object v0, v1

    goto :goto_20

    :cond_56
    move-object v0, v1

    goto :goto_29

    :cond_58
    move-object v0, v1

    goto :goto_32

    :cond_5a
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->EW:Lcom/google/android/gms/drive/query/Filter;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/c;->a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V

    return-void
.end method
