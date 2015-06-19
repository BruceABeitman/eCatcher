.class public Lcom/facebook/katana/platform/PlatformFastTrack;
.super Ljava/lang/Object;
.source "PlatformFastTrack.java"


# static fields
.field private static final SELECTION:Ljava/lang/String; = "account_type=\'com.facebook.auth.login\' AND account_name=? AND sourceid=?"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContactLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;
    .registers 16

    const/4 v4, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v5

    const-string v0, "lookup"

    aput-object v0, v2, v11

    const-string v3, "account_type=\'com.facebook.auth.login\' AND account_name=? AND sourceid=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_45

    :try_start_24
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_3e

    move-result-object v0

    if-eqz v8, :cond_3d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    return-object v0

    :catchall_3e
    move-exception v0

    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    :cond_45
    if-eqz v8, :cond_4a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4a
    move-object v0, v10

    goto :goto_3d
.end method

.method public static prepareBadge(Landroid/view/View;Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 9

    move-object v0, p0

    check-cast v0, Landroid/widget/QuickContactBadge;

    move-object v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/facebook/katana/platform/PlatformFastTrack;->getContactLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    array-length v3, p4

    if-lez v3, :cond_19

    invoke-virtual {v2, p4}, Landroid/widget/QuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    :cond_19
    return-void
.end method
