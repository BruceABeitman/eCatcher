.class public Lcom/tencent/utils/HttpUtils$HttpStatusException;
.super Ljava/lang/Exception;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpStatusException"
.end annotation


# static fields
.field public static final ERROR_INFO:Ljava/lang/String; = "http status code error:"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
