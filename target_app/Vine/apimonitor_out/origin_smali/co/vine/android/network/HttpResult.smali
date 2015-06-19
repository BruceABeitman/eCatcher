.class public Lco/vine/android/network/HttpResult;
.super Ljava/lang/Object;
.source "HttpResult.java"


# instance fields
.field public durationMs:J

.field public errorCode:I

.field public exception:Ljava/lang/Exception;

.field public final reasonPhrase:Ljava/lang/String;

.field public final statusCode:I

.field public uploadKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lco/vine/android/network/HttpResult;->statusCode:I

    iput-object p2, p0, Lco/vine/android/network/HttpResult;->reasonPhrase:Ljava/lang/String;

    return-void
.end method
