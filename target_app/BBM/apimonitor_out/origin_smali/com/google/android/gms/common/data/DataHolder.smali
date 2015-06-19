.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static final Ai:Lcom/google/android/gms/common/data/DataHolder$Builder;

.field public static final CREATOR:Lcom/google/android/gms/common/data/DataHolderCreator;


# instance fields
.field private final Aa:[Ljava/lang/String;

.field Ab:Landroid/os/Bundle;

.field private final Ac:[Landroid/database/CursorWindow;

.field private final Ad:Landroid/os/Bundle;

.field Ae:[I

.field Af:I

.field private Ag:Ljava/lang/Object;

.field private Ah:Z

.field mClosed:Z

.field private final wj:I

.field private final yJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/data/DataHolderCreator;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/DataHolderCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/DataHolderCreator;

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->Ai:Lcom/google/android/gms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ah:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->Aa:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->yJ:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->Ad:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/AbstractWindowedCursor;ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder;->a(Landroid/database/AbstractWindowedCursor;)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p4}, Lcom/google/android/gms/common/data/DataHolder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ah:Z

    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->wj:I

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Aa:[Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->yJ:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->Ad:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->validateContents()V

    return-void
.end method

.method private static a(Landroid/database/AbstractWindowedCursor;)[Landroid/database/CursorWindow;
    .registers 6

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_6
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v4

    if-nez v4, :cond_70

    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    move v1, v0

    :goto_25
    if-ge v1, v3, :cond_60

    invoke-virtual {p0, v1}, Landroid/database/AbstractWindowedCursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    :goto_3a
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_25

    :cond_4e
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {p0, v1, v0}, Landroid/database/AbstractWindowedCursor;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_5a
    .catchall {:try_start_6 .. :try_end_5a} :catchall_5b

    goto :goto_3a

    :catchall_5b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    throw v0

    :cond_60
    invoke-virtual {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0

    :cond_70
    move v1, v0

    goto :goto_25
.end method

.method private static a(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .registers 14

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_b

    new-array v0, v4, [Landroid/database/CursorWindow;

    :goto_a
    return-object v0

    :cond_b
    if-ltz p1, :cond_17

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->b(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_8a

    :cond_17
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->b(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-instance v5, Landroid/database/CursorWindow;

    invoke-direct {v5, v4}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v3, v4

    move v0, v4

    :goto_37
    if-ge v3, v10, :cond_17c

    :try_start_39
    invoke-virtual {v5}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-nez v1, :cond_18a

    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Allocating additional cursor window for large data set (row "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v5, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v5, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "DataHolder"

    const-string v1, "Unable to allocate row to hold data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_89
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_89} :catch_126

    goto :goto_a

    :cond_8a
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->b(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1c

    :cond_94
    move v9, v4

    :goto_95
    :try_start_95
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    move v8, v4

    :goto_9d
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v8, v6, :cond_13a

    if-eqz v1, :cond_13a

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v8

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_ba

    invoke-virtual {v5, v9, v8}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v1

    :goto_b6
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_9d

    :cond_ba
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_c5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1, v9, v8}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_b6

    :cond_c5
    instance-of v7, v1, Ljava/lang/Long;

    if-eqz v7, :cond_d4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_b6

    :cond_d4
    instance-of v7, v1, Ljava/lang/Integer;

    if-eqz v7, :cond_e4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_b6

    :cond_e4
    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_fa

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f7

    const-wide/16 v6, 0x1

    :goto_f2
    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_b6

    :cond_f7
    const-wide/16 v6, 0x0

    goto :goto_f2

    :cond_fa
    instance-of v7, v1, [B

    if-eqz v7, :cond_107

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v5, v1, v9, v8}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v1

    goto :goto_b6

    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported object for column "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_126
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_126} :catch_126

    :catch_126
    move-exception v0

    move-object v1, v0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_12c
    if-ge v4, v2, :cond_17b

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12c

    :cond_13a
    if-nez v1, :cond_175

    :try_start_13c
    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t populate window data for row "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " - allocating new window."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v1, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->a(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16a
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_16a} :catch_126

    add-int/lit8 v0, v3, -0x1

    move-object v3, v1

    move v1, v4

    :goto_16e
    add-int/lit8 v0, v0, 0x1

    move-object v5, v3

    move v3, v0

    move v0, v1

    goto/16 :goto_37

    :cond_175
    add-int/lit8 v0, v9, 0x1

    move v1, v0

    move v0, v3

    move-object v3, v5

    goto :goto_16e

    :cond_17b
    throw v1

    :cond_17c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_a

    :cond_18a
    move v9, v0

    goto/16 :goto_95
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public static builder([Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such column: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    if-ltz p2, :cond_35

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Af:I

    if-lt p2, v0, :cond_3d

    :cond_35
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Af:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_3d
    return-void
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public static empty(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->Ai:Lcom/google/android/gms/common/data/DataHolder$Builder;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final I(I)I
    .registers 4

    const/4 v1, 0x0

    if-ltz p1, :cond_20

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Af:I

    if-ge p1, v0, :cond_20

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/er;->v(Z)V

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ae:[I

    array-length v0, v0

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ae:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_22

    add-int/lit8 v1, v1, -0x1

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ae:[I

    array-length v0, v0

    if-ne v1, v0, :cond_1f

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_8

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ag:Ljava/lang/Object;

    return-void
.end method

.method public final close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final copyToBuffer(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method final dH()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Aa:[Ljava/lang/String;

    return-object v0
.end method

.method final dI()[Landroid/database/CursorWindow;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final finalize()V
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ah:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_43

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ag:Ljava/lang/Object;

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "internal object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    const-string v1, "DataBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call close() on all DataBuffer extending objects when you are done with them. ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_4e

    :cond_43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ag:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4e

    move-result-object v0

    goto :goto_26

    :catchall_4e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;II)Z
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final getByteArray(Ljava/lang/String;II)[B
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public final getCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Af:I

    return v0
.end method

.method public final getInteger(Ljava/lang/String;II)I
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public final getLong(Ljava/lang/String;II)J
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ad:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->yJ:I

    return v0
.end method

.method public final getString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->wj:I

    return v0
.end method

.method public final hasColumn(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final hasNull(Ljava/lang/String;II)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->e(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_5

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final parseUri(Ljava/lang/String;II)Landroid/net/Uri;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_7
.end method

.method public final validateContents()V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->Aa:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->Ab:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->Aa:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Ae:[I

    move v0, v1

    :goto_22
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->Ae:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->Ac:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_43
    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->Af:I

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolderCreator;->a(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    return-void
.end method
