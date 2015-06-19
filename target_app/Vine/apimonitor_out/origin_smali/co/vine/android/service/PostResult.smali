.class public Lco/vine/android/service/PostResult;
.super Ljava/lang/Object;
.source "PostResult.java"


# instance fields
.field public captchaUrl:Ljava/lang/String;

.field public shouldRefreshSessionKey:Z

.field public success:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lco/vine/android/service/PostResult;->success:Z

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lco/vine/android/service/PostResult;->success:Z

    iput-object p3, p0, Lco/vine/android/service/PostResult;->captchaUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lco/vine/android/service/PostResult;->shouldRefreshSessionKey:Z

    return-void
.end method
