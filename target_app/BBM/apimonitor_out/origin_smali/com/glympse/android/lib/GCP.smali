.class public Lcom/glympse/android/lib/GCP;
.super Lcom/glympse/android/api/GC;
.source "GCP.java"


# static fields
.field public static final ACCOUNT_HISTORY:I = 0x2

.field public static final ACCOUNT_PROFILE:I = 0x1

.field public static final ARG_CLEAR:I = 0x0

.field public static final ARG_IGNORE:I = -0x1

.field public static final ARG_SET:I = 0x1

.field public static final AUTH_FAILED_TO_LOG_IN:I = 0x4

.field public static final AUTH_LOGGED_IN:I = 0x3

.field public static final AUTH_LOGGING_IN:I = 0x2

.field public static final AUTH_NOT_LOGGED_IN:I = 0x1

.field public static final BUILD_STATUS_ALPHA:I = 0x2

.field public static final BUILD_STATUS_BETA:I = 0x3

.field public static final BUILD_STATUS_DEV:I = 0x1

.field public static final BUILD_STATUS_NONE:I = 0x0

.field public static final BUILD_STATUS_RC:I = 0x4

.field public static final BUILD_STATUS_RELEASE:I = 0x0

.field public static final CACHE_ALL:I = 0x3

.field public static final CACHE_DISK:I = 0x2

.field public static final CACHE_MEMORY:I = 0x1

.field public static final CACHE_NONE:I = 0x0

.field public static final CONTACTS_SEARCH_EMAIL:I = 0x2

.field public static final CONTACTS_SEARCH_FACEBOOK:I = 0x8

.field public static final CONTACTS_SEARCH_INVITE:I = 0xb

.field public static final CONTACTS_SEARCH_PHONE:I = 0x1

.field public static final CONTACTS_SEARCH_PLACE:I = 0x4

.field public static final CONTACTS_SEARCH_POSTAL:I = 0x4

.field public static final CONTACT_EMAIL:I = 0x2

.field public static final CONTACT_FACEBOOK:I = 0x8

.field public static final CONTACT_PHONE:I = 0x1

.field public static final CONTACT_POSTAL:I = 0x4

.field public static final CONTACT_UNKNOWN:I = 0x0

.field public static final CONTEXT_INTERNAL:J = 0x1000000000000L

.field public static final CONTEXT_SINK_INVITE_CODE:J = 0x1000000000001L

.field public static final CONTEXT_TICKET_CALLBACK_ACTION:J = 0x1000000000005L

.field public static final CONTEXT_TICKET_CALLBACK_PACKAGE:J = 0x1000000000004L

.field public static final CONTEXT_TICKET_CONTEXT:J = 0x1000000000007L

.field public static final CONTEXT_TICKET_FLAGS:J = 0x1000000000003L

.field public static final CONTEXT_TICKET_LAUNCH_MODE:J = 0x1000000000006L

.field public static final CONTEXT_TICKET_RETURN_CANCEL_URL:J = 0x1000000000002L

.field public static final CONTEXT_TICKET_RETURN_URL:J = 0x1000000000001L

.field public static final ENCODING_DEFAULT:I = 0x0

.field public static final ENCODING_KEEP_TICKETS:I = 0x1

.field public static final ENCODING_KEEP_TRACK:I = 0x2

.field public static final EXPIRE_ON_ARRIVAL_GLOBAL:I = 0x3

.field public static final LINKED_ACCOUNTS:I = 0x4

.field public static final METHOD_ARGUMENT_TYPE_BOOL:I = 0x6

.field public static final METHOD_ARGUMENT_TYPE_DOUBLE:I = 0x5

.field public static final METHOD_ARGUMENT_TYPE_FLOAT:I = 0x4

.field public static final METHOD_ARGUMENT_TYPE_INT:I = 0x2

.field public static final METHOD_ARGUMENT_TYPE_LONG:I = 0x3

.field public static final METHOD_ARGUMENT_TYPE_STRING:I = 0x1

.field public static final PERSON_SORT_BY_FIRST_NAME:I = 0x1

.field public static final PERSON_SORT_BY_FULL_NAME:I = 0x2

.field public static final PERSON_SORT_BY_LAST_NAME:I = 0x0

.field public static final SERVER_MODE_CUSTOM:I = 0x4

.field public static final SERVER_MODE_DEVELOPMENT:I = 0x3

.field public static final SERVER_MODE_PRODUCTION:I = 0x1

.field public static final SERVER_MODE_SANDBOX:I = 0x2

.field public static final SOCIAL_AUTHENTICATED:I = 0x1

.field public static final SOCIAL_NOT_AUTHENTICATED:I = 0x2

.field public static final SOCIAL_UNKNOWN_INVITE:I = 0x0

.field public static final TICKET_STATE_PRE_VALID:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/api/GC;-><init>()V

    return-void
.end method

.method public static SOURCE_API()Ljava/lang/String;
    .registers 1

    const-string v0, "api"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_CALENDAR()Ljava/lang/String;
    .registers 1

    const-string v0, "cal"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_CONTACT_ADDRESS()Ljava/lang/String;
    .registers 1

    const-string v0, "cta"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_CONTACT_EMAIL()Ljava/lang/String;
    .registers 1

    const-string v0, "cte"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_CONTACT_SMS()Ljava/lang/String;
    .registers 1

    const-string v0, "cts"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_FAVORITE()Ljava/lang/String;
    .registers 1

    const-string v0, "fav"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_FAVORITE_VR()Ljava/lang/String;
    .registers 1

    const-string v0, "fav_vr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_HISTORY()Ljava/lang/String;
    .registers 1

    const-string v0, "hst"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_HISTORY_VR()Ljava/lang/String;
    .registers 1

    const-string v0, "hst_vr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_INTENT()Ljava/lang/String;
    .registers 1

    const-string v0, "int"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_MAP()Ljava/lang/String;
    .registers 1

    const-string v0, "map"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_NEW()Ljava/lang/String;
    .registers 1

    const-string v0, "new"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_NEW_VR()Ljava/lang/String;
    .registers 1

    const-string v0, "new_vr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_NFC()Ljava/lang/String;
    .registers 1

    const-string v0, "nfc"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_REPLY()Ljava/lang/String;
    .registers 1

    const-string v0, "re"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_REQUEST()Ljava/lang/String;
    .registers 1

    const-string v0, "req"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_SHORTCUT()Ljava/lang/String;
    .registers 1

    const-string v0, "shortcut"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_URL()Ljava/lang/String;
    .registers 1

    const-string v0, "url"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SOURCE_WRU_SMS()Ljava/lang/String;
    .registers 1

    const-string v0, "wru_sms"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
