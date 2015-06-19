.class public Lco/vine/android/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/util/Util$1;,
        Lco/vine/android/util/Util$ProfileImageSize;,
        Lco/vine/android/util/Util$AddressBookContact;,
        Lco/vine/android/util/Util$ContentType;
    }
.end annotation


# static fields
.field public static final ALPHA_MASK:I = -0x1000000

.field public static final BROADCAST_PERMISSION:Ljava/lang/String; = "co.vine.android.BROADCAST"

.field public static final COLOR_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter; = null

.field public static final CURSOR_INCREMENT:I = 0x14

.field private static final DATE_FORMAT_LOCK:[I = null

.field public static final DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat; = null

.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static final DECIMAL_FORMAT:Ljava/text/DecimalFormat; = null

.field public static final DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols; = null

.field public static final DEFAULT_PAGE_SIZE:I = 0xa

.field public static final FIELD_TYPE_FAX:Ljava/lang/String; = "fax"

.field public static final FIELD_TYPE_HOME:Ljava/lang/String; = "home"

.field public static final FIELD_TYPE_MAIN:Ljava/lang/String; = "main"

.field public static final FIELD_TYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final FIELD_TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final FIELD_TYPE_WORK:Ljava/lang/String; = "work"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FILE_SCHEME:Ljava/lang/String; = "file://"

.field public static final GLOBAL_LIMIT:I = 0x190

.field public static final HALF_ALPHA_MASK:I = -0x80000000

.field public static final HOUR_MILLIS:J = 0x36ee80L

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final IO_BUFFER_SIZE:I = 0x1000

.field public static final KB_BYTES:I = 0x400

.field public static final MARKER_COLON:C = ':'

.field public static final MARKER_QUOTES:C = '\"'

.field public static final MARKER_SEMI_COLON:C = ';'

.field public static final MAX_FOLLOW_REQUESTS:I = 0x5

.field public static final MB_BYTES:I = 0x100000

.field public static final MINUTE_MILLIS:J = 0xea60L

.field public static final MIN_PASSWORD_CHARS:I = 0x8

.field public static final MIN_USERNAME_CHARS:I = 0x3

.field public static final MONTH_MILLIS:J = 0x9ca41900L

.field private static final PATTERN_COMMENT:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_POST:Ljava/util/regex/Pattern; = null

.field public static final PATTERN_USERNAME:Ljava/util/regex/Pattern; = null

.field public static final RTL_THRESHOLD:D = 0.3

.field public static final SECOND_MILLIS:J = 0x3e8L

.field public static final THIRTY_FIVE_ALPHA_MASK:I = 0x5a000000

.field public static final TIMESTAMP_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

.field public static final TWENTY_ALPHA_MASK:I = 0x33000000

.field public static final TWENTY_FOUR_ALPHA_MASK:I = 0x3d000000

.field public static final WEEK_MILLIS:J = 0x240c8400L

.field public static final YEAR_MILLIS:J = 0x757b12c00L

.field private static final numbersAndLetters:[C

.field private static sDateFormatNoYear:Ljava/text/SimpleDateFormat;

.field private static sDateFormatWithYear:Ljava/text/SimpleDateFormat;

.field public static final sRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    sput-object v0, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/util/Util;->DATE_FORMAT_LOCK:[I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lco/vine/android/util/Util;->COLOR_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    sget-object v0, Lco/vine/android/util/Util;->COLOR_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "co.vine.android.profileColor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "<:\\s*?user\\s*?\\|\\s*?.*?:>([\\w\\s-]*?)<:>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_USERNAME:Ljava/util/regex/Pattern;

    const-string v0, "<:\\s*?post\\s*?\\|\\s*?.*?:>([\\w\\s]*?)<:>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_POST:Ljava/util/regex/Pattern;

    const-string v0, "\"(.+?)\\\\?\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->PATTERN_COMMENT:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lco/vine/android/util/Util;->sRandom:Ljava/security/SecureRandom;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lco/vine/android/util/Util;->numbersAndLetters:[C

    new-instance v0, Lco/vine/android/util/SynchronizedDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lco/vine/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lco/vine/android/util/Util;->DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDirectionalMarkers(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v5, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v5, :cond_35

    aget-char v2, v0, v3

    const/16 v7, 0x23

    if-ne v6, v7, :cond_24

    invoke-static {v2}, Lco/vine/android/util/Util;->isRtlCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string v7, "\u200f"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_24
    if-eqz v4, :cond_31

    const/4 v4, 0x0

    :goto_27
    move v6, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2b
    const-string v7, "\u200e"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_35
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static adjustEntities(Ljava/util/ArrayList;Landroid/text/Editable;IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;",
            "Landroid/text/Editable;",
            "IZ)V"
        }
    .end annotation

    const/16 v10, 0x200f

    const/16 v9, 0x200e

    const/4 v11, 0x1

    const/4 v5, 0x0

    :goto_6
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v5, v8, :cond_5e

    invoke-interface {p1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1a

    if-eq v0, v9, :cond_1a

    if-ne v0, v10, :cond_5b

    :cond_1a
    if-eq v0, v9, :cond_1e

    if-ne v0, v10, :cond_59

    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineEntity;

    iget-boolean v8, v4, Lco/vine/android/api/VineEntity;->adjusted:Z

    if-nez v8, :cond_23

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    add-int/2addr v8, p2

    add-int v7, v8, v1

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    add-int v3, v8, p2

    if-le v7, v5, :cond_23

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_4c

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lco/vine/android/api/VineEntity;->start:I

    :cond_4c
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v3, v8, :cond_23

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    goto :goto_23

    :cond_59
    const/4 v1, 0x0

    goto :goto_1f

    :cond_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5e
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_62
    :goto_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_149

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineEntity;

    iget-boolean v8, v4, Lco/vine/android/api/VineEntity;->adjusted:Z

    if-nez v8, :cond_62

    iget-object v8, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    if-nez v8, :cond_79

    iput-boolean v11, v4, Lco/vine/android/api/VineEntity;->adjusted:Z

    goto :goto_62

    :cond_79
    invoke-virtual {v4}, Lco/vine/android/api/VineEntity;->isUserType()Z

    move-result v8

    if-eqz v8, :cond_c7

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v8

    if-eqz v8, :cond_b3

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->end:I

    iget-object v10, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_98
    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->start:I

    sub-int/2addr v8, v9

    iget-object v9, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr p2, v8

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget-object v9, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    :cond_b0
    :goto_b0
    iput-boolean v11, v4, Lco/vine/android/api/VineEntity;->adjusted:Z

    goto :goto_62

    :cond_b3
    :try_start_b3
    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->end:I

    iget-object v10, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_bc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b3 .. :try_end_bc} :catch_bd

    goto :goto_98

    :catch_bd
    move-exception v2

    const-string v8, "Supressing IOOBE with replace"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_98

    :cond_c7
    invoke-virtual {v4}, Lco/vine/android/api/VineEntity;->isTagType()Z

    move-result v8

    if-eqz v8, :cond_110

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->end:I

    iget-object v10, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->start:I

    sub-int/2addr v8, v9

    sub-int/2addr p2, v8

    iget-object v8, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr p2, v8

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget-object v9, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    goto :goto_b0

    :cond_110
    invoke-virtual {v4}, Lco/vine/android/api/VineEntity;->isUserListType()Z

    move-result v8

    if-nez v8, :cond_11c

    invoke-virtual {v4}, Lco/vine/android/api/VineEntity;->isCommentListType()Z

    move-result v8

    if-eqz v8, :cond_b0

    :cond_11c
    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    add-int/2addr v8, p2

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->end:I

    iget-object v10, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget v8, v4, Lco/vine/android/api/VineEntity;->end:I

    iget v9, v4, Lco/vine/android/api/VineEntity;->start:I

    sub-int/2addr v8, v9

    sub-int/2addr p2, v8

    iget-object v8, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr p2, v8

    iget v8, v4, Lco/vine/android/api/VineEntity;->start:I

    iget-object v9, v4, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Lco/vine/android/api/VineEntity;->end:I

    goto/16 :goto_b0

    :cond_149
    return-void
.end method

.method public static changeProfileColor(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.vine.android.profileColor"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "co.vine.android.BROADCAST"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static cleanse(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static deleteFileRecursively(Ljava/io/File;)V
    .registers 7

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1e

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v4, :cond_1e

    aget-object v1, v0, v3

    invoke-static {v1}, Lco/vine/android/util/Util;->deleteFileRecursively(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1b
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1e
    return-void
.end method

.method public static forceCustomLocale(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lco/vine/android/util/Util;->getCustomLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lco/vine/android/util/Util;->forceCustomLocale(Landroid/content/Context;Ljava/util/Locale;Z)V

    return-void
.end method

.method public static forceCustomLocale(Landroid/content/Context;Ljava/util/Locale;Z)V
    .registers 6

    if-eqz p1, :cond_23

    invoke-static {p1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/VineAPI;->refreshLocale()V

    if-eqz p2, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_23
    return-void
.end method

.method public static formatFileSize(Landroid/content/res/Resources;J)Ljava/lang/String;
    .registers 14

    const-wide/32 v9, 0xf4240

    const-wide/16 v7, 0x3e8

    const-wide/16 v4, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    sget-object v1, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    const v2, 0x7f0e015f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const/4 v0, 0x3

    const v1, 0x7f0e015a

    :try_start_1d
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_24} :catch_9c

    move-result v0

    :goto_25
    sget-object v1, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    sget-object v1, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    sget-object v1, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    sget-object v2, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    const-wide/32 v1, 0x3b9aca00

    div-long v1, p1, v1

    cmp-long v1, v1, v4

    if-ltz v1, :cond_56

    const v1, 0x7f0e0159

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    const-wide/32 v4, 0x3b9aca00

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_55
    return-object v1

    :cond_56
    div-long v1, p1, v9

    cmp-long v1, v1, v4

    if-ltz v1, :cond_70

    const v1, 0x7f0e015c

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    div-long v4, p1, v9

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_70
    div-long v1, p1, v7

    cmp-long v1, v1, v4

    if-ltz v1, :cond_8a

    const v1, 0x7f0e015b

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    div-long v4, p1, v7

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_8a
    const v1, 0x7f0e0157

    new-array v2, v3, [Ljava/lang/Object;

    sget-object v3, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v3, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :catch_9c
    move-exception v1

    goto :goto_25
.end method

.method public static fromByteArray([B)Ljava/lang/Object;
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v4

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    :try_start_a
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_22

    :try_start_f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_32
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_12} :catch_35

    move-result-object v4

    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_1a
    move-exception v1

    :goto_1b
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_22
    move-exception v1

    :goto_23
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2a
    move-exception v4

    :goto_2b
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :catchall_32
    move-exception v4

    move-object v2, v3

    goto :goto_2b

    :catch_35
    move-exception v1

    move-object v2, v3

    goto :goto_23

    :catch_38
    move-exception v1

    move-object v2, v3

    goto :goto_1b
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .registers 4

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12
.end method

.method public static getAddressBookJson(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v18, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct/range {v18 .. v18}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v19

    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "starred"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "times_contacted"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "display_name_alt"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "data2"

    aput-object v3, v4, v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_cb

    :cond_48
    :goto_48
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_bd

    const/16 v23, 0x1

    :goto_57
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_6c
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_77
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getPhoneLabelFromType(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_48

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_93

    move-object/from16 v21, v22

    :cond_93
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/Util$AddressBookContact;

    move-object v9, v2

    :goto_a4
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lco/vine/android/util/Util$AddressBookContact;->addPhone(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v23, :cond_b0

    invoke-virtual {v9}, Lco/vine/android/util/Util$AddressBookContact;->setStarred()V

    :cond_b0
    if-lez v24, :cond_b7

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lco/vine/android/util/Util$AddressBookContact;->setTimesContacted(I)V

    :cond_b7
    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    :cond_bd
    const/16 v23, 0x0

    goto :goto_57

    :cond_c0
    new-instance v9, Lco/vine/android/util/Util$AddressBookContact;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lco/vine/android/util/Util$AddressBookContact;-><init>(Ljava/lang/String;)V

    goto :goto_a4

    :cond_c8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_cb
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "starred"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "times_contacted"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "data4"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "display_name_alt"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "data2"

    aput-object v3, v4, v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_17f

    :cond_fe
    :goto_fe
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_17c

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_171

    const/16 v23, 0x1

    :goto_10d
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_122

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_122
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12d

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_12d
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lco/vine/android/util/Util;->getEmailLabelFromType(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fe

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_149

    move-object/from16 v21, v12

    :cond_149
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/Util$AddressBookContact;

    move-object v9, v2

    :goto_15a
    if-eqz v23, :cond_15f

    invoke-virtual {v9}, Lco/vine/android/util/Util$AddressBookContact;->setStarred()V

    :cond_15f
    if-lez v24, :cond_166

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lco/vine/android/util/Util$AddressBookContact;->setTimesContacted(I)V

    :cond_166
    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v12}, Lco/vine/android/util/Util$AddressBookContact;->addEmail(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fe

    :cond_171
    const/16 v23, 0x0

    goto :goto_10d

    :cond_174
    new-instance v9, Lco/vine/android/util/Util$AddressBookContact;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lco/vine/android/util/Util$AddressBookContact;-><init>(Ljava/lang/String;)V

    goto :goto_15a

    :cond_17c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_17f
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25c

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_190
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_256

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/util/Util$AddressBookContact;

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v2, "name"

    iget-object v3, v9, Lco/vine/android/util/Util$AddressBookContact;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v9, Lco/vine/android/util/Util$AddressBookContact;->starred:Z

    if-eqz v2, :cond_1b4

    const-string v2, "starred"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBooleanField(Ljava/lang/String;Z)V

    :cond_1b4
    iget v2, v9, Lco/vine/android/util/Util$AddressBookContact;->timesContacted:I

    if-lez v2, :cond_1c1

    const-string v2, "timesContacted"

    iget v3, v9, Lco/vine/android/util/Util$AddressBookContact;->timesContacted:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;I)V

    :cond_1c1
    iget-object v2, v9, Lco/vine/android/util/Util$AddressBookContact;->emails:Ljava/util/HashSet;

    if-eqz v2, :cond_209

    const-string v2, "emailAddresses"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    iget-object v2, v9, Lco/vine/android/util/Util$AddressBookContact;->emails:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1d5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_206

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1e8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_202

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v13}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e8

    :cond_202
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_1d5

    :cond_206
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_209
    iget-object v2, v9, Lco/vine/android/util/Util$AddressBookContact;->phones:Ljava/util/HashSet;

    if-eqz v2, :cond_251

    const-string v2, "phoneNumbers"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    iget-object v2, v9, Lco/vine/android/util/Util$AddressBookContact;->phones:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_21d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_230
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v13}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_230

    :cond_24a
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_21d

    :cond_24e
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    :cond_251
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto/16 :goto_190

    :cond_256
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    :cond_25c
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_6
.end method

.method public static getCacheSize(Landroid/content/Context;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/VineLoggingException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    :try_start_2
    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_d
    if-eqz v0, :cond_13

    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    :cond_13
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v5}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    :cond_28
    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_39

    move-result v5

    if-eqz v5, :cond_2f

    :cond_2e
    :goto_2e
    return-wide v3

    :cond_2f
    const-wide/32 v5, 0x7a120

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2e

    const-wide/16 v3, 0x0

    goto :goto_2e

    :catch_39
    move-exception v1

    new-instance v5, Lco/vine/android/VineLoggingException;

    invoke-direct {v5, v1}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getColorWithBlackPercentage(IF)I
    .registers 11

    const/high16 v7, 0x3f80

    sub-float v4, v7, p1

    shr-int/lit8 v7, p0, 0x10

    and-int/lit16 v5, v7, 0xff

    shr-int/lit8 v7, p0, 0x8

    and-int/lit16 v2, v7, 0xff

    and-int/lit16 v0, p0, 0xff

    int-to-float v7, v5

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v0

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v7, v6, 0x10

    const/high16 v8, 0xff

    and-int v5, v7, v8

    shl-int/lit8 v7, v3, 0x8

    const v8, 0xff00

    and-int v2, v7, v8

    and-int/lit16 v0, v1, 0xff

    const/high16 v7, -0x100

    or-int/2addr v7, v5

    or-int/2addr v7, v2

    or-int/2addr v7, v0

    return v7
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 8

    const/4 v4, 0x0

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "pref_custom_locale_enabled"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "pref_custom_locale"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "pref_custom_locale_country"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    :goto_35
    return-object v1

    :cond_36
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    :cond_3c
    move-object v1, v4

    goto :goto_35
.end method

.method public static getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getEmailLabelFromType(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const-string v0, "other"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "home"

    goto :goto_5

    :pswitch_9
    const-string v0, "work"

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public static getEmailMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lco/vine/android/util/BuildUtil;->getMarket()I

    const v0, 0x7f0e00e5

    invoke-static {p0, v0}, Lco/vine/android/util/Util;->getShareMyProfileMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    :goto_4
    return-object v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_a
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;)F
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_15

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4480

    div-float/2addr v2, v3

    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_14
    return v2

    :catch_15
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_14

    :catchall_1b
    move-exception v2

    invoke-static {v1}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_6
.end method

.method public static getLocale()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    :cond_24
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    :cond_44
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_48
    return-object v1

    :cond_49
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    goto :goto_48
.end method

.method public static getNextCursorSize(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x14

    return v0
.end method

.method private static getPhoneLabelFromType(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_16

    :pswitch_3
    const-string v0, "other"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "home"

    goto :goto_5

    :pswitch_9
    const-string v0, "work"

    goto :goto_5

    :pswitch_c
    const-string v0, "mobile"

    goto :goto_5

    :pswitch_f
    const-string v0, "main"

    goto :goto_5

    :pswitch_12
    const-string v0, "fax"

    goto :goto_5

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_12
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static getProfileColor(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profile_background"

    sget v2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRecentActivityData(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_saved_state_data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 30

    sget-object v22, Lco/vine/android/util/Util;->DATE_FORMAT_LOCK:[I

    monitor-enter v22

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget-object v21, Lco/vine/android/util/Util;->sDateFormatWithYear:Ljava/text/SimpleDateFormat;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e1

    if-nez v21, :cond_3f

    const/16 v17, 0x0

    :try_start_d
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_236

    move-result-object v17

    :goto_11
    if-nez v17, :cond_7e

    :try_start_13
    new-instance v21, Ljava/text/SimpleDateFormat;

    const v23, 0x7f0e00aa

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v21, Lco/vine/android/util/Util;->sDateFormatNoYear:Ljava/text/SimpleDateFormat;

    new-instance v21, Ljava/text/SimpleDateFormat;

    const v23, 0x7f0e00a9

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v21, Lco/vine/android/util/Util;->sDateFormatWithYear:Ljava/text/SimpleDateFormat;

    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-long v8, v23, p1

    const-wide/16 v23, 0x0

    cmp-long v21, v8, v23

    if-ltz v21, :cond_220

    const-wide/32 v23, 0xea60

    cmp-long v21, v8, v23

    if-gez v21, :cond_141

    const-wide/16 v23, 0x3e8

    div-long v23, v8, v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v19, v0

    if-eqz p3, :cond_13c

    const v21, 0x7f0d0013

    :goto_60
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    :goto_7d
    return-object v21

    :cond_7e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v4, v17

    array-length v13, v4

    const/4 v12, 0x0

    :goto_8d
    if-ge v12, v13, :cond_3f

    aget-char v5, v4, v12

    sparse-switch v5, :sswitch_data_23a

    :cond_94
    :goto_94
    add-int/lit8 v11, v11, 0x1

    new-instance v21, Ljava/text/SimpleDateFormat;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v21, Lco/vine/android/util/Util;->sDateFormatNoYear:Ljava/text/SimpleDateFormat;

    new-instance v21, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v21, Lco/vine/android/util/Util;->sDateFormatWithYear:Ljava/text/SimpleDateFormat;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8d

    :sswitch_b7
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v11, v0, :cond_94

    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_94

    :catchall_e1
    move-exception v21

    monitor-exit v22
    :try_end_e3
    .catchall {:try_start_13 .. :try_end_e3} :catchall_e1

    throw v21

    :sswitch_e4
    :try_start_e4
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v11, v0, :cond_94

    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_94

    :sswitch_11b
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v11, v0, :cond_94

    const/16 v21, 0x20

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_94

    :cond_13c
    const v21, 0x7f0d0011

    goto/16 :goto_60

    :cond_141
    const-wide/32 v23, 0x36ee80

    cmp-long v21, v8, v23

    if-gez v21, :cond_176

    const-wide/32 v23, 0xea60

    div-long v23, v8, v23

    move-wide/from16 v0, v23

    long-to-int v14, v0

    if-eqz p3, :cond_172

    const v21, 0x7f0d000f

    :goto_155
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    goto/16 :goto_7d

    :cond_172
    const v21, 0x7f0d000d

    goto :goto_155

    :cond_176
    const-wide/32 v23, 0x5265c00

    cmp-long v21, v8, v23

    if-gez v21, :cond_1ab

    const-wide/32 v23, 0x36ee80

    div-long v23, v8, v23

    move-wide/from16 v0, v23

    long-to-int v10, v0

    if-eqz p3, :cond_1a7

    const v21, 0x7f0d000c

    :goto_18a
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v10, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    goto/16 :goto_7d

    :cond_1a7
    const v21, 0x7f0d000a

    goto :goto_18a

    :cond_1ab
    const-wide/32 v23, 0x240c8400

    cmp-long v21, v8, v23

    if-gez v21, :cond_1e0

    const-wide/32 v23, 0x5265c00

    div-long v23, v8, v23

    move-wide/from16 v0, v23

    long-to-int v7, v0

    if-eqz p3, :cond_1dc

    const v21, 0x7f0d0009

    :goto_1bf
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    goto/16 :goto_7d

    :cond_1dc
    const v21, 0x7f0d0007

    goto :goto_1bf

    :cond_1e0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_215

    sget-object v21, Lco/vine/android/util/Util;->sDateFormatNoYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    goto/16 :goto_7d

    :cond_215
    sget-object v21, Lco/vine/android/util/Util;->sDateFormatWithYear:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22

    goto/16 :goto_7d

    :cond_220
    sget-object v21, Lco/vine/android/util/Util;->sDateFormatWithYear:Ljava/text/SimpleDateFormat;

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    monitor-exit v22
    :try_end_234
    .catchall {:try_start_e4 .. :try_end_234} :catchall_e1

    goto/16 :goto_7d

    :catch_236
    move-exception v21

    goto/16 :goto_11

    nop

    :sswitch_data_23a
    .sparse-switch
        0x4d -> :sswitch_e4
        0x64 -> :sswitch_b7
        0x79 -> :sswitch_11b
    .end sparse-switch
.end method

.method private static getShareMyProfileMessage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vine://user"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lco/vine/android/util/BuildUtil;->getWebsiteUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getShareProfileMessage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lco/vine/android/util/BuildUtil;->getMarket()I

    const v0, 0x7f0e020d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vine://user"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lco/vine/android/util/BuildUtil;->getWebsiteUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedPrefs(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSmsMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lco/vine/android/util/BuildUtil;->getMarket()I

    const v0, 0x7f0e00e7

    invoke-static {p0, v0}, Lco/vine/android/util/Util;->getShareMyProfileMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpannedText([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
    .registers 15

    const/4 v11, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v11, :cond_d

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_c
    return-object v5

    :cond_d
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, p2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v11, :cond_1b

    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_1b
    array-length v1, p0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    :cond_24
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v7, p0, v4

    sub-int v8, v6, v3

    sub-int v9, v0, v3

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0x21

    invoke-static {v5, v7, v8, v9, v10}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v0, 0x1

    if-lt v4, v1, :cond_4f

    :cond_47
    :goto_47
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_c

    :cond_4f
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v11, :cond_5d

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, p2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x2

    :cond_5d
    if-eq v6, v11, :cond_47

    if-ne v0, v11, :cond_24

    goto :goto_47
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lco/vine/android/util/Util;->getTempFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFile(Landroid/content/Context;I)Ljava/io/File;
    .registers 5

    invoke-static {p0}, Lco/vine/android/util/Util;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lco/vine/android/util/Util;->randomString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static getUriFromResouce(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v1, Lco/vine/android/util/Util;->PATTERN_USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_15
    return-object v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v2
.end method

.method public static isCapableOfInline(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D

    move-result-wide v1

    const-wide v3, 0x3ff3333333333333L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isCapableOfRecording(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v0

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->recordingEnabled:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isDefaultAvatarUrl(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "default.png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isEmojiOrSymbol(C)Z
    .registers 3

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->DINGBATS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_ARROWS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BRAILLE_PATTERNS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_ARROWS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->SUPPLEMENTAL_MATHEMATICAL_OPERATORS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->MISCELLANEOUS_SYMBOLS_AND_ARROWS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_28

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->PRIVATE_USE_AREA:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_2a

    :cond_28
    const/4 v1, 0x1

    :goto_29
    return v1

    :cond_2a
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public static isHighRes(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public static isPopularTimeline(I)Z
    .registers 2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/16 v0, 0xb

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isRtlCharacter(C)Z
    .registers 3

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_14

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_14

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_14

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_16

    :cond_14
    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public static isRtlLanguage(Ljava/lang/String;)Z
    .registers 12

    const/4 v6, 0x0

    const/high16 v9, 0x3f80

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_a

    :cond_9
    :goto_9
    return v6

    :cond_a
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v3, :cond_30

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v7

    sget-object v8, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v7, v8, :cond_21

    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_21
    invoke-static {v1}, Lco/vine/android/util/Util;->isRtlCharacter(C)Z

    move-result v7

    if-eqz v7, :cond_28

    add-float/2addr v4, v9

    :cond_28
    invoke-static {v1}, Lco/vine/android/util/Util;->isEmojiOrSymbol(C)Z

    move-result v7

    if-nez v7, :cond_1e

    add-float/2addr v5, v9

    goto :goto_1e

    :cond_30
    div-float v7, v4, v5

    float-to-double v7, v7

    const-wide v9, 0x3fd3333333333333L

    cmpl-double v7, v7, v9

    if-lez v7, :cond_9

    const/4 v6, 0x1

    goto :goto_9
.end method

.method public static isUrlLocal(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v2

    :cond_4
    :try_start_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_13

    move-result v2

    goto :goto_3

    :catch_13
    move-exception v0

    goto :goto_3
.end method

.method public static isUsEnglishLocale()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isXauth2FactorError(Ltwitter4j/TwitterException;)Z
    .registers 3

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "231"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "User must verify login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public static md5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v7

    array-length v5, v0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v5, :cond_3a

    aget-byte v6, v0, v3

    and-int/lit16 v9, v6, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_33

    const/16 v9, 0x30

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :catch_37
    move-exception v4

    const/4 v9, 0x0

    :goto_39
    return-object v9

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3d} :catch_37

    move-result-object v9

    goto :goto_39
.end method

.method public static numberFormat(Landroid/content/res/Resources;J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lco/vine/android/util/Util;->numberFormat(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static numberFormat(Landroid/content/res/Resources;JZ)Ljava/lang/String;
    .registers 17

    const v5, 0x7f0e0160

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7c

    const/4 v4, 0x1

    :goto_f
    const v5, 0x7f0e015d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7e

    const/4 v1, 0x1

    :goto_1f
    const/4 v0, 0x3

    const v5, 0x7f0e015a

    :try_start_23
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2a} :catch_e9

    move-result v0

    :goto_2b
    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v0}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    const v6, 0x7f0e015f

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    const v6, 0x7f0e0158

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    sget-object v6, Lco/vine/android/util/Util;->DECIMAL_FORMAT_SYMBOLS:Ljava/text/DecimalFormatSymbols;

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    if-eqz p3, :cond_75

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_75
    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v5, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    :goto_7b
    return-object v5

    :cond_7c
    const/4 v4, 0x0

    goto :goto_f

    :cond_7e
    const/4 v1, 0x0

    goto :goto_1f

    :cond_80
    long-to-double v5, p1

    const-wide v7, 0x412e848000000000L

    div-double v2, v5, v7

    const-wide/high16 v5, 0x3ff0

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_b1

    if-eqz v1, :cond_93

    const-wide/high16 v5, 0x4059

    div-double/2addr v2, v5

    :cond_93
    const v5, 0x7f0e015e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    const-wide/high16 v9, 0x4024

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7b

    :cond_b1
    long-to-double v5, p1

    const-wide v7, 0x40c3880000000000L

    div-double v2, v5, v7

    const-wide/high16 v5, 0x3ff0

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_e2

    if-eqz v4, :cond_c4

    const-wide/high16 v5, 0x4024

    div-double/2addr v2, v5

    :cond_c4
    const v5, 0x7f0e0161

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    const-wide/high16 v9, 0x4059

    mul-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7b

    :cond_e2
    sget-object v5, Lco/vine/android/util/Util;->DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v5, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_7b

    :catch_e9
    move-exception v5

    goto/16 :goto_2b
.end method

.method public static parseURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_7

    :goto_6
    return-object v3

    :catch_7
    move-exception v3

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_2a

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :try_start_22
    new-instance v3, Ljava/net/URI;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_6

    :catch_29
    move-exception v3

    :cond_2a
    move-object v3, v4

    goto :goto_6
.end method

.method public static printCursorWindowStats()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Landroid/database/CursorWindow;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/database/CursorWindow;-><init>(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_27

    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "printStats"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_3e

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/database/CursorWindow;->close()V

    :cond_26
    :goto_26
    return-object v4

    :catch_27
    move-exception v0

    :goto_28
    :try_start_28
    const-string v4, "print cursor error"

    invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_34

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    :cond_32
    const/4 v4, 0x0

    goto :goto_26

    :catchall_34
    move-exception v4

    :goto_35
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    :cond_3a
    throw v4

    :catchall_3b
    move-exception v4

    move-object v2, v3

    goto :goto_35

    :catch_3e
    move-exception v0

    move-object v2, v3

    goto :goto_28
.end method

.method public static randomString(I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x1

    if-ge p0, v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    return-object v2

    :cond_5
    new-array v1, p0, [C

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    sget-object v2, Lco/vine/android/util/Util;->numbersAndLetters:[C

    sget-object v3, Lco/vine/android/util/Util;->sRandom:Ljava/security/SecureRandom;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_4
.end method

.method public static readFullyWriteTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p2, [B

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_12

    if-eqz p1, :cond_10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_10
    add-int/2addr v2, v1

    goto :goto_3

    :cond_12
    return v2
.end method

.method public static removeCache(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {v0}, Lco/vine/android/util/Util;->deleteFileRecursively(Ljava/io/File;)V

    invoke-static {p0}, Lco/vine/android/util/Util;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lco/vine/android/util/Util;->deleteFileRecursively(Ljava/io/File;)V

    goto :goto_6
.end method

.method public static restartApp(Landroid/content/Context;)V
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
    .registers 7

    const/4 v1, -0x1

    sget-object v2, Lco/vine/android/util/Util$1;->$SwitchMap$co$vine$android$util$Util$ProfileImageSize:[I

    invoke-virtual {p1}, Lco/vine/android/util/Util$ProfileImageSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    :goto_c
    if-nez p2, :cond_10

    sget p2, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    :cond_10
    const/high16 v2, -0x100

    or-int/2addr p2, v2

    :try_start_13
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_1b} :catch_28

    :goto_1b
    return-void

    :pswitch_1c
    const v1, 0x7f020069

    goto :goto_c

    :pswitch_20
    const v1, 0x7f020066

    goto :goto_c

    :pswitch_24
    const v1, 0x7f020065

    goto :goto_c

    :catch_28
    move-exception v0

    const-string v2, "OOM has happened."

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_1b

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public static safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V
    .registers 10

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_9
    return-void

    :cond_a
    if-ltz p2, :cond_1e

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    if-ge p2, v1, :cond_1e

    if-lt p3, p2, :cond_1e

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    if-ge p3, v1, :cond_1e

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_1e
    :try_start_1e
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_21
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_9

    :catch_22
    move-exception v0

    const-string v1, "We got an IOOB while setting a span. {} {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public static setSoftKeyboardVisibility(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 6

    const/4 v2, 0x0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_10

    if-eqz p2, :cond_11

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_10
.end method

.method public static setTextWithSpan(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-static {v0, p0, v1, v2, v3}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v0
.end method

.method public static showCenteredToast(Landroid/content/Context;I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showNoCameraToast(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f0e014e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showShortCenteredToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showTopToast(Landroid/content/Context;I)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static startActionOnRecordingAvailable(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/Util;->isCapableOfRecording(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0}, Lco/vine/android/util/Util;->showNoCameraToast(Landroid/content/Context;)V

    goto :goto_9
.end method

.method public static stripUsernameEntities(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lco/vine/android/util/Util;->PATTERN_USERNAME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static styleSectionHeader(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 5

    invoke-static {p0}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v1

    iget-object v0, v1, Lco/vine/android/widget/Typefaces;->mediumContent:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static toByteArray(Ljava/lang/Object;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x200

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    :try_start_8
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_25
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1c

    :try_start_d
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_2d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_30

    move-result-object v4

    invoke-static {v3}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    :goto_1b
    return-object v4

    :catch_1c
    move-exception v1

    :goto_1d
    const/4 v4, 0x0

    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1b

    :catchall_25
    move-exception v4

    :goto_26
    invoke-static {v2}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    :catchall_2d
    move-exception v4

    move-object v2, v3

    goto :goto_26

    :catch_30
    move-exception v1

    move-object v2, v3

    goto :goto_1d
.end method

.method public static validateAndFixEntities(Ljava/util/ArrayList;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineEntity;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method
