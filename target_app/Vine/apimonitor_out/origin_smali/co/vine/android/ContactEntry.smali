.class public Lco/vine/android/ContactEntry;
.super Ljava/lang/Object;
.source "ContactEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lco/vine/android/ContactEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final sProjection:[Ljava/lang/String; = null

.field public static final sSelection:Ljava/lang/String; = "mimetype=? OR mimetype=?"

.field public static final sSelectionArgs:[Ljava/lang/String; = null

.field public static final sSortOrder:Ljava/lang/String; = "contact_id ASC "

.field public static final sUri:Landroid/net/Uri;


# instance fields
.field public alternateName:Ljava/lang/String;

.field public contactId:J

.field public displayName:Ljava/lang/String;

.field public typeFlag:I

.field public valueMimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lco/vine/android/ContactEntry;->sUri:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lco/vine/android/ContactEntry;->sProjection:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v4

    sput-object v0, Lco/vine/android/ContactEntry;->sSelectionArgs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 6

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lco/vine/android/ContactEntry;->valueMimeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lco/vine/android/ContactEntry;->contactId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/email_v2"

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :goto_2c
    iput v0, p0, Lco/vine/android/ContactEntry;->typeFlag:I

    return-void

    :cond_2f
    move v0, v1

    goto :goto_2c
.end method

.method private getCompareResult(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v1, :cond_15

    if-nez v0, :cond_19

    :cond_15
    if-nez v1, :cond_1e

    if-nez v0, :cond_1e

    :cond_19
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    :goto_1d
    return v2

    :cond_1e
    if-eqz v1, :cond_22

    const/4 v2, -0x1

    goto :goto_1d

    :cond_22
    const/4 v2, 0x1

    goto :goto_1d
.end method


# virtual methods
.method public compareTo(Lco/vine/android/ContactEntry;)I
    .registers 4

    iget-object v0, p0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/ContactEntry;->getCompareResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/ContactEntry;->getCompareResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_18
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lco/vine/android/ContactEntry;

    invoke-virtual {p0, p1}, Lco/vine/android/ContactEntry;->compareTo(Lco/vine/android/ContactEntry;)I

    move-result v0

    return v0
.end method

.method public isSameSection(Lco/vine/android/ContactEntry;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p1, Lco/vine/android/ContactEntry;->alternateName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_36

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    iget-object v1, p0, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p1, Lco/vine/android/ContactEntry;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_1f

    :cond_36
    const/4 v0, 0x1

    goto :goto_1f
.end method
