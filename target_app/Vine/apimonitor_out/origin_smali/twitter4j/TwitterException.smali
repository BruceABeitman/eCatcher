.class public Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/internal/http/HttpResponseCode;


# static fields
.field private static final FILTER:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private errorCode:I

.field private errorMessage:Ljava/lang/String;

.field private exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

.field nested:Z

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "twitter4j"

    aput-object v2, v0, v1

    sput-object v0, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p1, Ltwitter4j/TwitterException;

    if-eqz v0, :cond_10

    check-cast p1, Ltwitter4j/TwitterException;

    invoke-virtual {p1}, Ltwitter4j/TwitterException;->setNested()V

    :cond_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    iput v0, p0, Ltwitter4j/TwitterException;->errorCode:I

    iput-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    iput-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;->decode(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V
    .registers 4

    invoke-direct {p0, p1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return-void
.end method

.method private decode(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_32

    const-string v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    :try_start_a
    new-instance v1, Ltwitter4j/internal/org/json/JSONObject;

    invoke-direct {v1, p1}, Ltwitter4j/internal/org/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    const-string v2, "code"

    invoke-static {v2, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getInt(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterException;->errorCode:I
    :try_end_32
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_a .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v2

    goto :goto_32
.end method

.method private static getCause(I)Ljava/lang/String;
    .registers 4

    sparse-switch p0, :sswitch_data_44

    const-string v0, ""

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1d
    const-string v0, "There was no new data to return."

    goto :goto_5

    :sswitch_20
    const-string v0, "The request was invalid. An accompanying error message will explain why. This is the status code will be returned during version 1.0 rate limiting(https://dev.twitter.com/pages/rate-limiting). In API v1.1, a request without authentication is considered invalid and you will get this response."

    goto :goto_5

    :sswitch_23
    const-string v0, "Authentication credentials (https://dev.twitter.com/pages/auth) were missing or incorrect. Ensure that you have set valid consumer key/secret, access token/secret, and the system clock is in sync."

    goto :goto_5

    :sswitch_26
    const-string v0, "The request is understood, but it has been refused. An accompanying error message will explain why. This code is used when requests are being denied due to update limits (https://support.twitter.com/articles/15364-about-twitter-limits-update-api-dm-and-following)."

    goto :goto_5

    :sswitch_29
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exists. Also returned when the requested format is not supported by the requested method."

    goto :goto_5

    :sswitch_2c
    const-string v0, "Returned by the Search API when an invalid format is specified in the request.\nReturned by the Streaming API when one or more of the parameters are not suitable for the resource. The track parameter, for example, would throw this error if:\n The track keyword is too long or too short.\n The bounding box specified is invalid.\n No predicates defined for filtered resource, for example, neither track nor follow parameter defined.\n Follow userid cannot be read."

    goto :goto_5

    :sswitch_2f
    const-string v0, "Returned by the Search and Trends API when you are being rate limited (https://dev.twitter.com/docs/rate-limiting).\nReturned by the Streaming API:\n Too many login attempts in a short period of time.\n Running too many copies of the same application authenticating with the same account name."

    goto :goto_5

    :sswitch_32
    const-string v0, "Returned when an image uploaded to POST account/update_profile_banner(https://dev.twitter.com/docs/api/1/post/account/update_profile_banner) is unable to be processed."

    goto :goto_5

    :sswitch_35
    const-string v0, "Returned in API v1.1 when a request cannot be served due to the application\'s rate limit having been exhausted for the resource. See Rate Limiting in API v1.1.(https://dev.twitter.com/docs/rate-limiting/1.1)"

    goto :goto_5

    :sswitch_38
    const-string v0, "Something is broken. Please post to the group (https://dev.twitter.com/docs/support) so the Twitter team can investigate."

    goto :goto_5

    :sswitch_3b
    const-string v0, "Twitter is down or being upgraded."

    goto :goto_5

    :sswitch_3e
    const-string v0, "The Twitter servers are up, but overloaded with requests. Try again later."

    goto :goto_5

    :sswitch_41
    const-string v0, "The Twitter servers are up, but the request couldn\'t be serviced due to some failure within our stack. Try again later."

    goto :goto_5

    :sswitch_data_44
    .sparse-switch
        0x130 -> :sswitch_1d
        0x190 -> :sswitch_20
        0x191 -> :sswitch_23
        0x193 -> :sswitch_26
        0x194 -> :sswitch_29
        0x196 -> :sswitch_2c
        0x1a4 -> :sswitch_2f
        0x1a6 -> :sswitch_32
        0x1ad -> :sswitch_35
        0x1f4 -> :sswitch_38
        0x1f6 -> :sswitch_3b
        0x1f7 -> :sswitch_3e
        0x1f8 -> :sswitch_41
    .end sparse-switch
.end method

.method private getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;
    .registers 3

    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v0, :cond_d

    new-instance v0, Ltwitter4j/ExceptionDiagnosis;

    sget-object v1, Ltwitter4j/TwitterException;->FILTER:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ltwitter4j/ExceptionDiagnosis;-><init>(Ljava/lang/Throwable;[Ljava/lang/String;)V

    iput-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    :cond_d
    iget-object v0, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Ltwitter4j/TwitterException;

    iget v3, p0, Ltwitter4j/TwitterException;->errorCode:I

    iget v4, v0, Ltwitter4j/TwitterException;->errorCode:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    :cond_1e
    iget-boolean v3, p0, Ltwitter4j/TwitterException;->nested:Z

    iget-boolean v4, v0, Ltwitter4j/TwitterException;->nested:Z

    if-eq v3, v4, :cond_26

    move v1, v2

    goto :goto_4

    :cond_26
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    iget v4, v0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_4

    :cond_2e
    iget-object v3, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v3, :cond_3e

    iget-object v3, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_3c
    move v1, v2

    goto :goto_4

    :cond_3e
    iget-object v3, v0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_3c

    :cond_42
    iget-object v3, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v3, :cond_52

    iget-object v3, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    iget-object v4, v0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v3, v4}, Ltwitter4j/ExceptionDiagnosis;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    :cond_50
    move v1, v2

    goto :goto_4

    :cond_52
    iget-object v3, v0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-nez v3, :cond_50

    :cond_56
    iget-object v3, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_66

    iget-object v3, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v4, v0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_64
    move v1, v2

    goto :goto_4

    :cond_66
    iget-object v3, v0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_4

    goto :goto_64
.end method

.method public getAccessLevel()I
    .registers 2

    iget-object v0, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-static {v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->toAccessLevel(Ltwitter4j/internal/http/HttpResponse;)I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Ltwitter4j/TwitterException;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionCode()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/ExceptionDiagnosis;->asHexString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_56

    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    if-eq v1, v3, :cond_56

    const-string v1, "message - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltwitter4j/TwitterException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v1, v3, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-static {v2}, Ltwitter4j/TwitterException;->getCause(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_55
    return-object v1

    :cond_56
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1e

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_1e
    return-object v1
.end method

.method public getRetryAfter()I
    .registers 5

    const/4 v0, -0x1

    iget v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v3, 0x1a4

    if-ne v2, v3, :cond_7

    :try_start_e
    iget-object v2, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    const-string v3, "Retry-After"

    invoke-virtual {v2, v3}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1f} :catch_21

    move-result v0

    goto :goto_7

    :catch_21
    move-exception v2

    goto :goto_7
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Ltwitter4j/TwitterException;->errorCode:I

    add-int v0, v1, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Ltwitter4j/TwitterException;->exceptionDiagnosis:Ltwitter4j/ExceptionDiagnosis;

    invoke-virtual {v1}, Ltwitter4j/ExceptionDiagnosis;->hashCode()I

    move-result v1

    :goto_15
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ltwitter4j/TwitterException;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int v0, v3, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_31
    add-int v0, v3, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v3, :cond_3a

    const/4 v2, 0x1

    :cond_3a
    add-int v0, v1, v2

    return v0

    :cond_3d
    move v1, v2

    goto :goto_15

    :cond_3f
    move v1, v2

    goto :goto_23

    :cond_41
    move v1, v2

    goto :goto_31
.end method

.method public isCausedByNetworkIssue()Z
    .registers 2

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method

.method public isErrorMessageAvailable()Z
    .registers 2

    iget-object v0, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public resourceNotFound()Z
    .registers 3

    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method setNested()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_72

    const-string v0, ""

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nTwitterException{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ltwitter4j/TwitterException;->nested:Z

    if-eqz v0, :cond_a1

    const-string v0, ""

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getRetryAfter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ltwitter4j/Version;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nRelevant discussions can be found on the Internet at:\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getStackLineHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or\n\thttp://www.google.co.jp/search?q="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Ltwitter4j/TwitterException;->getExceptionDiagnosis()Ltwitter4j/ExceptionDiagnosis;

    move-result-object v2

    invoke-virtual {v2}, Ltwitter4j/ExceptionDiagnosis;->getLineNumberHashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exceptionCode=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getExceptionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23
.end method
