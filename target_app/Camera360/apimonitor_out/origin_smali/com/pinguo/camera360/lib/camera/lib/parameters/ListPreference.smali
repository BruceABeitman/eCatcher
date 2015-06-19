.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field PGCameraPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

.field protected mDefault:Ljava/lang/String;

.field protected mDefaultValues:[Ljava/lang/String;

.field private mEnable:Z

.field private mEntries:[Ljava/lang/Object;

.field private mEntryValues:[Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mTitle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->PGCameraPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEnable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mLoaded:Z

    iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->PGCameraPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    return-void
.end method

.method private findSupportedDefaultValue()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    :cond_14
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    :cond_22
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    :cond_30
    return-object v0
.end method

.method public filterDuplicated()V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    array-length v3, v5

    :goto_e
    if-lt v2, v3, :cond_27

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    return-void

    :cond_27
    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public filterUnsupported(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    array-length v3, v5

    :goto_e
    if-lt v2, v3, :cond_27

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    return-void

    :cond_27
    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_45

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v2

    :goto_4
    if-lt v0, v1, :cond_8

    const/4 v0, -0x1

    :cond_7
    return v0

    :cond_8
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/pinguo/lib/util/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :try_start_12
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_25

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_25
    move-exception v2

    goto :goto_22
.end method

.method public getCurrValueIndex()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/util/CollectionTools;->searchAuto([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEntries()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEntry()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEntry(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v3, v4

    const-string/jumbo v1, ""

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_18

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_17
    return-object v2

    :cond_18
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_28

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_17

    :cond_28
    move-object v2, v1

    goto :goto_17
.end method

.method public getEntryValues()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mLoaded:Z

    if-nez v1, :cond_5f

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefault:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    const-string/jumbo v1, "pref_camera_jpegquality_key"

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "100"

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string/jumbo v1, "95"

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    const-string/jumbo v2, "95"

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string/jumbo v1, "sssss"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getValue mkey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mLoaded:Z

    :cond_5f
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    return-object v1

    :cond_62
    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PGCameraPreferences is null!!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEnable:Z

    return v0
.end method

.method public reloadValue()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mLoaded:Z

    return-void
.end method

.method public setDefault()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefault:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    return-void
.end method

.method public setDefaultValues([Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    :cond_5
    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEnable:Z

    return-void
.end method

.method public setEntries([Ljava/lang/Object;)V
    .registers 3

    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/Object;

    :cond_5
    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    :cond_5
    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value error, key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method public setValueByIndex(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValueIndex(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ListPreference{PGCameraPreferences="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->PGCameraPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDefault=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDefaultValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mDefaultValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntries:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEntryValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
