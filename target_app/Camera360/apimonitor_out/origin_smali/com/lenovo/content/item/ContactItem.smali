.class public Lcom/lenovo/content/item/ContactItem;
.super Lcom/lenovo/content/base/ContentItem;
.source "ContactItem.java"


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/content/item/ContactItem;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 3

    sget-object v0, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    sget-object v0, Lcom/lenovo/content/base/ContentType;->CONTACT:Lcom/lenovo/content/base/ContentType;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Landroid/content/Context;I)J
    .registers 15

    const-wide/16 v11, 0x64

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_26

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_4c

    move-result v0

    if-nez v0, :cond_2b

    :cond_26
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    move-wide v2, v11

    :goto_2a
    return-wide v2

    :cond_2b
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v10, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_4c

    move-result-wide v2

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    goto :goto_2a

    :catch_4c
    move-exception v8

    :try_start_4d
    const-string/jumbo v0, "ContactItem"

    invoke-static {v0, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_58

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    move-wide v2, v11

    goto :goto_2a

    :catchall_58
    move-exception v0

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method private a()V
    .registers 4

    new-instance v0, Lcom/lenovo/content/base/ContentProperties;

    invoke-direct {v0}, Lcom/lenovo/content/base/ContentProperties;-><init>()V

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/aw;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/content/item/ContactItem;->getContactId()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/content/item/ContactItem;->a(Landroid/content/Context;ILcom/lenovo/content/base/ContentProperties;)V

    const-string/jumbo v1, "tel_tag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    const-string/jumbo v1, "tel_number"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;ILcom/lenovo/content/base/ContentProperties;)V
    .registers 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "/data"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lenovo/content/item/ContactItem;->e:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_23

    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_5a

    move-result v2

    if-nez v2, :cond_27

    :cond_23
    :goto_23
    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    return-void

    :cond_27
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v8, 0x0

    :goto_2b
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v8, v2, :cond_23

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "tel_tag"

    const/4 v3, 0x2

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "tel_number"

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/lenovo/content/base/ContentProperties;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_59} :catch_5a

    goto :goto_23

    :catch_5a
    move-exception v7

    :try_start_5b
    const-string/jumbo v2, "ContactItem"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_66

    goto :goto_23

    :catchall_66
    move-exception v2

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V

    throw v2

    :cond_6b
    :try_start_6b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_5a

    add-int/lit8 v8, v8, 0x1

    goto :goto_2b
.end method


# virtual methods
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lcom/lenovo/content/base/ContentProperties;)V

    const-string/jumbo v0, "sort_key"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    const-string/jumbo v0, "tel_tag"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    const-string/jumbo v0, "tel_number"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    const-string/jumbo v0, "has_tel_number"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/content/item/ContactItem;->b:Z

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "tel_tag"

    iget v1, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "tel_number"

    iget-object v1, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->b(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "tel_tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "tel_tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    iput v0, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    const-string/jumbo v0, "tel_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "tel_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_26
    iput-object v0, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    iput-boolean v1, p0, Lcom/lenovo/content/item/ContactItem;->b:Z

    return-void

    :cond_35
    move v0, v1

    goto :goto_14

    :cond_37
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public getContactId()I
    .registers 2

    invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_10

    :cond_c
    const-string/jumbo v0, ""

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getSize()J
    .registers 5

    invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/lenovo/content/item/ContactItem;->isLocalObject()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/aw;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/content/item/ContactItem;->getContactId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lenovo/content/item/ContactItem;->a(Landroid/content/Context;I)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/lenovo/content/base/ContentItem;->setSize(J)V

    :cond_1f
    invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSortKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTelNumber()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/lenovo/content/item/ContactItem;->isLocalObject()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/lenovo/content/item/ContactItem;->b:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/lenovo/content/item/ContactItem;->a()V

    :cond_12
    iget-object v0, p0, Lcom/lenovo/content/item/ContactItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTelTag()I
    .registers 3

    iget v0, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/lenovo/content/item/ContactItem;->isLocalObject()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/lenovo/content/item/ContactItem;->b:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/lenovo/content/item/ContactItem;->a()V

    :cond_12
    iget v0, p0, Lcom/lenovo/content/item/ContactItem;->c:I

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/content/item/ContactItem;->b:Z

    return v0
.end method
