.class abstract Lcom/millennialmedia/android/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final a:J = 0x465b8f9134839c6L

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3

.field private static final k:Ljava/lang/String; = "CachedAd"


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/util/Date;

.field g:J

.field h:Ljava/lang/String;

.field i:I

.field j:Z

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/ai;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/ai;->g:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/millennialmedia/android/ai;->j:Z

    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/ai;->g:J

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/millennialmedia/android/ai;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/ai;->i:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/ai;
    .registers 7

    const/4 v2, 0x0

    sget v0, Lcom/millennialmedia/android/co;->c:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_32

    const-string v0, "CachedAd"

    const-string v1, "Received cached ad."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x3e8

    if-le v3, v0, :cond_3e

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    :goto_18
    if-ge v0, v3, :cond_4a

    const-string v4, "CachedAd"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit16 v1, v0, 0x3e8

    if-le v1, v3, :cond_46

    add-int/lit8 v1, v3, -0x1

    :goto_29
    const-string v3, "CachedAd"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_44

    new-instance v0, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V

    :goto_3d
    return-object v0

    :cond_3e
    const-string v0, "CachedAd"

    invoke-static {v0, p0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_44
    move-object v0, v2

    goto :goto_3d

    :cond_46
    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_18

    :cond_4a
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_29
.end method

.method static synthetic a(Lcom/millennialmedia/android/ai;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/content/Context;J)V
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5

    const/4 v1, 0x0

    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    const-string v0, "vid"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    const-string v0, "content-url"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    const-string v0, "expiration"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss ZZZZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_28
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_28 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    const-string v1, "CachedAd"

    const-string v2, "Exception deserializing cached ad: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method a()Z
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method abstract a(Landroid/content/Context;)Z
.end method

.method abstract a(Landroid/content/Context;Lcom/millennialmedia/android/bp;Z)Z
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    return-void
.end method

.method b()Z
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method abstract b(Landroid/content/Context;)Z
.end method

.method abstract c()I
.end method

.method c(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_44

    :try_start_d
    new-instance v2, Lcom/millennialmedia/android/ai$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/ai$1;-><init>(Lcom/millennialmedia/android/ai;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const-string v2, "CachedAd"

    const-string v3, "Deleting %d files for %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    array-length v2, v1

    if-ge v0, v2, :cond_44

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_39} :catch_3c

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :catch_3c
    move-exception v0

    const-string v1, "CachedAd"

    const-string v2, "Exception deleting cached ad: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_44
    return-void
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract d(Landroid/content/Context;)Z
.end method

.method e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lcom/millennialmedia/android/ai;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lcom/millennialmedia/android/ai;

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/ai;->g:J

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/ai;->g:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->f:Ljava/util/Date;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-wide v0, p0, Lcom/millennialmedia/android/ai;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/millennialmedia/android/ai;->j:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/millennialmedia/android/ai;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/millennialmedia/android/ai;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
