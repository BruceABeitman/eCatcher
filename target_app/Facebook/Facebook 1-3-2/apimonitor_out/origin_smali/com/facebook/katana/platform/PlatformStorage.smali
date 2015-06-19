.class public final Lcom/facebook/katana/platform/PlatformStorage;
.super Ljava/lang/Object;
.source "PlatformStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/platform/PlatformStorage$DataQuery;,
        Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;,
        Lcom/facebook/katana/platform/PlatformStorage$ProfileQuery;,
        Lcom/facebook/katana/platform/PlatformStorage$SyncHashQuery;,
        Lcom/facebook/katana/platform/PlatformStorage$UserIdQuery;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CUSTOM_IM_PROTOCOL:Ljava/lang/String; = "Facebook"

.field public static final DATA_DETAIL:Ljava/lang/String; = "data3"

.field public static final DATA_PID:Ljava/lang/String; = "data1"

.field public static final DATA_SUMMARY:Ljava/lang/String; = "data2"

.field public static final MIME_PROFILE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.facebook.profile"

.field private static final TAG:Ljava/lang/String; = "ContactsStorage"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/platform/PlatformStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/platform/PlatformStorage;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addInsertContactOperations(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string v1, "is_restricted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sourceid"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "sync1"

    invoke-virtual {p2, v1, p11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p11, "account_type"

    const-string v1, "com.facebook.auth.login"

    invoke-virtual {p2, p11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p11, "account_name"

    invoke-virtual {p2, p11, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 p11, 0x1

    invoke-static {p3, p11}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string p3, "data2"

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data3"

    invoke-virtual {p2, p3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "mimetype"

    const-string p4, "vnd.android.cursor.item/name"

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "raw_contact_id"

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_9e

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string p3, "data1"

    invoke-virtual {p2, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data2"

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "mimetype"

    const-string p4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "raw_contact_id"

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9e
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_d4

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string p3, "data1"

    invoke-virtual {p2, p3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data2"

    const/4 p4, 0x7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "mimetype"

    const-string p4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "raw_contact_id"

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d4
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_10a

    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string p3, "data1"

    invoke-virtual {p2, p3, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data2"

    const/4 p4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "mimetype"

    const-string p4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    const-string p4, "raw_contact_id"

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10a
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    const-string p3, "data1"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "data2"

    const p4, 0x7f080023

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "data3"

    const p4, 0x7f080102

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mimetype"

    const-string p3, "vnd.android.cursor.item/vnd.facebook.profile"

    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const-string p2, "raw_contact_id"

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static addUpdateContactOperations(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x1

    sget-object p4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p4, "sync1"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x1

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p12

    move-object/from16 v0, p2

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/facebook/katana/platform/PlatformStorage$DataQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "raw_contact_id=?"

    const/16 p12, 0x1

    move/from16 v0, p12

    new-array v0, v0, [Ljava/lang/String;

    move-object v9, v0

    const/16 p12, 0x0

    invoke-static/range {p11 .. p11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, p12

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p12

    move v6, v11

    move v10, v13

    move v9, v12

    move-object/from16 v5, v16

    move-object/from16 p1, p4

    move v11, v14

    move v12, v15

    :goto_62
    :try_start_62
    invoke-interface/range {p12 .. p12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_3b6

    move-result p4

    if-nez p4, :cond_1f4

    invoke-interface/range {p12 .. p12}, Landroid/database/Cursor;->close()V

    if-nez v9, :cond_3e7

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3e7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p1, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data2"

    const/16 p4, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "mimetype"

    const-string p4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "raw_contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move v1, v6

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/16 p4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p5

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c8
    if-nez v11, :cond_126

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_126

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p1, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data2"

    const/16 p5, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "mimetype"

    const-string p5, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "raw_contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/16 p4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p5

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_126
    if-nez v10, :cond_184

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_184

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p1, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data2"

    const/16 p5, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "mimetype"

    const-string p5, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "raw_contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object p1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    const/16 p4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p5

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_184
    if-nez v12, :cond_3e1

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p1, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "data2"

    const p5, 0x7f080023

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data3"

    const p5, 0x7f080102

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mimetype"

    const-string p1, "vnd.android.cursor.item/vnd.facebook.profile"

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "raw_contact_id"

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    const/16 p1, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p3

    invoke-virtual/range {p2 .. p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f3
    return-void

    :cond_1f4
    const/16 p4, 0x0

    :try_start_1f6
    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 p4, 0x1

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    sget-object v13, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_20d
    .catchall {:try_start_1f6 .. :try_end_20d} :catchall_3b6

    move-result-object v8

    :try_start_20e
    const-string v5, "vnd.android.cursor.item/name"

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_286

    const/4 v7, 0x0

    const/16 p4, 0x3

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 p4, 0x4

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-nez v5, :cond_266

    if-eqz p5, :cond_266

    const/16 p4, 0x1

    :goto_234
    if-eqz p4, :cond_3eb

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p4, "data2"

    invoke-virtual/range {p3 .. p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "data3"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_249
    .catchall {:try_start_20e .. :try_end_249} :catchall_3c3

    :try_start_249
    invoke-static {v8, v6}, Lcom/facebook/katana/platform/PlatformStorage;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_254
    .catchall {:try_start_249 .. :try_end_254} :catchall_3cd

    move-result-object p1

    const/16 p4, 0x0

    :try_start_257
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_261
    .catchall {:try_start_257 .. :try_end_261} :catchall_3d7

    move/from16 v6, p4

    move-object v5, v8

    goto/16 :goto_62

    :cond_266
    if-nez p4, :cond_26d

    if-eqz p6, :cond_26d

    const/16 p4, 0x1

    goto :goto_234

    :cond_26d
    :try_start_26d
    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_279

    const/16 p4, 0x1

    goto :goto_234

    :cond_279
    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3fa

    const/16 p4, 0x1

    goto :goto_234

    :cond_286
    const-string v5, "vnd.android.cursor.item/phone_v2"

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_301

    const/16 p4, 0x3

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 p4, 0x2

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a4
    .catchall {:try_start_26d .. :try_end_2a4} :catchall_3c3

    move-result-object p4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2c6

    :try_start_2a8
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object v3, v8

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/platform/PlatformStorage;->getPhoneOperation(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation;

    move-result-object p4

    if-eqz p4, :cond_3f6

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p4, 0x0

    :goto_2bf
    const/4 v5, 0x1

    move/from16 v6, p4

    move v9, v5

    move-object v5, v8

    goto/16 :goto_62

    :cond_2c6
    const/4 v7, 0x7

    if-ne v5, v7, :cond_2e7

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object v3, v8

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/katana/platform/PlatformStorage;->getPhoneOperation(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation;

    move-result-object p4

    if-eqz p4, :cond_3f2

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2de
    .catchall {:try_start_2a8 .. :try_end_2de} :catchall_3cd

    const/16 p4, 0x0

    :goto_2e0
    const/4 v5, 0x1

    move/from16 v6, p4

    move v11, v5

    move-object v5, v8

    goto/16 :goto_62

    :cond_2e7
    :try_start_2e7
    const-string p4, "ContactsStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "Ignoring unkown row type: "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    goto/16 :goto_62

    :cond_301
    const-string v5, "vnd.android.cursor.item/email_v2"

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_365

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_353

    const/16 p4, 0x2

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p9

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3ee

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p4, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_334
    .catchall {:try_start_2e7 .. :try_end_334} :catchall_3c3

    :try_start_334
    invoke-static {v8, v6}, Lcom/facebook/katana/platform/PlatformStorage;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_33f
    .catchall {:try_start_334 .. :try_end_33f} :catchall_3cd

    move-result-object p1

    const/16 p4, 0x0

    :try_start_342
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34c
    .catchall {:try_start_342 .. :try_end_34c} :catchall_3d7

    :goto_34c
    const/4 v5, 0x1

    move/from16 v6, p4

    move v10, v5

    move-object v5, v8

    goto/16 :goto_62

    :cond_353
    :try_start_353
    invoke-static {v8, v6}, Lcom/facebook/katana/platform/PlatformStorage;->newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_362
    .catchall {:try_start_353 .. :try_end_362} :catchall_3cd

    const/16 p4, 0x0

    goto :goto_34c

    :cond_365
    :try_start_365
    const-string v5, "vnd.android.cursor.item/vnd.facebook.profile"

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3eb

    const/16 p4, 0x2

    move-object/from16 v0, p12

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_3af

    move-object/from16 v0, p4

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3af

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    const-string p4, "data1"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p4

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3af
    .catchall {:try_start_365 .. :try_end_3af} :catchall_3c3

    :cond_3af
    const/16 p4, 0x1

    move/from16 v12, p4

    move-object v5, v8

    goto/16 :goto_62

    :catchall_3b6
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v5

    move-object/from16 p0, p1

    move/from16 p1, v6

    :goto_3bf
    invoke-interface/range {p12 .. p12}, Landroid/database/Cursor;->close()V

    throw p3

    :catchall_3c3
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v8

    move-object/from16 p0, p1

    move/from16 p1, v6

    goto :goto_3bf

    :catchall_3cd
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v8

    move-object/from16 p0, p1

    move/from16 p1, v6

    goto :goto_3bf

    :catchall_3d7
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v8

    move-object/from16 p0, p1

    move/from16 p1, p4

    goto :goto_3bf

    :cond_3e1
    move-object/from16 p0, p1

    move/from16 p1, p4

    goto/16 :goto_1f3

    :cond_3e7
    move/from16 p4, v6

    goto/16 :goto_c8

    :cond_3eb
    move-object v5, v8

    goto/16 :goto_62

    :cond_3ee
    move/from16 p4, v6

    goto/16 :goto_34c

    :cond_3f2
    move/from16 p4, v6

    goto/16 :goto_2e0

    :cond_3f6
    move/from16 p4, v6

    goto/16 :goto_2bf

    :cond_3fa
    move/from16 p4, v7

    goto/16 :goto_234
.end method

.method private static applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string v4, "storing contact data failed"

    const-string v3, "ContactsStorage"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    :try_start_b
    const-string v2, "com.android.contacts"

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_10
    .catch Landroid/content/OperationApplicationException; {:try_start_b .. :try_end_10} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_1b

    goto :goto_a

    :catch_11
    move-exception v2

    move-object v0, v2

    const-string v2, "ContactsStorage"

    const-string v2, "storing contact data failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_1b
    move-exception v2

    move-object v1, v2

    const-string v2, "ContactsStorage"

    const-string v2, "storing contact data failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public static checkUnrestrictedPackages(Landroid/content/Context;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v7, "com.android.contacts"

    invoke-virtual {v2, v7, v10}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_f

    move v7, v10

    :goto_e
    return v7

    :cond_f
    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-nez v5, :cond_1d

    move v7, v10

    goto :goto_e

    :cond_1d
    const-string v7, "unrestricted_packages"

    const-string v8, "array"

    iget-object v9, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2b

    move v7, v10

    goto :goto_e

    :cond_2b
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    move v7, v10

    goto :goto_e

    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    :goto_38
    array-length v7, v1

    if-lt v0, v7, :cond_3d

    move v7, v10

    goto :goto_e

    :cond_3d
    aget-object v7, v1, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_47

    const/4 v7, 0x1

    goto :goto_e

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_38
.end method

.method public static fixContactsHelper(Landroid/content/Context;)V
    .registers 6

    sget-boolean v2, Lcom/facebook/katana/platform/PlatformStorage;->$assertionsDisabled:Z

    if-nez v2, :cond_16

    invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_10
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_16
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static getPhoneOperation(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation;
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_d
    return-object v1

    :cond_e
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    const-string v1, "data1"

    invoke-virtual {p0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    :goto_1e
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    goto :goto_d

    :cond_23
    invoke-static {p3, p4}, Lcom/facebook/katana/platform/PlatformStorage;->newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto :goto_1e
.end method

.method public static insertStatuses(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1c

    invoke-static {v3, v2}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    return-void

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->lookupProfile(Landroid/content/ContentResolver;J)J

    move-result-wide v0

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_12

    const-string v6, "presence_data_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "status"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_ts"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "protocol"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "custom_protocol"

    const-string v1, "Facebook"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "im_account"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "im_handle"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "status_res_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "status_icon"

    const v0, 0x7f02006c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "status_label"

    const v0, 0x7f08001f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p2, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/facebook/katana/platform/PlatformStorage;->newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v0, 0x32

    if-lt p2, v0, :cond_12

    invoke-static {v3, v2}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_12
.end method

.method private static lookupProfile(Landroid/content/ContentResolver;J)J
    .registers 12

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/platform/PlatformStorage$ProfileQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/vnd.facebook.profile\' AND data1=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_25

    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2b

    move-result-wide v7

    :cond_25
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2a
    return-wide v7

    :catchall_2b
    move-exception v0

    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v0
.end method

.method private static lookupRawContact(Landroid/content/ContentResolver;J)J
    .registers 12

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/platform/PlatformStorage$UserIdQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type=\'com.facebook.auth.login\' AND sourceid=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_29

    move-result-wide v6

    :cond_23
    if-eqz v8, :cond_28

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_28
    return-wide v6

    :catchall_29
    move-exception v0

    if-eqz v8, :cond_2f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2f
    throw v0
.end method

.method static newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 3

    invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method static newInsertCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 3

    invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method static newUpdateCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 3

    invoke-static {p0}, Lcom/facebook/katana/platform/PlatformStorage;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized syncContacts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v21, Lcom/facebook/katana/platform/PlatformStorage;

    monitor-enter v21

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/facebook/katana/platform/PlatformStorage$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "account_type=\'com.facebook.auth.login\' AND account_name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_c3

    move-result-object v4

    if-nez v4, :cond_3c

    :cond_1f
    :goto_1f
    monitor-exit v21

    return-void

    :cond_21
    const/4 v5, 0x1

    :try_start_22
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v10, 0x2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v8, v10}, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;-><init>(JLjava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_c6

    move-result v5

    if-nez v5, :cond_21

    :try_start_42
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_53
    :goto_53
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_cb

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_7c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6c
    :goto_6c
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_141

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    :cond_7c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_90
    :goto_90
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_17e

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    :cond_a0
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_1f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_b8
    :goto_b8
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1c1

    invoke-static {v3, v5}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V
    :try_end_c1
    .catchall {:try_start_42 .. :try_end_c1} :catchall_c3

    goto/16 :goto_1f

    :catchall_c3
    move-exception p0

    monitor-exit v21

    throw p0

    :catchall_c6
    move-exception p0

    :try_start_c7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_cb
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;

    if-eqz p2, :cond_126

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;->syncHash:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11a

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;->localId:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11a

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11a
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_53

    :cond_126
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_53

    :cond_141
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/facebook/katana/platform/PlatformStorage$ExistingContact;->localId:J

    move-wide v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->newDeleteCpo(Landroid/net/Uri;Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v6, 0x32

    move/from16 v0, p2

    move v1, v6

    if-lt v0, v1, :cond_6c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6c

    :cond_17e
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getFirstName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getLastName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getCellPhone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getOtherPhone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    invoke-static/range {v4 .. v15}, Lcom/facebook/katana/platform/PlatformStorage;->addInsertContactOperations(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v4, 0x32

    move/from16 v0, p2

    move v1, v4

    if-lt v0, v1, :cond_90

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_90

    :cond_1c1
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getFirstName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getLastName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getCellPhone()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getOtherPhone()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getContactEmail()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->getUserId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookFriendInfo;->computeHash()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v5

    move-object v10, v6

    move-object/from16 v11, p1

    invoke-static/range {v7 .. v19}, Lcom/facebook/katana/platform/PlatformStorage;->addUpdateContactOperations(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v4, 0x32

    move/from16 v0, p2

    move v1, v4

    if-lt v0, v1, :cond_b8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/platform/PlatformStorage;->applyOperationsToContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_213
    .catchall {:try_start_c7 .. :try_end_213} :catchall_c3

    goto/16 :goto_b8
.end method

.method public static updateContactPhoto(Landroid/content/Context;J[B)V
    .registers 14

    const-string v9, "vnd.android.cursor.item/photo"

    const-string v8, "mimetype"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/facebook/katana/platform/PlatformStorage;->lookupRawContact(Landroid/content/ContentResolver;J)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_69

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "raw_contact_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "data15"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Lcom/facebook/katana/platform/PlatformStorage;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "raw_contact_id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mimetype"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "vnd.android.cursor.item/photo"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_69
    return-void
.end method
