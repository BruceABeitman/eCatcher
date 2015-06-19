.class public final Lcom/spotify/mobile/android/ui/actions/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unaccepted_licenses"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/ui/actions/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/spotify/mobile/android/model/TermsAndConditionsFactory;->a(Lcom/spotify/mobile/android/model/TermsAndConditionsFactory$Decision;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/model/TermsAndConditionsModel;

    move-result-object v0

    const-string v1, "com.spotify.mobile.android.service.action.log.ACCEPT_USER_TERMS"

    invoke-static {p0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accept_user_terms"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    sget-object v2, Lcom/spotify/mobile/android/ui/actions/b;->a:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/b;->a(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)[Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    new-array v0, v2, [Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-array v0, v2, [Ljava/lang/String;

    goto :goto_b

    :cond_19
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method
