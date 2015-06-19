.class Lcom/glympse/android/lib/ce;
.super Ljava/lang/Object;
.source "GogoConstants.java"


# static fields
.field public static final lP:I = 0x2710

.field public static final lQ:I = 0x2710

.field public static final lR:I = 0x2710


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bp()Ljava/lang/String;
    .registers 1

    const-string v0, "gogoinflight"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bq()Ljava/lang/String;
    .registers 1

    const-string v0, "gogo"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static br()Ljava/lang/String;
    .registers 1

    const-string v0, "http://airborne.gogoinflight.com/abp/service/statusTray.do"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bs()Ljava/lang/String;
    .registers 1

    const-string v0, "https://inflight.glympse.com"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bt()Ljava/lang/String;
    .registers 1

    const-string v0, "flight"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
