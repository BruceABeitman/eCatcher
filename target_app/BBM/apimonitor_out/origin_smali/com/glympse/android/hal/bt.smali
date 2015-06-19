.class Lcom/glympse/android/hal/bt;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/glympse/android/hal/GUserProfile;


# instance fields
.field private _name:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private eL:Lcom/glympse/android/core/GDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/bt;->e:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/glympse/android/core/GDrawable;
    .registers 10

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "photo_thumb_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_aa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_15} :catch_dc

    move-result v2

    if-nez v2, :cond_aa

    :try_start_18
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_a5

    move-result-object v2

    :goto_20
    if-nez v2, :cond_3c

    :try_start_22
    const-string v1, "photo_uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_31} :catch_b3

    move-result v4

    if-nez v4, :cond_3c

    :try_start_34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3b} :catch_ad

    move-result-object v2

    :cond_3c
    :goto_3c
    if-nez v2, :cond_df

    :try_start_3e
    const-string v1, "contact_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_df

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_df

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_56} :catch_b3

    move-result-object v1

    :try_start_57
    invoke-static {v3, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_b8

    move-result-object v2

    :goto_5b
    if-nez v2, :cond_69

    if-eqz v1, :cond_69

    :try_start_5f
    const-string v4, "photo"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_64} :catch_b3

    move-result-object v1

    :try_start_65
    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_be

    move-result-object v2

    :cond_69
    :goto_69
    if-nez v2, :cond_88

    :try_start_6b
    const-string v1, "photo_file_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_88

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_88

    sget-object v4, Lcom/glympse/android/hal/android/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_83} :catch_b3

    move-result-object v1

    :try_start_84
    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_c8

    move-result-object v2

    :cond_88
    :goto_88
    if-eqz v2, :cond_a4

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_8f
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    new-instance v1, Lcom/glympse/android/hal/ac;

    invoke-direct {v1, v4}, Lcom/glympse/android/hal/ac;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_9d} :catch_d2

    move-object v0, v1

    :goto_9e
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_a4} :catch_d7

    :cond_a4
    :goto_a4
    return-object v0

    :catch_a5
    move-exception v1

    const/4 v2, 0x0

    :try_start_a7
    invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_aa} :catch_dc

    :cond_aa
    move-object v2, v0

    goto/16 :goto_20

    :catch_ad
    move-exception v1

    const/4 v4, 0x0

    :try_start_af
    invoke-static {v1, v4}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_3c

    :catch_b3
    move-exception v1

    :goto_b4
    invoke-static {v1, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_88

    :catch_b8
    move-exception v4

    const/4 v5, 0x0

    :try_start_ba
    invoke-static {v4, v5}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_5b

    :catch_be
    move-exception v1

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_69

    :catch_c8
    move-exception v1

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_d1} :catch_b3

    goto :goto_88

    :catch_d2
    move-exception v1

    invoke-static {v1, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_9e

    :catch_d7
    move-exception v1

    invoke-static {v1, v7}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_a4

    :catch_dc
    move-exception v1

    move-object v2, v0

    goto :goto_b4

    :cond_df
    move-object v1, v0

    goto/16 :goto_5b
.end method

.method public static a(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3

    const-string v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private a(Landroid/net/Uri;)Z
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/glympse/android/hal/bt;->e:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/hal/bt;->e:Landroid/content/Context;

    const-string v1, "android.permission.READ_PROFILE"

    invoke-static {v0, v1}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :cond_15
    move v0, v6

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/glympse/android/hal/bt;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2a

    move v0, v6

    goto :goto_16

    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2d} :catch_40

    :try_start_2d
    invoke-static {v0}, Lcom/glympse/android/hal/bt;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/hal/bt;->_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/hal/bt;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/glympse/android/hal/bt;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/glympse/android/core/GDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/hal/bt;->eL:Lcom/glympse/android/core/GDrawable;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3b} :catch_43

    :goto_3b
    :try_start_3b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_40

    const/4 v0, 0x1

    goto :goto_16

    :catch_40
    move-exception v0

    move v0, v6

    goto :goto_16

    :catch_43
    move-exception v1

    goto :goto_3b
.end method


# virtual methods
.method public fetch()Z
    .registers 2

    invoke-static {}, Lcom/glympse/android/hal/android/provider/ContactsContract;->init()V

    sget-object v0, Lcom/glympse/android/hal/android/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, v0}, Lcom/glympse/android/hal/bt;->a(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_8
.end method

.method public getAvatar()Lcom/glympse/android/core/GDrawable;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bt;->eL:Lcom/glympse/android/core/GDrawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bt;->_name:Ljava/lang/String;

    return-object v0
.end method
